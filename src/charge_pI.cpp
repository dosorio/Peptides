# include <Rcpp.h>
# include <iostream>
# include <cmath>
using namespace Rcpp;
using namespace std;

enum PKScale { Bjellqvist, Dawson, EMBOSS, Lehninger, Murray, Rodwell, Sillero, Solomon, Stryer };

PKScale get_scale(const std::string& scale){
#define CHECK_SCALE(s) \
    if (scale == #s) return s;
    CHECK_SCALE(Bjellqvist)
    CHECK_SCALE(Dawson)
    CHECK_SCALE(EMBOSS)
    CHECK_SCALE(Lehninger)
    CHECK_SCALE(Murray)
    CHECK_SCALE(Rodwell)
    CHECK_SCALE(Sillero)
    CHECK_SCALE(Solomon)
    CHECK_SCALE(Stryer)
    return PKScale(0);
}

double pKvalue (const PKScale scale, const char aa){
    switch (scale) {
        case Bjellqvist:
            switch (aa) {
                case 'C': return 9;
                case 'D': return 4.05;
                case 'E': return 4.45;
                case 'H': return 5.98;
                case 'K': return 10;
                case 'R': return 12;
                case 'Y': return 10;
                case 'c': return 3.55;
                case 'n': return 7.50;
                default: return 0;
            }
        case Dawson:
            switch (aa) {
                case 'C': return 8.3;
                case 'D': return 3.9;
                case 'E': return 4.3;
                case 'H': return 6.0;
                case 'K': return 10.5;
                case 'R': return 12.0;
                case 'Y': return 10.1;
                case 'c': return 3.2;
                case 'n': return 8.2;
                default: return 0;
            }
        case EMBOSS:
            switch (aa) {
                case 'C': return 8.5;
                case 'D': return 3.9;
                case 'E': return 4.1;
                case 'H': return 6.5;
                case 'K': return 10.8;
                case 'R': return 12.5;
                case 'Y': return 10.1;
                case 'c': return 3.6;
                case 'n': return 8.6;
                default: return 0;
            }
        case Lehninger:
            switch (aa) {
                case 'C': return 8.18;
                case 'D': return 3.65;
                case 'E': return 4.25;
                case 'H': return 6;
                case 'K': return 10.53;
                case 'R': return 12.48;
                case 'Y': return 10.07;
                case 'c': return 2.34;
                case 'n': return 9.69;
                default: return 0;
            }
        case Murray:
            switch (aa) {
                case 'C': return 8.33;
                case 'D': return 3.68;
                case 'E': return 4.25;
                case 'H': return 6.0;
                case 'K': return 11.50;
                case 'R': return 11.50;
                case 'Y': return 10.07;
                case 'c': return 2.15;
                case 'n': return 9.52;
                default: return 0;
            }
        case Rodwell:
            switch (aa) {
                case 'C': return 8.33;
                case 'D': return 3.86;
                case 'E': return 4.25;
                case 'H': return 6;
                case 'K': return 11.50;
                case 'R': return 11.50;
                case 'Y': return 10.70;
                case 'c': return 3.10;
                case 'n': return 8;
                default: return 0;
            }
        case Sillero:
            switch (aa) {
                case 'C': return 9;
                case 'D': return 4;
                case 'E': return 4.5;
                case 'H': return 6.4;
                case 'K': return 10.4;
                case 'R': return 12.0;
                case 'Y': return 10.0;
                case 'c': return 3.2;
                case 'n': return 8.2;
                default: return 0;
            }
        case Solomon:
            switch (aa) {
                case 'C': return 8.3;
                case 'D': return 3.9;
                case 'E': return 4.3;
                case 'H': return 6.0;
                case 'K': return 10.5;
                case 'R': return 12.5;
                case 'Y': return 10.1;
                case 'c': return 3.2;
                case 'n': return 8.2;
                default: return 0;
            }
        case Stryer:
            switch (aa) {
                case 'C': return 8.5;
                case 'D': return 4.4;
                case 'E': return 4.4;
                case 'H': return 6.5;
                case 'K': return 10;
                case 'R': return 12;
                case 'Y': return 10;
                case 'c': return 3.2;
                case 'n': return 8.2;
                default: return 0;
            }
        default: return 0;
    }
}

double calculateCharge(std::string seq,
        const double pH = 7,
        const PKScale scale = Lehninger) {
    // nTerm
    double charge = (1.0 / (1.0 + pow(10, (1 * (pH - pKvalue(scale,'n'))))));
    for (int i = 0; seq[i]; ++i) {
        switch (seq[i]) {
            case 'R':
            case 'H':
            case 'K':
                charge += (1 / (1 + pow(10, (1 * (pH - pKvalue(scale, seq[i]))))));
                break;
            case 'D':
            case 'E':
            case 'C':
            case 'Y':
                charge += (-1 / (1 + pow(10, (-1 * (pH - pKvalue(scale, seq[i]))))));
                break;
        }
    }
    // cTerm
    charge += (-1 / (1 + pow(10,(-1 * (pH - pKvalue(scale,'c'))))));
    return charge;
}

NumericVector pHsequence(std::string seq, NumericVector pH, const PKScale scale = Lehninger){
  int size = pH.size();
  NumericVector charges(size);
  for(int i = 0; i< size; i++){
    charges[i] = calculateCharge(seq, pH[i], scale);
  }
  return charges;
}

// [[Rcpp::interfaces(r, cpp)]]
// [[Rcpp::export]]
Rcpp::List chargeList(std::vector< std::string > seq, NumericVector pH, std::string pKscale = "Lehninger"){
  const PKScale scale = get_scale(pKscale);
  const int size = seq.size();
  List sequences(size);
  for(int i=0; i< size; i++){
    sequences[i] = pHsequence(seq[i],pH,scale);
  }
  return sequences;
}

// [[Rcpp::interfaces(r, cpp)]]
// [[Rcpp::export]]
double absoluteCharge(std::string seq, double pH = 7, std::string pKscale = "Lehninger"){
    const PKScale scale = get_scale(pKscale);
    // nTerm
    double charge = (1 / (1 + pow(10,(1 * (pH - pKvalue(scale,'n'))))));
    // AAsequence
    for (int i = 0; seq[i]; ++ i) {
        switch (seq[i]) {
            case 'R':
            case 'H':
            case 'K':
                charge += (1 / (1 + pow(10, (1 * (pH - pKvalue(scale,seq[i]))))));
                      break;
            case 'D':
            case 'E':
            case 'C':
            case 'Y':
                      charge += (-1 / (1 + pow(10, (-1 * (pH - pKvalue(scale, seq[i]))))));
                      break;
        }
    }
    // cTerm
    charge += (-1 / (1 + pow(10,(-1 * (pH - pKvalue(scale,'c'))))));
    return abs(charge);
}
//
