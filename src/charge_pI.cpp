#include <Rcpp.h>
# include <iostream>
# include <cmath>
using namespace Rcpp;
using namespace std;

int pKscales(std::string scale){
  string scales[] = {"Bjellqvist","Dawson","EMBOSS","Lehninger","Murray","Rodwell","Sillero","Solomon","Stryer"};
  int sScale;
  for (int i = 0; i < sizeof(scales)/sizeof(scales[0]); i++){
    if(scale == scales[i]){
      sScale = i;
    }
  }
  return sScale;
}

double pKvalue (std::string scale, char aa){
  switch (pKscales(scale)) {
  case 0:{
  switch (aa) {
case 'C': return 9;
  break;
case 'D': return 4.05;
  break;
case 'E': return 4.45;
  break;
case 'H': return 5.98;
  break;
case 'K': return 10;
  break;
case 'R': return 12;
  break;
case 'Y': return 10;
  break;
case 'c': return 3.55;
  break;
case 'n': return 7.50;
  break;
default: return 0;
break;
}
}
  case 1:{
    switch (aa) {
  case 'C': return 8.3;
    break;
  case 'D': return 3.9;
    break;
  case 'E': return 4.3;
    break;
  case 'H': return 6.0;
    break;
  case 'K': return 10.5;
    break;
  case 'R': return 12.0;
    break;
  case 'Y': return 10.1;
    break;
  case 'c': return 3.2;
    break;
  case 'n': return 8.2;
    break;
  default: return 0;
  break;
  }
  }
  case 2:{
    switch (aa) {
  case 'C': return 8.5;
    break;
  case 'D': return 3.9;
    break;
  case 'E': return 4.1;
    break;
  case 'H': return 6.5;
    break;
  case 'K': return 10.8;
    break;
  case 'R': return 12.5;
    break;
  case 'Y': return 10.1;
    break;
  case 'c': return 3.6;
    break;
  case 'n': return 8.6;
    break;
  default: return 0;
  break;
  }
  }
  case 3:{
    switch (aa) {
  case 'C': return 8.18;
    break;
  case 'D': return 3.65;
    break;
  case 'E': return 4.25;
    break;
  case 'H': return 6;
    break;
  case 'K': return 10.53;
    break;
  case 'R': return 12.48;
    break;
  case 'Y': return 10.07;
    break;
  case 'c': return 2.34;
    break;
  case 'n': return 9.69;
    break;
  default: return 0;
  break;
  }
  }
  case 4:{
    switch (aa) {
  case 'C': return 8.33;
    break;
  case 'D': return 3.68;
    break;
  case 'E': return 4.25;
    break;
  case 'H': return 6.0;
    break;
  case 'K': return 11.50;
    break;
  case 'R': return 11.50;
    break;
  case 'Y': return 10.07;
    break;
  case 'c': return 2.15;
    break;
  case 'n': return 9.52;
    break;
  default: return 0;
  break;
  }
  }
  case 5:{
    switch (aa) {
  case 'C': return 8.33;
    break;
  case 'D': return 3.86;
    break;
  case 'E': return 4.25;
    break;
  case 'H': return 6;
    break;
  case 'K': return 11.50;
    break;
  case 'R': return 11.50;
    break;
  case 'Y': return 10.70;
    break;
  case 'c': return 3.10;
    break;
  case 'n': return 8;
    break;
  default: return 0;
  break;
  }
  }
  case 6:{
    switch (aa) {
  case 'C': return 9;
    break;
  case 'D': return 4;
    break;
  case 'E': return 4.5;
    break;
  case 'H': return 6.4;
    break;
  case 'K': return 10.4;
    break;
  case 'R': return 12.0;
    break;
  case 'Y': return 10.0;
    break;
  case 'c': return 3.2;
    break;
  case 'n': return 8.2;
    break;
  default: return 0;
  break;
  }
  }
  case 7:{
    switch (aa) {
  case 'C': return 8.3;
    break;
  case 'D': return 3.9;
    break;
  case 'E': return 4.3;
    break;
  case 'H': return 6.0;
    break;
  case 'K': return 10.5;
    break;
  case 'R': return 12.5;
    break;
  case 'Y': return 10.1;
    break;
  case 'c': return 3.2;
    break;
  case 'n': return 8.2;
    break;
  default: return 0;
  break;
  }
  }
  case 8:{
    switch (aa) {
  case 'C': return 8.5;
    break;
  case 'D': return 4.4;
    break;
  case 'E': return 4.4;
    break;
  case 'H': return 6.5;
    break;
  case 'K': return 10;
    break;
  case 'R': return 12;
    break;
  case 'Y': return 10;
    break;
  case 'c': return 3.2;
    break;
  case 'n': return 8.2;
    break;
  default: return 0;
  break;
  }
  }
  default: return 0;
  }
}

