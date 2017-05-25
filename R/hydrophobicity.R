#' @export hydrophobicity
#' @title Compute the hydrophobicity index of a protein sequence
#' @description This function calculates the GRAVY hydrophobicity index of an amino acids sequence using one of the 38 scales from different sources.
#' @param seq An amino-acids sequence
#' @param scale A character string specifying the hydophobicity scale to be used; must be one of \code{"Aboderin"}, \code{"AbrahamLeo"}, \code{"Argos"}, \code{"BlackMould"}, \code{"BullBreese"}, \code{"Casari"}, \code{"Chothia"}, \code{"Cid"}, \code{"Cowan3.4"}, \code{"Cowan7.5"}, \code{"Eisenberg"}, \code{"Engelman"}, \code{"Fasman"}, \code{"Fauchere"}, \code{"Goldsack"}, \code{"Guy"}, \code{"HoppWoods"}, \code{"Janin"}, \code{"Jones"}, \code{"Juretic"}, \code{"Kidera"}, \code{"Kuhn"}, \code{"KyteDoolittle"}, \code{"Levitt"}, \code{"Manavalan"}, \code{"Miyazawa"}, \code{"Parker"}, \code{"Ponnuswamy"}, \code{"Prabhakaran"}, \code{"Rao"}, \code{"Rose"}, \code{"Roseman"}, \code{"Sweet"}, \code{"Tanford"}, \code{"Welling"}, \code{"Wilson"}, \code{"Wolfenden"}, \code{"Zimmerman"}, \code{"interfaceScale_pH8"}, \code{"interfaceScale_pH2"}, \code{"octanolScale_pH8"}, \code{"octanolScale_pH2"}, \code{"oiScale_pH8"} or \code{"oiScale_pH2"}.
#' @return The computed GRAVY index for a given amino-acid sequence
#' @references Aboderin, A. A. (1971). An empirical hydrophobicity scale for alpha-amino-acids and some of its applications. International Journal of Biochemistry, 2(11), 537-544.
#'
#' Abraham D.J., Leo A.J. Hydrophobicity (delta G1/2 cal). Proteins: Structure, Function and Genetics 2:130-152(1987).
#' 
#' Argos, P., Rao, J. K., & Hargrave, P. A. (1982). Structural Prediction of Membrane-Bound Proteins. European Journal of Biochemistry, 128(2-3), 565-575.
#' 
#' Black S.D., Mould D.R. Hydrophobicity of physiological L-alpha amino acids. Anal. Biochem. 193:72-82(1991).
#' 
#' Bull H.B., Breese K. Hydrophobicity (free energy of transfer to surface in kcal/mole). Arch. Biochem. Biophys. 161:665-670(1974).
#' 
#' Casari, G., & Sippl, M. J. (1992). Structure-derived hydrophobic potential: hydrophobic potential derived from X-ray structures of globular proteins is able to identify native folds. Journal of molecular biology, 224(3), 725-732.
#' 
#' Chothia, C. (1976). The nature of the accessible and buried surfaces in proteins. Journal of molecular biology, 105(1), 1-12.
#' 
#' Cid, H., Bunster, M., Canales, M., & Gazitua, F. (1992). Hydrophobicity and structural classes in proteins. Protein engineering, 5(5), 373-375.
#' 
#' Cowan R., Whittaker R.G. Hydrophobicity indices at pH 3.4 determined by HPLC. Peptide Research 3:75-80(1990).
#' 
#' Cowan R., Whittaker R.G. Hydrophobicity indices at pH 7.5 determined by HPLC. Peptide Research 3:75-80(1990).
#' 
#' Eisenberg D., Schwarz E., Komarony M., Wall R. Normalized consensus hydrophobicity scale. J. Mol. Biol. 179:125-142(1984).
#' 
#' Engelman, D. M., Steitz, T. A., & Goldman, A. (1986). Identifying nonpolar transbilayer helices in amino acid sequences of membrane proteins. Annual review of biophysics and biophysical chemistry, 15(1), 321-353.
#' 
#' Fasman, G. D. (Ed.). (1989). Prediction of protein structure and the principles of protein conformation. Springer.
#' 
#' Fauchere J.-L., Pliska V.E. Hydrophobicity scale (pi-r). Eur. J. Med. Chem. 18:369-375(1983).
#' 
#' Goldsack, D. E., & Chalifoux, R. C. (1973). Contribution of the free energy of mixing of hydrophobic side chains to the stability of the tertiary structure of proteins. Journal of theoretical biology, 39(3), 645-651.
#' 
#' Guy H.R. Hydrophobicity scale based on free energy of transfer (kcal/mole). Biophys J. 47:61-70(1985).
#' 
#' Hopp T.P., Woods K.R. Hydrophilicity. Proc. Natl. Acad. Sci. U.S.A. 78:3824-3828(1981).
#' 
#' Janin J. Free energy of transfer from inside to outside of a globular protein. Nature 277:491-492(1979).
#' 
#' Jones, D. D. (1975). Amino acid properties and side-chain orientation in proteins: a cross correlation approach. Journal of theoretical biology, 50(1), 167-183.
#' 
#' Juretic, D., Lucic, B., Zucic, D., & Trinajstic, N. (1998). Protein transmembrane structure: recognition and prediction by using hydrophobicity scales through preference functions. Theoretical and computational chemistry, 5, 405-445.
#' 
#' Kidera, A., Konishi, Y., Oka, M., Ooi, T., & Scheraga, H. A. (1985). Statistical analysis of the physical properties of the 20 naturally occurring amino acids. Journal of Protein Chemistry, 4(1), 23-55.
#' 
#' Kuhn, L. A., Swanson, C. A., Pique, M. E., Tainer, J. A., & Getzoff, E. D. (1995). Atomic and residue hydrophilicity in the context of folded protein structures. Proteins: Structure, Function, and Bioinformatics, 23(4), 536-547.
#' 
#' Kyte J., Doolittle R.F. Hydropathicity. J. Mol. Biol. 157:105-132(1982).
#' 
#' Levitt, M. (1976). A simplified representation of protein conformations for rapid simulation of protein folding. Journal of molecular biology, 104(1), 59-107.
#' 
#' Manavalan P., Ponnuswamy Average surrounding hydrophobicity. P.K. Nature 275:673-674(1978).
#' 
#' Miyazawa S., Jernigen R.L. Hydrophobicity scale (contact energy derived from 3D data). Macromolecules 18:534-552(1985).
#' 
#' Parker J.M.R., Guo D., Hodges R.S. Hydrophilicity scale derived from HPLC peptide retention times. Biochemistry 25:5425-5431(1986).
#' 
#' Ponnuswamy, P. K. (1993). Hydrophobic charactesristics of folded proteins. Progress in biophysics and molecular biology, 59(1), 57-103.
#' 
#' Prabhakaran, M. (1990). The distribution of physical, chemical and conformational properties in signal and nascent peptides. Biochem. J, 269, 691-696.
#' 
#' Rao M.J.K., Argos P. Membrane buried helix parameter. Biochim. Biophys. Acta 869:197-214(1986).
#' 
#' Rose G.D., Geselowitz A.R., Lesser G.J., Lee R.H., Zehfus M.H. Mean fractional area loss (f) [average area buried/standard state area]. Science 229:834-838(1985)
#' 
#' Roseman M.A. Hydrophobicity scale (pi-r). J. Mol. Biol. 200:513-522(1988).
#' 
#' Sweet R.M., Eisenberg D. Optimized matching hydrophobicity (OMH). J. Mol. Biol. 171:479-488(1983).
#' 
#' Tanford C. Hydrophobicity scale (Contribution of hydrophobic interactions to the stability of the globular conformation of proteins). J. Am. Chem. Soc. 84:4240-4274(1962).
#' 
#' Welling G.W., Weijer W.J., Van der Zee R., Welling-Wester S. Antigenicity value X 10. FEBS Lett. 188:215-218(1985).
#' 
#' Wilson K.J., Honegger A., Stotzel R.P., Hughes G.J. Hydrophobic constants derived from HPLC peptide retention times. Biochem. J. 199:31-41(1981).
#' 
#' Wolfenden R.V., Andersson L., Cullis P.M., Southgate C.C.F. Hydration potential (kcal/mole) at 25C. Biochemistry 20:849-855(1981).
#' 
#' Zimmerman, J. M., Eliezer, N., & Simha, R. (1968). The characterization of amino acid sequences in proteins by statistical methods. Journal of theoretical biology, 21(2), 170-201.
#' 
#' Nakai, K., Kidera, A., and Kanehisa, M.; Cluster analysis of amino acid indices for prediction of protein structure and function. Protein Eng. 2, 93-100 (1988).
#' 
#' Tomii, K. and Kanehisa, M.; Analysis of amino acid indices and mutation matrices for sequence comparison and structure prediction of proteins. Protein Eng. 9, 27-36 (1996). 
#' 
#' Kawashima, S., Ogata, H., and Kanehisa, M.; AAindex: amino acid index database. Nucleic Acids Res. 27, 368-369 (1999).
#' 
#' Kawashima, S. and Kanehisa, M.; AAindex: amino acid index database. Nucleic Acids Res. 28, 374 (2000).
#' 
#' Kawashima, S., Pokarowski, P., Pokarowska, M., Kolinski, A., Katayama, T., and Kanehisa, M.; AAindex: amino acid index database, progress report 2008. Nucleic Acids Res. 36, D202-D205 (2008). 
#' 
#' White, Stephen (2006-06-29). "Experimentally Determined Hydrophobicity Scales". University of California, Irvine. Retrieved 2017-05-25
#' @details The hydrophobicity is an important stabilization force in protein folding; this force changes depending on the solvent in which the protein is found. The hydrophobicity index is calculated adding the hydrophobicity of individual amino acids and dividing this value by the length of the sequence.
#' @examples 
#' # COMPARED TO GRAVY Grand average of hydropathicity (GRAVY) ExPASy
#' # http://web.expasy.org/cgi-bin/protparam/protparam
#' # SEQUENCE: QWGRRCCGWGPGRRYCVRWC
#' # GRAVY: -0.950
#' 
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Aboderin")
#' #[1] 3.84
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "AbrahamLeo")
#' #[1] 0.092
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Argos")
#' #[1] 1.033
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "BlackMould")
#' #[1] 0.50125
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "BullBreese")
#' #[1] 0.1575
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Casari")
#' #[1] 0.38
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Chothia")
#' #[1] 0.262
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Cid")
#' #[1] 0.198
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Cowan3.4")
#' #[1] 0.0845
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Cowan7.5")
#' #[1] 0.0605
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Eisenberg")
#' #[1] -0.3265
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Engelman")
#' #[1] 2.31
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Fasman")
#' #[1] -1.2905
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Fauchere")
#' #[1] 0.527
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Goldsack")
#' #[1] 1.2245
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Guy")
#' #[1] 0.193
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "HoppWoods")
#' #[1] -0.14
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Janin")
#' #[1] -0.105
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Jones")
#' #[1] 1.4675
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Juretic")
#' #[1] -1.106
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Kidera")
#' #[1] -0.0405
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Kuhn")
#' #[1] 0.9155
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "KyteDoolittle")
#' #[1] -0.95
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Levitt")
#' #[1] -0.21
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Manavalan")
#' #[1] 13.0445
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Miyazawa")
#' #[1] 5.739
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Parker")
#' #[1] 1.095
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Ponnuswamy")
#' #[1] 0.851
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Prabhakaran")
#' #[1] 9.67
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Rao")
#' #[1] 0.813
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Rose")
#' #[1] 0.7575
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Roseman")
#' #[1] -0.495
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Sweet")
#' #[1] -0.1135
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Tanford")
#' #[1] -0.2905
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Welling")
#' #[1] -0.666
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Wilson")
#' #[1] 3.16
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Wolfenden")
#' #[1] -6.307
#' hydrophobicity(seq = "QWGRRCCGWGPGRRYCVRWC",scale = "Zimmerman")
#' #[1] 0.943
hydrophobicity <- function(seq, scale = "KyteDoolittle") {
  # Loading hydrophobicity scales
  Hydrophobicity <- AAdata$Hydrophobicity
  # Setting the hydrophobicity scale
  scale <- match.arg(scale, names(Hydrophobicity))
  # Split sequence by aminoacids
  seq <- aaCheck(seq)
  # Sum the hydrophobicity of each amino acid and divide them between the sequence length
  # Return the GRAVY value
  h <-
    lapply(seq, function(seq) {
      (sum(Hydrophobicity[[scale]][seq], na.rm = TRUE) / length(seq))
    })
  return(unlist(h))
}
