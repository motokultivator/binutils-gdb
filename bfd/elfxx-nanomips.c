/* nanoMIPS-specific support for ELF
   Copyright (C) 2018 Free Software Foundation, Inc.
   Contributed by MIPS Tech LLC.
   Written by Faraz Shahbazker <faraz.shahbazker@mips.com>

   This file is part of BFD, the Binary File Descriptor library.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street - Fifth Floor, Boston,
   MA 02110-1301, USA.  */


/* This file handles functionality common to nanoMIPS ABIs.  */

#include "sysdep.h"
#include "bfd.h"
#include "libbfd.h"
#include "elf-bfd.h"
#include "elfxx-nanomips.h"
#include "elf/nanomips.h"

/* nanoMIPS ELF private object data.  */

struct nanomips_elf_obj_tdata
{
  /* Generic ELF private object data.  */
  struct elf_obj_tdata root;

  /* Input BFD providing Tag_GNU_NANOMIPS_ABI_FP attribute for output.  */
  bfd *abi_fp_bfd;

  /* Input BFD providing Tag_GNU_NANOMIPS_ABI_MSA attribute for output.  */
  bfd *abi_msa_bfd;

  /* The abiflags for this object.  */
  Elf_Internal_ABIFlags_v0 abiflags;
  bfd_boolean abiflags_valid;

  bfd_signed_vma sdata_section[1000];
};

/* Get nanoMIPS ELF private object data from BFD's tdata.  */

#define nanomips_elf_tdata(bfd) \
  ((struct nanomips_elf_obj_tdata *) (bfd)->tdata.any)



/* True if NAME is the recognized name of any SHT_NANOMIPS_ABIFLAGS section.  */

#define NANOMIPS_ELF_ABIFLAGS_SECTION_NAME_P(NAME) \
  (strcmp (NAME, ".nanoMIPS.abiflags") == 0)


/* Allocate nanoMIPS ELF private object data.  */

bfd_boolean
_bfd_nanomips_elf_mkobject (bfd *abfd)
{
  return bfd_elf_allocate_object (abfd,
				  sizeof (struct nanomips_elf_obj_tdata),
				  NANOMIPS_ELF_DATA);
}



/* A generic howto special_function.  This calculates and installs the
   relocation itself, thus avoiding the oft-discussed problems in
   bfd_perform_relocation and bfd_install_relocation.  */

bfd_reloc_status_type
_bfd_nanomips_elf_generic_reloc (bfd *abfd ATTRIBUTE_UNUSED,
				 arelent *reloc_entry, asymbol *symbol,
				 void *data ATTRIBUTE_UNUSED,
				 asection *input_section, bfd *output_bfd,
				 char **error_message ATTRIBUTE_UNUSED)
{
  bfd_signed_vma val;
  bfd_reloc_status_type status;
  bfd_boolean relocatable;

  relocatable = (output_bfd != NULL);

  if (reloc_entry->address > bfd_get_section_limit (abfd, input_section))
    return bfd_reloc_outofrange;

  /* Build up the field adjustment in VAL.  */
  val = 0;
  if (!relocatable || (symbol->flags & BSF_SECTION_SYM) != 0)
    {
      /* Either we're calculating the final field value or we have a
         relocation against a section symbol.  Add in the section's
         offset or address.  */
      val += symbol->section->output_section->vma;
      val += symbol->section->output_offset;
    }

  if (!relocatable)
    {
      /* We're calculating the final field value.  Add in the symbol's value
         and, if pc-relative, subtract the address of the field itself.  */
      val += symbol->value;
      if (reloc_entry->howto->pc_relative)
	{
	  val -= input_section->output_section->vma;
	  val -= input_section->output_offset;
	  val -= reloc_entry->address;
	}
    }

  /* VAL is now the final adjustment.  If we're keeping this relocation
     in the output file, and if the relocation uses a separate addend,
     we just need to add VAL to that addend.  Otherwise we need to add
     VAL to the relocation field itself.  */
  if (relocatable && !reloc_entry->howto->partial_inplace)
    reloc_entry->addend += val;
  else
    {
      bfd_byte *location = (bfd_byte *) data + reloc_entry->address;

      /* Add in the separate addend, if any.  */
      val += reloc_entry->addend;

      /* Add VAL to the relocation field.  */
      status = _bfd_relocate_contents (reloc_entry->howto, abfd, val,
				       location);
      if (status != bfd_reloc_ok)
	return status;
    }

  if (relocatable)
    reloc_entry->address += input_section->output_offset;

  return bfd_reloc_ok;
}


