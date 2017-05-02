#include <R.h>
#include <Rinternals.h>
#include <stdlib.h> // for NULL
#include <R_ext/Rdynload.h>

/* FIXME: 
 tools::package_native_routine_registration_skeleton("Documents/Peptides/")
*/

/* .Call calls */
extern SEXP Peptides_absoluteCharge(SEXP, SEXP, SEXP);
extern SEXP Peptides_chargeList(SEXP, SEXP, SEXP);

static const R_CallMethodDef CallEntries[] = {
  {"Peptides_absoluteCharge", (DL_FUNC) &Peptides_absoluteCharge, 3},
  {"Peptides_chargeList",     (DL_FUNC) &Peptides_chargeList,     3},
  {NULL, NULL, 0}
};

void R_init_Peptides(DllInfo *dll)
{
  R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
  R_useDynamicSymbols(dll, FALSE);
}