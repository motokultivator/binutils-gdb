/* nanomips-formats.h
   Copyright (C) 2017 Free Software Foundation, Inc.
   Contributed by Imagination Technologies Ltd.

   This library is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3, or (at your option)
   any later version.

   It is distributed in the hope that it will be useful, but WITHOUT
   ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
   or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public
   License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; see the file COPYING3. If not,
   see <http://www.gnu.org/licenses/>.  */

#include "libiberty.h"

#define INT_BIAS(SIZE, LSB, MAX_VAL, BIAS, SHIFT, PRINT_HEX)		\
  {									\
    static const struct nanomips_int_operand op = {			\
      { OP_INT, SIZE, LSB, 0, 0 }, MAX_VAL, BIAS, SHIFT, PRINT_HEX	\
    };									\
    return &op.root;							\
  }

#define INT_ADJ(SIZE, LSB, MAX_VAL, SHIFT, PRINT_HEX)	\
  INT_BIAS(SIZE, LSB, MAX_VAL, 0, SHIFT, PRINT_HEX)

#define UINT(SIZE, LSB)					\
  INT_ADJ(SIZE, LSB, (1 << (SIZE)) - 1, 0, FALSE)

#define SINT(SIZE, LSB)					\
  INT_ADJ(SIZE, LSB, (1 << ((SIZE) - 1)) - 1, 0, FALSE)

#define HINT(SIZE, LSB)					\
  INT_ADJ(SIZE, LSB, (1 << (SIZE)) - 1, 0, TRUE)

#define BIT(SIZE, LSB, BIAS)						\
  {									\
    static const struct nanomips_int_operand op = {			\
      { OP_INT, SIZE, LSB, 0, 0 }, (1 << (SIZE)) - 1, BIAS, 0, FALSE	\
    };									\
    return &op.root;							\
  }

#define MAPPED_INT(SIZE, LSB, MAP, PRINT_HEX)			\
  {								\
    typedef char ATTRIBUTE_UNUSED				\
      static_assert[(1 << (SIZE)) == ARRAY_SIZE (MAP)];		\
    static const struct nanomips_mapped_int_operand op = {	\
      { OP_MAPPED_INT, SIZE, LSB, 0, 0 }, MAP, PRINT_HEX	\
    };								\
    return &op.root;						\
  }

#define MSB(SIZE, LSB, BIAS, ADD_LSB, OPSIZE)			\
  {								\
    static const struct nanomips_msb_operand op = {		\
      { OP_MSB, SIZE, LSB, 0, 0 }, BIAS, ADD_LSB, OPSIZE	\
    };								\
    return &op.root;						\
  }

#define REG(SIZE, LSB, BANK)				\
  {							\
    static const struct nanomips_reg_operand op = {	\
      { OP_REG, SIZE, LSB, 0, 0 }, OP_REG_##BANK, 0	\
    };							\
    return &op.root;					\
  }

#define OPTIONAL_REG(SIZE, LSB, BANK)				\
  {								\
    static const struct nanomips_reg_operand op = {		\
      { OP_OPTIONAL_REG, SIZE, LSB, 0, 0 }, OP_REG_##BANK, 0	\
    };								\
    return &op.root;						\
  }

#define MAPPED_REG(SIZE, LSB, BANK, MAP)		\
  {							\
    typedef char ATTRIBUTE_UNUSED			\
      static_assert[(1 << (SIZE)) == ARRAY_SIZE (MAP)]; \
    static const struct nanomips_reg_operand op = {	\
      { OP_REG, SIZE, LSB, 0, 0 }, OP_REG_##BANK, MAP	\
    };							\
    return &op.root;					\
  }

#define SPLIT_MAPPED_REG(SIZE, LSB, SIZE_T, LSB_T, BANK, MAP)	\
  {								\
    typedef char ATTRIBUTE_UNUSED				\
      static_assert[(1 << (SIZE)) == ARRAY_SIZE (MAP)];		\
    static const struct nanomips_reg_operand op = {		\
      { OP_REG, SIZE, LSB, SIZE_T, LSB_T }, OP_REG_##BANK, MAP	\
    };								\
    return &op.root;						\
  }