/* A negation howto special_function.  */

bfd_reloc_status_type
_bfd_nanomips_elf_negative_reloc (bfd *abfd ATTRIBUTE_UNUSED,
				  arelent *reloc_entry, asymbol *symbol,
				  void *data ATTRIBUTE_UNUSED,
				  asection *input_section, bfd *output_bfd,
				  char **error_message ATTRIBUTE_UNUSED)
{
  bfd_signed_vma val;
  bfd_boolean relocatable;

  relocatable = (output_bfd != NULL);

  if (reloc_entry->address > bfd_get_section_limit (abfd, input_section))
    return bfd_reloc_outofrange;

  /* Calculate the value of the symbol S.  */
  val = symbol->section->output_section->vma;
  val += symbol->section->output_offset;
  val += symbol->value;

  /* Add negated value to addend: (-S + A).  */
  if (! relocatable )
    reloc_entry->addend = -val + reloc_entry->addend;

  if (relocatable)
    reloc_entry->address += input_section->output_offset;

  return bfd_reloc_ok;
}

/* Swap in an abiflags structure.  */

void
bfd_nanomips_elf_swap_abiflags_v0_in (bfd *abfd,
				      const Elf_External_ABIFlags_v0 *ex,
				      Elf_Internal_ABIFlags_v0 *in)
{
  in->version = H_GET_16 (abfd, ex->version);
  in->isa_level = H_GET_8 (abfd, ex->isa_level);
  in->isa_rev = H_GET_8 (abfd, ex->isa_rev);
  in->gpr_size = H_GET_8 (abfd, ex->gpr_size);
  in->cpr1_size = H_GET_8 (abfd, ex->cpr1_size);
  in->cpr2_size = H_GET_8 (abfd, ex->cpr2_size);
  in->fp_abi = H_GET_8 (abfd, ex->fp_abi);
  in->isa_ext = H_GET_32 (abfd, ex->isa_ext);
  in->ases = H_GET_32 (abfd, ex->ases);
  in->flags1 = H_GET_32 (abfd, ex->flags1);
  in->flags2 = H_GET_32 (abfd, ex->flags2);
}

/* Swap out an abiflags structure.  */

void
bfd_nanomips_elf_swap_abiflags_v0_out (bfd *abfd,
				       const Elf_Internal_ABIFlags_v0 *in,
				       Elf_External_ABIFlags_v0 *ex)
{
  H_PUT_16 (abfd, in->version, ex->version);
  H_PUT_8 (abfd, in->isa_level, ex->isa_level);
  H_PUT_8 (abfd, in->isa_rev, ex->isa_rev);
  H_PUT_8 (abfd, in->gpr_size, ex->gpr_size);
  H_PUT_8 (abfd, in->cpr1_size, ex->cpr1_size);
  H_PUT_8 (abfd, in->cpr2_size, ex->cpr2_size);
  H_PUT_8 (abfd, in->fp_abi, ex->fp_abi);
  H_PUT_32 (abfd, in->isa_ext, ex->isa_ext);
  H_PUT_32 (abfd, in->ases, ex->ases);
  H_PUT_32 (abfd, in->flags1, ex->flags1);
  H_PUT_32 (abfd, in->flags2, ex->flags2);
}


/* Map flag bits to BFD architecture.  */

unsigned long
_bfd_elf_nanomips_mach (flagword flags)
{
  switch (flags & EF_NANOMIPS_ARCH)
    {
    default:
    case E_NANOMIPS_ARCH_32R6:
      return bfd_mach_nanomipsisa32r6;

    case E_NANOMIPS_ARCH_64R6:
      return bfd_mach_nanomipsisa64r6;
    }

  return 0;
}

/* Return printable name for ABI.  */