double calculateCharge(std::string seq, double pH = 7, std::string pKscale = "Lehninger"){
  double charge = 0;
  // nTerm
  charge += (1 / (1 + pow(10,(1 * (pH - pKvalue(pKscale,'n'))))));
  // AAsequence
  int i=0;
  while(seq[i] != '\0'){
    switch (seq[i]) {
    case 'R': charge += (1 / (1 + pow(10, (1 * (pH - pKvalue(pKscale,'R'))))));
      break;
    case 'H': charge += (1 / (1 + pow(10, (1 * (pH - pKvalue(pKscale,'H'))))));
      break;
    case 'K': charge += (1 / (1 + pow(10, (1 * (pH - pKvalue(pKscale,'K'))))));
      break;
    case 'D': charge += (-1 / (1 + pow(10, (-1 * (pH - pKvalue(pKscale,'D'))))));
      break;
    case 'E': charge += (-1 / (1 + pow(10, (-1 * (pH - pKvalue(pKscale,'E'))))));
      break;
    case 'C': charge += (-1 / (1 + pow(10, (-1 * (pH - pKvalue(pKscale,'C'))))));
      break;
    case 'Y': charge += (-1 / (1 + pow(10, (-1 * (pH - pKvalue(pKscale,'Y'))))));
      break;
    default: charge +=0;
    break;
    }
    i++;
  }
  // cTerm
  charge += (-1 / (1 + pow(10,(-1 * (pH - pKvalue(pKscale,'c'))))));
  return charge;
}

NumericVector pHsequence(std::string seq, NumericVector pH, std::string pKscale = "Lehninger"){
  int size = pH.size();
  NumericVector charges(size);
  for(int i = 0; i< size; i++){
    charges[i] = calculateCharge(seq, pH[i], pKscale);
  }
  return charges;
}

// [[Rcpp::interfaces(r, cpp)]]
// [[Rcpp::export]]
Rcpp::List chargeList(std::vector< std::string > seq, NumericVector pH, std::string pKscale = "Lehninger"){
  int size = seq.size();
  List sequences(size);
  for(int i=0; i< size; i++){
    sequences[i] = pHsequence(seq[i],pH,pKscale);
  }
  return sequences;
}

// [[Rcpp::interfaces(r, cpp)]]
// [[Rcpp::export]]
double absoluteCharge(std::string seq, double pH = 7, std::string pKscale = "Lehninger"){
  double charge = 0;
  // nTerm
  charge += (1 / (1 + pow(10,(1 * (pH - pKvalue(pKscale,'n'))))));
  // AAsequence
  int i=0;
  while(seq[i] != '\0'){
    switch (seq[i]) {
    case 'R': charge += (1 / (1 + pow(10, (1 * (pH - pKvalue(pKscale,'R'))))));
      break;
    case 'H': charge += (1 / (1 + pow(10, (1 * (pH - pKvalue(pKscale,'H'))))));
      break;
    case 'K': charge += (1 / (1 + pow(10, (1 * (pH - pKvalue(pKscale,'K'))))));
      break;
    case 'D': charge += (-1 / (1 + pow(10, (-1 * (pH - pKvalue(pKscale,'D'))))));
      break;
    case 'E': charge += (-1 / (1 + pow(10, (-1 * (pH - pKvalue(pKscale,'E'))))));
      break;
    case 'C': charge += (-1 / (1 + pow(10, (-1 * (pH - pKvalue(pKscale,'C'))))));
      break;
    case 'Y': charge += (-1 / (1 + pow(10, (-1 * (pH - pKvalue(pKscale,'Y'))))));
      break;
    default: charge +=0;
    break;
    }
    i++;
  }
  // cTerm
  charge += (-1 / (1 + pow(10,(-1 * (pH - pKvalue(pKscale,'c'))))));
  return abs(charge);
}



// This is a simple example of exporting a C++ function to R. You can
// source this function into an R session using the Rcpp::sourceCpp 
// function (or via the Source button on the editor toolbar). Learn
// more about Rcpp at:
//
//   http://www.rcpp.org/
//   http://adv-r.had.co.nz/Rcpp.html
//   http://gallery.rcpp.org/
//
