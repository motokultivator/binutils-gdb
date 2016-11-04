/* Self tests for enum-flags for GDB, the GNU debugger.

   Copyright (C) 2016 Free Software Foundation, Inc.

   This file is part of GDB.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

#include "defs.h"
#include "common/enum-flags.h"
#include "selftest.h"

#if GDB_SELF_TEST

namespace selftests { namespace enum_flags_tests {

/* The (real) enum types used in CHECK_VALID.  Their names match the
   template parameter names of the templated defined by CHECK_VALID
   just matching real vs template param type more obvious.  They could
   be named differently.  */

/* A "real enum".  */
enum RE
  {
    RE_FLAG1 = 1 << 1,
    RE_FLAG2 = 1 << 2,
  };
/* Another "real enum".  */
enum RE2
  {
    RE2_FLAG1 = 1 << 1,
    RE2_FLAG2 = 1 << 2,
  };

/* The corresponding "enum flags" types.  */
using EF = enum_flags<RE>;
using EF2 = enum_flags<RE2>;

}} /* namespace selftests::enum_flags */

ENABLE_ENUM_FLAGS_OPERATORS (selftests::enum_flags_tests::RE);
ENABLE_ENUM_FLAGS_OPERATORS (selftests::enum_flags_tests::RE2);

namespace selftests { namespace enum_flags_tests {

/* A couple globals used as lvalues in the CHECK_VALID expressions
   below.  Their names (and types) match the uppercase type names
   exposed by CHECK_VALID just to make the expressions easier to
   follow.  */
static RE re ATTRIBUTE_UNUSED;
static EF ef ATTRIBUTE_UNUSED;

/* First, compile-time tests that:

   - make sure that incorrect operations with mismatching enum types
     are caught at compile time.

   - make sure that the same operations but involving the right enum
     types do compile and that they return the correct type.
*/

#define CONCAT_1(a, b) a ## b
#define CONCAT(a, b) CONCAT_1 (a, b)

/* Use SFINAE to detect whether EXPR expression is either valid or
   ill-formed.  I.e., check that bad uses of enum-flags (e.g.,
   involving mismatching enums) would be caught at compile time.  If
   the expression is valid, also check whether the expression has the
   right type.

   EXPR must be defined in terms of some of the template parameters
   EF, EF2, RE and RE2, so that template substitution failure discards
   the overload instead of causing a real compile error.

   EF/EF2 are enum flag types, and RE/RE2 are the corresponding raw
   enum types.

   VALID is a boolean that indicates whether the expression is
   supposed to be valid or invalid.

   EXPR_TYPE is expected type of EXPR.  Only meaningful if VALID is
   true.  */
#define CHECK_VALID(VALID, EXPR_TYPE, EXPR)				\
  namespace CONCAT (check_valid, __LINE__) {				\
									\
  /* First, the validity check.  */					\
									\
  /* If the expression is valid (would compile), then this overload is  \
     selected.  */							\
  template <typename EF, typename RE, typename EF2, typename RE2>	\
  static auto check_valid (std::nullptr_t) -> decltype (EXPR, char(0)); \
									\
  /* If the expression is ill-formed, then this overload is		\
     selected.  */							\
  template <typename EF, typename RE, typename EF2, typename RE2>	\
  static std::array<char, 2> check_valid (...);				\
									\
  static constexpr bool valid						\
    = (sizeof (check_valid<EF, RE, EF2, RE2> (nullptr)) == 1);		\
  static_assert (valid == VALID, STATIC_SELF_CHECK_FAIL_MSG);		\
									\
  /* Now the expression type check.  */					\
									\
  template <typename EF, typename RE, typename EF2, typename RE2>	\
  static constexpr auto check_is_same (std::nullptr_t)			\
    -> decltype (EXPR, bool(false))					\
  {									\
    return std::is_same<EXPR_TYPE, decltype (EXPR)>::value;		\
  }									\
									\
  template <typename EF, typename RE, typename EF2, typename RE2>	\
  static constexpr bool check_is_same (...)				\
  {									\
    return true;							\
  }									\
									\
  static constexpr bool is_same						\
    = check_is_same<EF, RE, EF2, RE2> (nullptr);			\
  static_assert (is_same, STATIC_SELF_CHECK_FAIL_MSG);			\
									\
  } /* namespace */


/* Test construction / conversion from/to different types.  */

/* RE/EF -> int (explicit) */
CHECK_VALID (true,  int,  int (RE ()))
CHECK_VALID (true,  int,  int (EF ()))

/* other -> RE */

/* You can construct a raw enum value from an int explicitly to punch
   a hole in the type system if need to.  */
CHECK_VALID (true,  RE,   RE (1))
CHECK_VALID (true,  RE,   RE (RE2 ()))
CHECK_VALID (false, void, RE (EF2 ()))
CHECK_VALID (true,  RE,   RE (RE ()))
CHECK_VALID (true,  RE,   RE (EF ()))

/* other -> EF.  */

/* As expected, enum-flags is a stronger type than the backing raw
   enum.  Unlike with raw enums, you can't construct an enum flags
   from an int nor from an unrelated enum type explicitly.  Add an
   intermediate conversion via the raw enum if you really need it.  */
CHECK_VALID (false, void, EF (1))
CHECK_VALID (false, void, EF (RE2 ()))
CHECK_VALID (false, void, EF (EF2 ()))
CHECK_VALID (true,  EF,   EF (RE ()))
CHECK_VALID (true,  EF,   EF (EF ()))

/* Test operators.  */

/* operator OP (raw_enum, int) */

CHECK_VALID (false, void, RE () | 1)
CHECK_VALID (false, void, RE () & 1)
CHECK_VALID (false, void, RE () ^ 1)

/* operator OP (int, raw_enum) */

CHECK_VALID (false, void, 1 | RE ())
CHECK_VALID (false, void, 1 & RE ())
CHECK_VALID (false, void, 1 ^ RE ())

/* operator OP (enum_flags, int) */

CHECK_VALID (false, void, EF () | 1)
CHECK_VALID (false, void, EF () & 1)
CHECK_VALID (false, void, EF () ^ 1)

/* operator OP (int, enum_flags) */

CHECK_VALID (false, void, 1 | EF ())
CHECK_VALID (false, void, 1 & EF ())
CHECK_VALID (false, void, 1 ^ EF ())

/* operator OP (raw_enum, raw_enum) */

CHECK_VALID (false, void, RE () | RE2 ())
CHECK_VALID (false, void, RE () & RE2 ())
CHECK_VALID (false, void, RE () ^ RE2 ())
CHECK_VALID (true,  RE,   RE () | RE ())
CHECK_VALID (true,  RE,   RE () & RE ())
CHECK_VALID (true,  RE,   RE () ^ RE ())

/* operator OP (enum_flags, raw_enum) */

CHECK_VALID (false, void, EF () | RE2 ())
CHECK_VALID (false, void, EF () & RE2 ())
CHECK_VALID (false, void, EF () ^ RE2 ())
CHECK_VALID (true,  EF,   EF () | RE ())
CHECK_VALID (true,  EF,   EF () & RE ())
CHECK_VALID (true,  EF,   EF () ^ RE ())

/* operator OP= (raw_enum, raw_enum), rvalue ref on the lhs. */

CHECK_VALID (false, void, RE () |= RE2 ())
CHECK_VALID (false, void, RE () &= RE2 ())
CHECK_VALID (false, void, RE () ^= RE2 ())
CHECK_VALID (true,  RE&,  RE () |= RE ())
CHECK_VALID (true,  RE&,  RE () &= RE ())
CHECK_VALID (true,  RE&,  RE () ^= RE ())

/* operator OP= (raw_enum, raw_enum), lvalue ref on the lhs. */

CHECK_VALID (false, void, re |= RE2 ())
CHECK_VALID (false, void, re &= RE2 ())
CHECK_VALID (false, void, re ^= RE2 ())
CHECK_VALID (true,  RE&,  re |= RE ())
CHECK_VALID (true,  RE&,  re &= RE ())
CHECK_VALID (true,  RE&,  re ^= RE ())

/* operator OP= (enum_flags, raw_enum), rvalue ref on the lhs.  */

CHECK_VALID (false, void, EF () |= RE2 ())
CHECK_VALID (false, void, EF () &= RE2 ())
CHECK_VALID (false, void, EF () ^= RE2 ())
CHECK_VALID (true,  EF&,  EF () |= RE ())
CHECK_VALID (true,  EF&,  EF () &= RE ())
CHECK_VALID (true,  EF&,  EF () ^= RE ())

/* operator OP= (enum_flags, raw_enum), lvalue ref on the lhs.  */

CHECK_VALID (false, void, ef |= RE2 ())
CHECK_VALID (false, void, ef &= RE2 ())
CHECK_VALID (false, void, ef ^= RE2 ())
CHECK_VALID (true,  EF&,  ef |= EF ())
CHECK_VALID (true,  EF&,  ef &= EF ())
CHECK_VALID (true,  EF&,  ef ^= EF ())

/* operator OP= (enum_flags, enum_flags), rvalue ref on the lhs.  */

CHECK_VALID (false, void, EF () |= EF2 ())
CHECK_VALID (false, void, EF () &= EF2 ())
CHECK_VALID (false, void, EF () ^= EF2 ())
CHECK_VALID (true,  EF&,  EF () |= EF ())
CHECK_VALID (true,  EF&,  EF () &= EF ())
CHECK_VALID (true,  EF&,  EF () ^= EF ())

/* operator OP= (enum_flags, enum_flags), lvalue ref on the lhs.  */

CHECK_VALID (false, void, ef |= EF2 ())
CHECK_VALID (false, void, ef &= EF2 ())
CHECK_VALID (false, void, ef ^= EF2 ())
CHECK_VALID (true,  EF&,  ef |= EF ())
CHECK_VALID (true,  EF&,  ef &= EF ())
CHECK_VALID (true,  EF&,  ef ^= EF ())

/* operator~ (raw_enum) */

CHECK_VALID (true,  RE,   ~RE ())

/* operator~ (enum_flags) */

CHECK_VALID (true,  EF,   ~EF ())

/* Check ternary operator.  This exercises implicit conversions.  */

/* Invalid since each type can be converted to the other.  */
/* GCC 4.8 incorrectly fails to compile this test with:
     error: operands to ?: have different types ‘enum_flags<RE>’ and ‘RE’
   Confirmed to compile/pass with gcc 4.9, 5.3 and clang 3.7.
*/
#if GCC_VERSION >= 4009
CHECK_VALID (false, void, true ? EF () : RE ())
CHECK_VALID (false, void, true ? RE () : EF ())
#endif

/* These are valid, but it's not a big deal since you won't be able to
   assign the resulting int to an enum or an enum_flags without a
   cast.  */
CHECK_VALID (true,  int,  true ? EF () : EF2 ())
CHECK_VALID (true,  int,  true ? EF2 () : EF ())
CHECK_VALID (true,  int,  true ? EF () : RE2 ())
CHECK_VALID (true,  int,  true ? RE2 () : EF ())

/* Unfortunately this can't work due to the way C++ computes the
   return type of the ternary conditional operator.  int isn't
   implicitly convertible to the raw enum type, so the type of the
   expression is int.  And then int is not implicitly convertible to
   enum_flags.

   GCC 4.8 fails to compile this test with:
     error: operands to ?: have different types ‘enum_flags<RE>’ and ‘int’
   Confirmed to work with gcc 4.9, 5.3 and clang 3.7.
*/
#if GCC_VERSION >= 4009
CHECK_VALID (false, void, true ? EF () : 0)
CHECK_VALID (false, void, true ? 0 : EF ())
#endif

/* Check that the ++/--/<</>>/<<=/>>= operators are deleted.  */

CHECK_VALID (false, void, RE ()++)
CHECK_VALID (false, void, ++RE ())
CHECK_VALID (false, void, --RE ())
CHECK_VALID (false, void, RE ()--)

CHECK_VALID (false, void, RE () << 1)
CHECK_VALID (false, void, RE () >> 1)
CHECK_VALID (false, void, EF () << 1)
CHECK_VALID (false, void, EF () >> 1)

CHECK_VALID (false, void, RE () <<= 1)
CHECK_VALID (false, void, RE () >>= 1)
CHECK_VALID (false, void, EF () <<= 1)
CHECK_VALID (false, void, EF () >>= 1)

/* -------------------------------------------------------------------- */

/* Follows misc tests that exercise the API.  Some are compile time,
   when possible, others are run time.  */

enum test_flag
  {
    FLAG1 = 1 << 1,
    FLAG2 = 1 << 2,
    FLAG3 = 1 << 3,
  };

using test_flags = enum_flags<test_flag>;

}} /* namespace selftests::enum_flags */