static INLINE char *
elf_nanomips_abi_name (bfd *abfd)
{
  flagword flags;

  flags = elf_elfheader (abfd)->e_flags;
  switch (flags & EF_NANOMIPS_ABI)
    {
    case 0:
      return "none";
    case E_NANOMIPS_ABI_P32:
      return "P32";
    case E_NANOMIPS_ABI_P64:
      return "P64";
    default:
      return "unknown abi";
    }
}


/* Work over a section just before writing it out.  This routine is
   used by both the 32-bit and the 64-bit ABI.  */

bfd_boolean
_bfd_nanomips_elf_section_processing (bfd *abfd ATTRIBUTE_UNUSED,
				      Elf_Internal_Shdr *hdr)
{
  if (hdr->bfd_section != NULL)
    {
      const char *name = bfd_section_name (hdr->bfd_section);

      /* .sbss is not handled specially here because the GNU/Linux
         prelinker can convert .sbss from NOBITS to PROGBITS and
         changing it back to NOBITS breaks the binary.  The entry in
         _bfd_nanomips_elf_special_sections will ensure the correct flags
         are set on .sbss if BFD creates it without reading it from an
         input file, and without special handling here the flags set
         on it in an input file will be followed.  */
      if (strcmp (name, ".sdata") == 0
	  || strcmp (name, ".lit8") == 0
	  || strcmp (name, ".lit4") == 0
	  || strncmp (name, ".sdata_", 7) == 0)
	{
	  hdr->sh_flags |= SHF_ALLOC | SHF_WRITE;
	  hdr->sh_type = SHT_PROGBITS;
	}
      else if (strcmp (name, ".srdata") == 0)
	{
	  hdr->sh_flags |= SHF_ALLOC;
	  hdr->sh_type = SHT_PROGBITS;
	}
      else if (strcmp (name, ".compact_rel") == 0)
	{
	  hdr->sh_flags = 0;
	  hdr->sh_type = SHT_PROGBITS;
	}
      else if (strcmp (name, ".rtproc") == 0)
	{
	  if (hdr->sh_addralign != 0 && hdr->sh_entsize == 0)
	    {
	      unsigned int adjust;

	      adjust = hdr->sh_size % hdr->sh_addralign;
	      if (adjust != 0)
		hdr->sh_size += hdr->sh_addralign - adjust;
	    }
	}
    }

  return TRUE;
}

/* Handle a nanoMIPS specific section when reading an object file.
   This is called when elfcode.h finds a section with an unknown type.
   This routine supports both the 32-bit and 64-bit ELF ABI.  */

bfd_boolean
_bfd_nanomips_elf_section_from_shdr (bfd *abfd, Elf_Internal_Shdr *hdr,
				     const char *name, int shindex)
{
  flagword flags = 0;

  /* There ought to be a place to keep ELF backend specific flags, but
     at the moment there isn't one.  We just keep track of the
     sections by their name, instead.   */
  switch (hdr->sh_type)
    {
    case SHT_NANOMIPS_ABIFLAGS:
      if (!NANOMIPS_ELF_ABIFLAGS_SECTION_NAME_P (name))
	return FALSE;
      flags = (SEC_LINK_ONCE | SEC_LINK_DUPLICATES_SAME_SIZE);
      break;
    default:
      break;
    }

  if (!_bfd_elf_make_section_from_shdr (abfd, hdr, name, shindex))
    return FALSE;

  if (flags)
    {
      if (!bfd_set_section_flags (hdr->bfd_section,
				  (bfd_section_flags (hdr->bfd_section)
				   | flags)))
	return FALSE;
    }

  if (hdr->sh_type == SHT_NANOMIPS_ABIFLAGS)
    {
      Elf_External_ABIFlags_v0 ext;

      if (! bfd_get_section_contents (abfd, hdr->bfd_section, &ext,
				      0, sizeof ext))
	return FALSE;
      bfd_nanomips_elf_swap_abiflags_v0_in
	(abfd, &ext, &nanomips_elf_tdata (abfd)->abiflags);
      if (nanomips_elf_tdata (abfd)->abiflags.version != 0)
	return FALSE;
      nanomips_elf_tdata (abfd)->abiflags_valid = TRUE;
    }

  return TRUE;
}

/* Set the correct type for a nanoMIPS ELF section.  We do this by the
   section name, which is a hack, but ought to work.  This routine is
   used by both the 32-bit and the 64-bit ABI.  */