#define OPTIONAL_MAPPED_REG(SIZE, LSB, BANK, MAP)		\
  {								\
    typedef char ATTRIBUTE_UNUSED				\
      static_assert[(1 << (SIZE)) == ARRAY_SIZE (MAP)];		\
    static const struct nanomips_reg_operand op = {		\
      { OP_OPTIONAL_REG, SIZE, LSB, 0, 0 }, OP_REG_##BANK, MAP	\
    };								\
    return &op.root;						\
  }

#define REG_PAIR(SIZE, LSB, BANK, MAP)					\
  {									\
    typedef char ATTRIBUTE_UNUSED					\
      static_assert1[(1 << (SIZE)) == ARRAY_SIZE (MAP##1)];		\
    typedef char ATTRIBUTE_UNUSED					\
      static_assert2[(1 << (SIZE)) == ARRAY_SIZE (MAP##2)];		\
    static const struct nanomips_reg_pair_operand op = {		\
      { OP_REG_PAIR, SIZE, LSB, 0, 0 }, OP_REG_##BANK, MAP##1, MAP##2	\
    };									\
    return &op.root;							\
  }

#define PCREL(SIZE, LSB, IS_SIGNED, SHIFT, ALIGN_LOG2, INCLUDE_ISA_BIT, \
              FLIP_ISA_BIT)						\
  {									\
    static const struct nanomips_pcrel_operand op = {			\
      { { OP_PCREL, SIZE, LSB, 0, 0 },					\
	(1 << ((SIZE) - (IS_SIGNED))) - 1, 0, SHIFT, TRUE },		\
      ALIGN_LOG2, INCLUDE_ISA_BIT, FLIP_ISA_BIT				\
    };									\
    return &op.root.root;						\
  }

#define JUMP(SIZE, LSB, SHIFT)					\
  PCREL (SIZE, LSB, FALSE, SHIFT, SIZE + SHIFT, TRUE, FALSE)

#define JALX(SIZE, LSB, SHIFT)					\
  PCREL (SIZE, LSB, FALSE, SHIFT, SIZE + SHIFT, TRUE, TRUE)

#define BRANCH(SIZE, LSB, SHIFT)			\
  PCREL (SIZE, LSB, TRUE, SHIFT, 0, TRUE, FALSE)

#define SPECIAL(SIZE, LSB, TYPE)					\
  {									\
    static const struct nanomips_operand op = { OP_##TYPE, SIZE, LSB, 0, 0 }; \
    return &op;								\
  }

#define PREV_CHECK(SIZE, LSB, GT_OK, LT_OK, EQ_OK, ZERO_OK)		\
  {									\
    static const struct nanomips_check_prev_operand op = {		\
      { OP_CHECK_PREV, SIZE, LSB, 0, 0 }, GT_OK, LT_OK, EQ_OK, ZERO_OK	\
    };									\
    return &op.root;							\
  }

#define IMM_INT_BIAS(SIZE, LSB, MAX_VAL, BIAS, SHIFT, PRINT_HEX)	\
  {									\
    static const struct nanomips_int_operand op = {			\
      { OP_IMM_INT, SIZE, LSB, 0, 0 }, MAX_VAL, BIAS, SHIFT, PRINT_HEX	\
    };									\
    return &op.root;							\
  }

#define IMM_INT_ADJ(SIZE, LSB, MAX_VAL, SHIFT, PRINT_HEX)	\
  IMM_INT_BIAS(SIZE, LSB, MAX_VAL, 0, SHIFT, PRINT_HEX)

#define UINT_SPLIT(SIZE, LSB, SHIFT, SIZE_TOP, LSB_TOP)	\
  {							\
    static const struct nanomips_int_operand op = {	\
      { OP_INT, SIZE, LSB, SIZE_TOP, LSB_TOP },		\
      (1 << (SIZE)) - 1, 0, SHIFT, 0			\
    };							\
    return &op.root;					\
  }

#define SINT_SPLIT(SIZE, LSB, SHIFT, SIZE_TOP, LSB_TOP, BIAS)	\
  {								\
    static const struct nanomips_int_operand op = {		\
      { OP_INT, SIZE, LSB, SIZE_TOP, LSB_TOP },			\
      (1 << ((SIZE) -1)) - 1, BIAS, SHIFT, 0			\
    };								\
    return &op.root;						\
  }

#define IMM_SINT_SPLIT(SIZE, LSB, SHIFT, SIZE_TOP, LSB_TOP, BIAS)	\
  {									\
    static const struct nanomips_int_operand op = {			\
      { OP_IMM_INT, SIZE, LSB, SIZE_TOP, LSB_TOP },			\
      (1 << ((SIZE) -1)) - 1, BIAS, SHIFT, FALSE			\
    };									\
    return &op.root;							\
  }

#define HINT_SPLIT(SIZE, LSB, SIZE_T, LSB_T)	\
  SINT_SPLIT(SIZE, LSB, 0, SIZE_T, LSB_T)

#define SPLIT_MAPPED_REG_PAIR(SIZE, LSB, SIZE_T, LSB_T, BANK, MAP1, MAP2) \
  {									\
    typedef char ATTRIBUTE_UNUSED					\
      static_assert1[(1 << (SIZE)) == ARRAY_SIZE (MAP1)];		\
    typedef char ATTRIBUTE_UNUSED					\
      static_assert2[(1 << (SIZE)) == ARRAY_SIZE (MAP2)];		\
    static const struct nanomips_reg_pair_operand op = {		\
      { OP_REG_PAIR, SIZE, LSB, SIZE_T, LSB_T }, OP_REG_##BANK,		\
      MAP1, MAP2							\
    };									\
    return &op.root;							\
  }

#define BRANCH_UNORD_SPLIT(SIZE, SHIFT)			\
  {							\
    static const struct nanomips_pcrel_operand op = {	\
      { { OP_PCREL, SIZE, 1, 1, 0 },			\
	(1 << ((SIZE) - 1)) - 1, 0, SHIFT, TRUE },	\
      0, FALSE, FALSE					\
    };							\
    return &op.root.root;				\
  }

#define BRANCH_SPLIT(SIZE, LSB, SHIFT, SIZE_TOP, LSB_TOP)	\
  {								\
    static const struct nanomips_pcrel_operand op = {		\
      { { OP_PCREL, SIZE, 1, SIZE_TOP, LSB_TOP },		\
	(1 << ((SIZE) - 1)) - 1, LSB, SHIFT, TRUE },		\
      0, FALSE, FALSE						\
    };								\
    return &op.root.root;					\
  }

#define SPECIAL_SPLIT(SIZE, LSB, SIZE_T, LSB_T, TYPE)			\
  {									\
    static const struct nanomips_operand op = { OP_##TYPE, SIZE, LSB, SIZE_T, LSB_T }; \
    return &op;								\
  }

#define SPECIAL_WORD(BIAS, TYPE)					\
  {									\
    static const struct nanomips_int_operand op = { { OP_##TYPE, 0, 0, 0, 0 }, \
						    0x7fffffff, BIAS, 0, FALSE }; \
    return &op.root;							\
  }

#define MAPPED_PREV_CHECK(SIZE, LSB, BANK, MAP, GT_OK, LT_OK, EQ_OK, ZERO_OK) \
  {									\
    typedef char ATTRIBUTE_UNUSED					\
      static_assert[(1 << (SIZE)) == ARRAY_SIZE (MAP)];			\
    static const struct nanomips_mapped_check_prev_operand op = {	\
      { OP_MAPPED_CHECK_PREV, SIZE, LSB, 0, 0 }, OP_REG_##BANK, MAP,	\
      GT_OK, LT_OK, EQ_OK, ZERO_OK					\
    };									\
    return &op.root;							\
  }

#define BASE_OFFSET_CHECK(SIZE, LSB, CONST_OK, EXPR_OK)			\
  {									\
    static const struct nanomips_base_check_offset_operand op = {	\
      { OP_BASE_CHECK_OFFSET, SIZE, LSB, 0, 0 }, OP_REG_GP,		\
      CONST_OK, EXPR_OK							\
    };									\
    return &op.root;							\
  }