ENABLE_ENUM_FLAGS_OPERATORS (selftests::enum_flags_tests::test_flag);

namespace selftests { namespace enum_flags_tests {

static void
self_test ()
{
  /* Check that default construction works.  */
  {
    test_flags f;

    /* Check that assignment from zero works.  */
    f = 0;

    SELF_CHECK (f == 0);
  }

  /* Check that construction from zero works.  */
  {
    constexpr test_flags zero1 = 0;
    constexpr test_flags zero2 (0);
    constexpr test_flags zero3 {0};
    constexpr test_flags zero4 = {0};

    STATIC_SELF_CHECK (zero1 == 0);
    STATIC_SELF_CHECK (zero2 == 0);
    STATIC_SELF_CHECK (zero3 == 0);
    STATIC_SELF_CHECK (zero4 == 0);
  }

  /* Check construction from enum value.  */
  {
    STATIC_SELF_CHECK (test_flags (FLAG1) == FLAG1);
    STATIC_SELF_CHECK (test_flags (FLAG2) != FLAG1);
  }

  /* Check copy/assignment.  */
  {
    constexpr test_flags src = FLAG1;

    constexpr test_flags f1 = src;
    constexpr test_flags f2 (src);
    constexpr test_flags f3 {src};
    constexpr test_flags f4 = {src};

    STATIC_SELF_CHECK (f1 == FLAG1);
    STATIC_SELF_CHECK (f2 == FLAG1);
    STATIC_SELF_CHECK (f3 == FLAG1);
    STATIC_SELF_CHECK (f4 == FLAG1);
  }

  /* Check moving.  */
  {
    test_flags src = FLAG1;
    test_flags dst = 0;

    dst = std::move (src);
    SELF_CHECK (dst == FLAG1);
  }

  /* Check construction from an 'or' of multiple bits.  For this to
     work, operator| must be overridden to return an enum type.  The
     builtin version would return int instead and then the conversion
     to test_flags would fail.  */
  {
    constexpr test_flags f = FLAG1 | FLAG2;
    STATIC_SELF_CHECK (f == (FLAG1 | FLAG2));
  }

  /* Similarly, check that "FLAG1 | FLAG2" on the rhs of an assignment
     operator works.  */
  {
    test_flags f = 0;
    f |= FLAG1 | FLAG2;
    SELF_CHECK (f == (FLAG1 | FLAG2));

    f &= FLAG1 | FLAG2;
    SELF_CHECK (f == (FLAG1 | FLAG2));

    f ^= FLAG1 | FLAG2;
    SELF_CHECK (f == 0);
  }

  /* Check explicit conversion to int works.  */
  {
    constexpr int some_bits (FLAG1 | FLAG2);

    /* And comparison with int works too.  */
    STATIC_SELF_CHECK (some_bits == (FLAG1 | FLAG2));
    STATIC_SELF_CHECK (some_bits == test_flags (FLAG1 | FLAG2));
  }

  /* Check operator| and operator|=.  Particularly interesting is
     making sure that putting the enum value on the lhs side of the
     expression works (FLAG | f).  */
  {
    test_flags f = FLAG1;
    f |= FLAG2;
    SELF_CHECK (f == (FLAG1 | FLAG2));
  }
  {
    test_flags f = FLAG1;
    f = f | FLAG2;
    SELF_CHECK (f == (FLAG1 | FLAG2));
  }
  {
    test_flags f = FLAG1;
    f = FLAG2 | f;
    SELF_CHECK (f == (FLAG1 | FLAG2));
  }

  /* Check the &/&= operators.  */
  {
    test_flags f = FLAG1 & FLAG2;
    SELF_CHECK (f == 0);

    f = FLAG1 | FLAG2;
    f &= FLAG2;
    SELF_CHECK (f == FLAG2);

    f = FLAG1 | FLAG2;
    f = f & FLAG2;
    SELF_CHECK (f == FLAG2);

    f = FLAG1 | FLAG2;
    f = FLAG2 & f;
    SELF_CHECK (f == FLAG2);
  }

  /* Check the ^/^= operators.  */
  {
    constexpr test_flags f = FLAG1 ^ FLAG2;
    STATIC_SELF_CHECK (f == (FLAG1 ^ FLAG2));
  }

  {
    test_flags f = FLAG1 ^ FLAG2;
    f ^= FLAG3;
    SELF_CHECK (f == (FLAG1 | FLAG2 | FLAG3));
    f = f ^ FLAG3;
    SELF_CHECK (f == (FLAG1 | FLAG2));
    f = FLAG3 ^ f;
    SELF_CHECK (f == (FLAG1 | FLAG2 | FLAG3));
  }

  /* Check operator~.  */
  {
    constexpr test_flags f1 = ~FLAG1;
    constexpr test_flags f2 = ~f1;
    STATIC_SELF_CHECK (f2 == FLAG1);
  }

  /* Check the ternary operator.  */
  {
    constexpr test_flags f1 = true ? FLAG1 : FLAG2;
    STATIC_SELF_CHECK (f1 == FLAG1);
    constexpr test_flags f2 = false ? FLAG1 : FLAG2;
    STATIC_SELF_CHECK (f2 == FLAG2);
  }

  /* Check that we can use operator| in switch cases, where only
     constants are allowed.  This should work because operator| is
     constexpr.  */
  {
    test_flags f = FLAG1 | FLAG2;
    bool ok = false;

    switch (f)
      {
      case FLAG1:
	break;
      case FLAG2:
	break;
      case FLAG1 | FLAG2:
	ok = true;
	break;
      }

    SELF_CHECK (ok);
  }
}

}} /* namespace selftests::enum_flags_tests */

#endif

void
_initialize_enum_flags_selftests (void)
{
#if GDB_SELF_TEST
  register_self_test (selftests::enum_flags_tests::self_test);
#endif
}