bfd_boolean
_bfd_nanomips_elf_fake_sections (bfd *abfd ATTRIBUTE_UNUSED,
				 Elf_Internal_Shdr *hdr,
				 asection *sec)
{
  const char *name = bfd_section_name (sec);

  if (CONST_STRNEQ (name, ".nanoMIPS.abiflags"))
    {
      hdr->sh_type = SHT_NANOMIPS_ABIFLAGS;
      hdr->sh_entsize = sizeof (Elf_External_ABIFlags_v0);
    }

  /* The generic elf_fake_sections will set up REL_HDR using the default
     kind of relocations.  */
  return TRUE;
}


/* Functions for the dynamic linker.  */

/* Set ABFD's EF_NANOMIPS_ARCH and EF_NANOMIPS_MACH flags.  */

static void
nanomips_set_isa_flags (bfd *abfd)
{
  flagword val = 0;

  switch (bfd_get_mach (abfd))
    {
    case bfd_mach_nanomipsisa32r6:
      val = E_NANOMIPS_ARCH_32R6;
      break;

    case bfd_mach_nanomipsisa64r6:
      val = E_NANOMIPS_ARCH_64R6;
      break;
    default:
      break;
    }

  elf_elfheader (abfd)->e_flags &= ~(EF_NANOMIPS_ARCH | EF_NANOMIPS_MACH);
  elf_elfheader (abfd)->e_flags |= val;
}

/* The final processing done just before writing out a nanoMIPS ELF
   object file.  This gets the nanoMIPS architecture right based on the
   machine number.  This is used by both the 32-bit and the 64-bit ABI.  */

bfd_boolean
_bfd_nanomips_elf_final_write_processing (bfd *abfd)
{
  nanomips_set_isa_flags (abfd);
  return _bfd_elf_final_write_processing (abfd);
}


/* Return the meaning of Tag_GNU_NANOMIPS_ABI_FP value FP, or null if
   not known.  */

const char *
_bfd_nanomips_fp_abi_string (int fp)
{
  switch (fp)
    {
      /* These strings aren't translated because they're simply
         option lists.  */
    case Val_GNU_NANOMIPS_ABI_FP_DOUBLE:
      return "-mdouble-float";

    case Val_GNU_NANOMIPS_ABI_FP_SINGLE:
      return "-msingle-float";

    case Val_GNU_NANOMIPS_ABI_FP_SOFT:
      return "-msoft-float";

    default:
      return 0;
    }
}

/* Print the name of an ASE.  */

static void
print_nanomips_ases (FILE *file, unsigned int mask)
{
  if (mask & NANOMIPS_ASE_DSPR3)
    fputs ("\n\tDSP R3 ASE", file);
  if (mask & NANOMIPS_ASE_EVA)
    fputs ("\n\tEnhanced VA Scheme", file);
  if (mask & NANOMIPS_ASE_MCU)
    fputs ("\n\tMCU (MicroController) ASE", file);
  if (mask & NANOMIPS_ASE_MT)
    fputs ("\n\tMT ASE", file);
  if (mask & NANOMIPS_ASE_VIRT)
    fputs ("\n\tVZ ASE", file);
  if (mask & NANOMIPS_ASE_MSA)
    fputs ("\n\tMSA ASE", file);
  if (mask & NANOMIPS_ASE_TLB)
    fputs ("\n\tTLB ASE", file);
  if (mask & NANOMIPS_ASE_CRC)
    fputs ("\n\tCRC ASE", file);
  if ((mask & NANOMIPS_ASE_xNMS) == 0)
    fputs ("\n\tnanoMIPS subset", file);
  else if (mask == 0)
    fprintf (file, "\n\t%s", _("None"));
  else if ((mask & ~NANOMIPS_ASE_MASK) != 0)
    fprintf (stdout, "\n\t%s (%x)", _("Unknown"), mask & ~NANOMIPS_ASE_MASK);
}

/* Print the name of an ISA extension.  None yet for nanoMIPS.  */

static void
print_nanomips_isa_ext (FILE *file, unsigned int isa_ext)
{
  switch (isa_ext)
    {
    case 0:
      fputs (_("None"), file);
      break;
    default:
      fprintf (file, "%s (%d)", _("Unknown"), isa_ext);
      break;
    }
}

