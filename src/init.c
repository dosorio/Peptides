#include <R.h>
#include <Rinternals.h>
#include <stdlib.h> // for NULL
#include <R_ext/Rdynload.h>

/* FIXME:
 Check these declarations against the C/Fortran source code.
 */

/* .Call calls */
extern SEXP _Peptides_absoluteCharge(SEXP, SEXP, SEXP);
extern SEXP _Peptides_chargeList(SEXP, SEXP, SEXP);
extern SEXP _Peptides_RcppExport_registerCCallable();

static const R_CallMethodDef CallEntries[] = {
  {"_Peptides_absoluteCharge",               (DL_FUNC) &_Peptides_absoluteCharge,               3},
  {"_Peptides_chargeList",                   (DL_FUNC) &_Peptides_chargeList,                   3},
  {"_Peptides_RcppExport_registerCCallable", (DL_FUNC) &_Peptides_RcppExport_registerCCallable, 0},
  {NULL, NULL, 0}
};

void R_init_Peptides(DllInfo *dll)
{
  R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
  R_useDynamicSymbols(dll, FALSE);
}
