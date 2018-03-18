#include <R.h>
#include <Rinternals.h>
#include <stdlib.h> // for NULL
#include <R_ext/Rdynload.h>

/* FIXME: 
 Check these declarations against the C/Fortran source code.
 */

/* .Call calls */
extern SEXP Peptides_absoluteCharge(SEXP, SEXP, SEXP);
extern SEXP Peptides_chargeList(SEXP, SEXP, SEXP);
extern SEXP Peptides_RcppExport_registerCCallable();

static const R_CallMethodDef CallEntries[] = {
  {"Peptides_absoluteCharge",               (DL_FUNC) &Peptides_absoluteCharge,               3},
  {"Peptides_chargeList",                   (DL_FUNC) &Peptides_chargeList,                   3},
  {"Peptides_RcppExport_registerCCallable", (DL_FUNC) &Peptides_RcppExport_registerCCallable, 0},
  {NULL, NULL, 0}
};

void R_init_Peptides(DllInfo *dll)
{
  R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
  R_useDynamicSymbols(dll, FALSE);
}