/* Decode and print the FP ABI mode.  */

static void
print_nanomips_fp_abi_value (FILE *file, int val)
{
  switch (val)
    {
    case Val_GNU_NANOMIPS_ABI_FP_ANY:
      fprintf (file, _("Hard or soft float\n"));
      break;
    case Val_GNU_NANOMIPS_ABI_FP_DOUBLE:
      fprintf (file, _("Hard float (double precision)\n"));
      break;
    case Val_GNU_NANOMIPS_ABI_FP_SINGLE:
      fprintf (file, _("Hard float (single precision)\n"));
      break;
    case Val_GNU_NANOMIPS_ABI_FP_SOFT:
      fprintf (file, _("Soft float\n"));
      break;
    default:
      fprintf (file, "??? (%d)\n", val);
      break;
    }
}

/* Map register type to size.  */

static int
get_nanomips_reg_size (int reg_size)
{
  return ((reg_size == AFL_REG_NONE) ? 0
	  : (reg_size == AFL_REG_32) ? 32
	  : (reg_size == AFL_REG_64) ? 64
	  : (reg_size == AFL_REG_128) ? 128
	  : -1);
}

/* Print nanoMIPS-specific ELF data.  */

bfd_boolean
_bfd_nanomips_elf_print_private_bfd_data (bfd *abfd, void *ptr)
{
  FILE *file = ptr;

  BFD_ASSERT (abfd != NULL && ptr != NULL);

  /* Print normal ELF private data.  */
  _bfd_elf_print_private_bfd_data (abfd, ptr);

  /* xgettext:c-format */
  fprintf (file, _("private flags = %08lx:"), elf_elfheader (abfd)->e_flags);

  if ((elf_elfheader (abfd)->e_flags & EF_NANOMIPS_ABI) == E_NANOMIPS_ABI_P32)
    fprintf (file, _(" [abi=P32]"));
  else if ((elf_elfheader (abfd)->e_flags & EF_NANOMIPS_ABI) ==
	   E_NANOMIPS_ABI_P64)
    fprintf (file, _(" [abi=P64]"));
  else
    fprintf (file, _(" [no abi set]"));

  if ((elf_elfheader (abfd)->e_flags & EF_NANOMIPS_ARCH)
      == E_NANOMIPS_ARCH_32R6)
    fprintf (file, " [nanomips32r6]");
  else if ((elf_elfheader (abfd)->e_flags & EF_NANOMIPS_ARCH)
	   == E_NANOMIPS_ARCH_64R6)
    fprintf (file, " [nanomips64r6]");
  else
    fprintf (file, _(" [unknown ISA]"));

  if (elf_elfheader (abfd)->e_flags & EF_NANOMIPS_32BITMODE)
    fprintf (file, " [32bitmode]");
  else
    fprintf (file, _(" [not 32bitmode]"));

  if (elf_elfheader (abfd)->e_flags & EF_NANOMIPS_LINKRELAX)
    fprintf (file, " [RELAXABLE]");

  if (elf_elfheader (abfd)->e_flags & EF_NANOMIPS_PIC)
    fprintf (file, " [PIC]");

  if (elf_elfheader (abfd)->e_flags & EF_NANOMIPS_PID)
    fprintf (file, " [PID]");

  if (elf_elfheader (abfd)->e_flags & EF_NANOMIPS_PCREL)
    fprintf (file, " [PCREL]");

  fputc ('\n', file);

  if (nanomips_elf_tdata (abfd)->abiflags_valid)
    {
      Elf_Internal_ABIFlags_v0 *abiflags =
	&nanomips_elf_tdata (abfd)->abiflags;
      fprintf (file, "\nnanoMIPS ABI Flags Version: %d\n", abiflags->version);
      fprintf (file, "\nISA: nanoMIPS%d", abiflags->isa_level);
      if (abiflags->isa_rev > 1)
	fprintf (file, "r%d", abiflags->isa_rev);
      fprintf (file, "\nGPR size: %d",
	       get_nanomips_reg_size (abiflags->gpr_size));
      fprintf (file, "\nCPR1 size: %d",
	       get_nanomips_reg_size (abiflags->cpr1_size));
      fprintf (file, "\nCPR2 size: %d",
	       get_nanomips_reg_size (abiflags->cpr2_size));
      fputs ("\nFP ABI: ", file);
      print_nanomips_fp_abi_value (file, abiflags->fp_abi);
      fputs ("ISA Extension: ", file);
      print_nanomips_isa_ext (file, abiflags->isa_ext);
      fputs ("\nASEs:", file);
      print_nanomips_ases (file, abiflags->ases);
      fprintf (file, "\nFLAGS 1: %8.8lx", abiflags->flags1);
      fprintf (file, "\nFLAGS 2: %8.8lx", abiflags->flags2);
      fputc ('\n', file);
    }

  return TRUE;
}

const struct bfd_elf_special_section _bfd_nanomips_elf_special_sections[] = {
  { STRING_COMMA_LEN (".lit4"),   0, SHT_PROGBITS,   SHF_ALLOC + SHF_WRITE},
  { STRING_COMMA_LEN (".lit8"),   0, SHT_PROGBITS,   SHF_ALLOC + SHF_WRITE},
  { STRING_COMMA_LEN (".sbss"),  -2, SHT_NOBITS,     SHF_ALLOC + SHF_WRITE},
  { STRING_COMMA_LEN (".sdata"), -2, SHT_PROGBITS,   SHF_ALLOC + SHF_WRITE},
  { NULL,                     0,  0, 0,              0 }
};

/* Merge non visibility st_other attributes.  Ensure that the
   STO_OPTIONAL flag is copied into h->other, even if this is not a
   definiton of the symbol.  */

void
_bfd_nanomips_elf_merge_symbol_attribute (struct elf_link_hash_entry *h,
					  const Elf_Internal_Sym *isym,
					  bfd_boolean definition,
					  bfd_boolean dynamic
					  ATTRIBUTE_UNUSED)
{
  if ((isym->st_other & ~ELF_ST_VISIBILITY (-1)) != 0)
    {
      unsigned char other;

      other = (definition ? isym->st_other : h->other);
      other &= ~ELF_ST_VISIBILITY (-1);
      h->other = other | ELF_ST_VISIBILITY (h->other);
    }
}

/* Get ABI flags for a nanoMIPS BFD arch.  */

Elf_Internal_ABIFlags_v0 *
bfd_nanomips_elf_get_abiflags (bfd *abfd)
{
  struct nanomips_elf_obj_tdata *tdata = nanomips_elf_tdata (abfd);

  return tdata->abiflags_valid ? &tdata->abiflags : NULL;
}

/* Relocate a section.  Tools like readelf/binutils needed to perform a static
   relocation on objects to make sense debug information that contains label
   difference relocations.  The only difference between this and the generic
   ELF version is that correct handling of composite relocations according to
   gABI spec.  */

bfd_byte *
_bfd_elf_nanomips_get_relocated_section_contents (bfd *abfd,
						  struct bfd_link_info *link_info,
						  struct bfd_link_order *link_order,
						  bfd_byte *data,
						  bfd_boolean relocatable,
						  asymbol **symbols)
{
  bfd *input_bfd = link_order->u.indirect.section->owner;
  asection *input_section = link_order->u.indirect.section;
  long reloc_size;
  arelent **reloc_vector;
  long reloc_count;

  reloc_size = bfd_get_reloc_upper_bound (input_bfd, input_section);
  if (reloc_size < 0)
    return NULL;

  /* Read in the section.  */
  if (!bfd_get_full_section_contents (input_bfd, input_section, &data))
    return NULL;

  if (data == NULL)
    return NULL;

  if (reloc_size == 0)
    return data;

  reloc_vector = (arelent **) bfd_malloc (reloc_size);
  if (reloc_vector == NULL)
    return NULL;

  reloc_count = bfd_canonicalize_reloc (input_bfd, input_section,
					reloc_vector, symbols);

  if (reloc_count < 0)
    goto error_return;

  if (reloc_count > 0)
    {
      arelent **parent;
      /* offset in section of previous relocation  */
      bfd_size_type last_address = 0;
      /* saved result of previous relocation.  */
      bfd_vma saved_addend = 0;

      for (parent = reloc_vector; *parent != NULL; parent++)
	{
	  char *error_message = NULL;
	  asymbol *symbol;
	  bfd_reloc_status_type r;

	  symbol = *(*parent)->sym_ptr_ptr;
	  /* PR ld/19628: A specially crafted input file
	     can result in a NULL symbol pointer here.  */
	  if (symbol == NULL)
	    {
	      link_info->callbacks->einfo
		/* xgettext:c-format */
		(_("%X%P: %B(%A): error: relocation for offset %V has no value\n"),
		 abfd, input_section, (* parent)->address);
	      goto error_return;
	    }

	  if (symbol->section && discarded_section (symbol->section))
	    {
	      bfd_vma off;
	      static reloc_howto_type none_howto
		= HOWTO (0, 0, 0, 0, FALSE, 0, complain_overflow_dont, NULL,
			 "unused", FALSE, 0, 0, FALSE);

	      off = (*parent)->address * bfd_octets_per_byte (input_bfd, input_section);
	      _bfd_clear_contents ((*parent)->howto, input_bfd, input_section,
				   data, off);
	      (*parent)->sym_ptr_ptr = bfd_abs_section_ptr->symbol_ptr_ptr;
	      (*parent)->addend = 0;
	      (*parent)->howto = &none_howto;
	      r = bfd_reloc_ok;
	    }
	  else
	    {
	      if (last_address != 0 && (*parent)->address == last_address)
		(*parent)->addend = saved_addend;
	      else
		saved_addend = 0;

	      r = bfd_perform_relocation (input_bfd,
					  *parent,
					  data,
					  input_section,
					  relocatable ? abfd : NULL,
					  &error_message);
	      saved_addend = (*parent)->addend;
	    }

	  if (relocatable)
	    {
	      asection *os = input_section->output_section;

	      /* A partial link, so keep the relocs.  */
	      os->orelocation[os->reloc_count] = *parent;
	      os->reloc_count++;
	    }

	  if (r != bfd_reloc_ok)
	    {
	      switch (r)
		{
		case bfd_reloc_undefined:
		  (*link_info->callbacks->undefined_symbol)
		    (link_info, bfd_asymbol_name (*(*parent)->sym_ptr_ptr),
		     input_bfd, input_section, (*parent)->address, TRUE);
		  break;
		case bfd_reloc_dangerous:
		  BFD_ASSERT (error_message != NULL);
		  (*link_info->callbacks->reloc_dangerous)
		    (link_info, error_message,
		     input_bfd, input_section, (*parent)->address);
		  break;
		case bfd_reloc_overflow:
		  (*link_info->callbacks->reloc_overflow)
		    (link_info, NULL,
		     bfd_asymbol_name (*(*parent)->sym_ptr_ptr),
		     (*parent)->howto->name, (*parent)->addend,
		     input_bfd, input_section, (*parent)->address);
		  break;
		case bfd_reloc_outofrange:
		  /* PR ld/13730:
		     This error can result when processing some partially
		     complete binaries.  Do not abort, but issue an error
		     message instead.  */
		  link_info->callbacks->einfo
		    /* xgettext:c-format */
		    (_("%X%P: %B(%A): relocation \"%R\" goes out of range\n"),
		     abfd, input_section, *parent);
		  goto error_return;

		case bfd_reloc_notsupported:
		  /* PR ld/17512
		     This error can result when processing a corrupt binary.
		     Do not abort.  Issue an error message instead.  */
		  link_info->callbacks->einfo
		    /* xgettext:c-format */
		    (_("%X%P: %B(%A): relocation \"%R\" is not supported\n"),
		     abfd, input_section, *parent);
		  goto error_return;

		default:
		  /* PR 17512; file: 90c2a92e.
		     Report unexpected results, without aborting.  */
		  link_info->callbacks->einfo
		    /* xgettext:c-format */
		    (_("%X%P: %B(%A): relocation \"%R\" returns an unrecognized value %x\n"),
		     abfd, input_section, *parent, r);
		  break;
		}

	    }
	  last_address = (*parent)->address;
	}
    }

  free (reloc_vector);
  return data;

error_return:
  free (reloc_vector);
  return NULL;
}
