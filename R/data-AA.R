#' @name AAdata
#' @docType data
#' @title Properties, scales and indices for the 20 naturally occurring amino acids from various sources
#' @description A list with a collection of properties, scales and indices for the 20 naturally occurring amino acids from various sources.
#' @usage data(AAdata)
#' @format A list as follows: \itemize{
#' \item{Hydrophobicity} The hydrophobicity is an important stabilization force in protein folding; this force changes depending on the solvent in which the protein is found. \itemize{
#' \item{Aboderin:} Aboderin, A. A. (1971). An empirical hydrophobicity scale for alpha-amino-acids and some of its applications. International Journal of Biochemistry, 2(11), 537-544.
#' \item{AbrahamLeo:} Abraham D.J., Leo A.J. Hydrophobicity (delta G1/2 cal). Proteins: Structure, Function and Genetics 2:130-152(1987).
#' \item{Argos:} Argos, P., Rao, J. K., & Hargrave, P. A. (1982). Structural Prediction of Membrane-Bound Proteins. European Journal of Biochemistry, 128(2-3), 565-575.
#' \item{BlackMould:} Black S.D., Mould D.R. Hydrophobicity of physiological L-alpha amino acids. Anal. Biochem. 193:72-82(1991).
#' \item{BullBreese:} Bull H.B., Breese K. Hydrophobicity (free energy of transfer to surface in kcal/mole). Arch. Biochem. Biophys. 161:665-670(1974).
#' \item{Casari:} Casari, G., & Sippl, M. J. (1992). Structure-derived hydrophobic potential: hydrophobic potential derived from X-ray structures of globular proteins is able to identify native folds. Journal of molecular biology, 224(3), 725-732.
#' \item{Chothia:} Chothia, C. (1976). The nature of the accessible and buried surfaces in proteins. Journal of molecular biology, 105(1), 1-12.
#' \item{Cid:} Cid, H., Bunster, M., Canales, M., & Gazitua, F. (1992). Hydrophobicity and structural classes in proteins. Protein engineering, 5(5), 373-375.
#' \item{Cowan3.4:} Cowan R., Whittaker R.G. Hydrophobicity indices at pH 3.4 determined by HPLC. Peptide Research 3:75-80(1990).
#' \item{Cowan7.5:} Cowan R., Whittaker R.G. Hydrophobicity indices at pH 7.5 determined by HPLC. Peptide Research 3:75-80(1990).
#' \item{Eisenberg:} Eisenberg D., Schwarz E., Komarony M., Wall R. Normalized consensus hydrophobicity scale. J. Mol. Biol. 179:125-142(1984).
#' \item{Engelman:} Engelman, D. M., Steitz, T. A., & Goldman, A. (1986). Identifying nonpolar transbilayer helices in amino acid sequences of membrane proteins. Annual review of biophysics and biophysical chemistry, 15(1), 321-353.
#' \item{Fasman:} Fasman, G. D. (Ed.). (1989). Prediction of protein structure and the principles of protein conformation. Springer.
#' \item{Fauchere:} Fauchere J.-L., Pliska V.E. Hydrophobicity scale (pi-r). Eur. J. Med. Chem. 18:369-375(1983).
#' \item{Goldsack:} Goldsack, D. E., & Chalifoux, R. C. (1973). Contribution of the free energy of mixing of hydrophobic side chains to the stability of the tertiary structure of proteins. Journal of theoretical biology, 39(3), 645-651.
#' \item{Guy:} Guy H.R. Hydrophobicity scale based on free energy of transfer (kcal/mole). Biophys J. 47:61-70(1985).
#' \item{HoppWoods:} Hopp T.P., Woods K.R. Hydrophilicity. Proc. Natl. Acad. Sci. U.S.A. 78:3824-3828(1981).
#' \item{Janin:} Janin J. Free energy of transfer from inside to outside of a globular protein. Nature 277:491-492(1979).
#' \item{Jones:} Jones, D. D. (1975). Amino acid properties and side-chain orientation in proteins: a cross correlation approach. Journal of theoretical biology, 50(1), 167-183.
#' \item{Juretic:} Juretic, D., Lucic, B., Zucic, D., & Trinajstic, N. (1998). Protein transmembrane structure: recognition and prediction by using hydrophobicity scales through preference functions. Theoretical and computational chemistry, 5, 405-445.
#' \item{Kidera:} Kidera, A., Konishi, Y., Oka, M., Ooi, T., & Scheraga, H. A. (1985). Statistical analysis of the physical properties of the 20 naturally occurring amino acids. Journal of Protein Chemistry, 4(1), 23-55.
#' \item{Kuhn:} Kuhn, L. A., Swanson, C. A., Pique, M. E., Tainer, J. A., & Getzoff, E. D. (1995). Atomic and residue hydrophilicity in the context of folded protein structures. Proteins: Structure, Function, and Bioinformatics, 23(4), 536-547.
#' \item{KyteDoolittle:} Kyte J., Doolittle R.F. Hydropathicity. J. Mol. Biol. 157:105-132(1982).
#' \item{Levitt:} Levitt, M. (1976). A simplified representation of protein conformations for rapid simulation of protein folding. Journal of molecular biology, 104(1), 59-107.
#' \item{Manavalan:} Manavalan P., Ponnuswamy Average surrounding hydrophobicity. P.K. Nature 275:673-674(1978).
#' \item{Miyazawa:} Miyazawa S., Jernigen R.L. Hydrophobicity scale (contact energy derived from 3D data). Macromolecules 18:534-552(1985).
#' \item{Parker:} Parker J.M.R., Guo D., Hodges R.S. Hydrophilicity scale derived from HPLC peptide retention times. Biochemistry 25:5425-5431(1986).
#' \item{Ponnuswamy:} Ponnuswamy, P. K. (1993). Hydrophobic charactesristics of folded proteins. Progress in biophysics and molecular biology, 59(1), 57-103.
#' \item{Prabhakaran:} Prabhakaran, M. (1990). The distribution of physical, chemical and conformational properties in signal and nascent peptides. Biochem. J, 269, 691-696.
#' \item{Rao:} Rao M.J.K., Argos P. Membrane buried helix parameter. Biochim. Biophys. Acta 869:197-214(1986).
#' \item{Rose:} Rose G.D., Geselowitz A.R., Lesser G.J., Lee R.H., Zehfus M.H. Mean fractional area loss (f) [average area buried/standard state area]. Science 229:834-838(1985)
#' \item{Roseman:} Roseman M.A. Hydrophobicity scale (pi-r). J. Mol. Biol. 200:513-522(1988).
#' \item{Sweet:} Sweet R.M., Eisenberg D. Optimized matching hydrophobicity (OMH). J. Mol. Biol. 171:479-488(1983).
#' \item{Tanford:} Tanford C. Hydrophobicity scale (Contribution of hydrophobic interactions to the stability of the globular conformation of proteins). J. Am. Chem. Soc. 84:4240-4274(1962).
#' \item{Welling:} Welling G.W., Weijer W.J., Van der Zee R., Welling-Wester S. Antigenicity value X 10. FEBS Lett. 188:215-218(1985).
#' \item{Wilson:} Wilson K.J., Honegger A., Stotzel R.P., Hughes G.J. Hydrophobic constants derived from HPLC peptide retention times. Biochem. J. 199:31-41(1981).
#' \item{Wolfenden:} Wolfenden R.V., Andersson L., Cullis P.M., Southgate C.C.F. Hydration potential (kcal/mole) at 25C. Biochemistry 20:849-855(1981).
#' \item{Zimmerman:} Zimmerman, J. M., Eliezer, N., & Simha, R. (1968). The characterization of amino acid sequences in proteins by statistical methods. Journal of theoretical biology, 21(2), 170-201.
#' \item{interfaceScale_pH8} White, Stephen (2006-06-29). "Experimentally Determined Hydrophobicity Scales". University of California, Irvine. Retrieved 2017-05-25
#' \item{interfaceScale_pH2} White, Stephen (2006-06-29). "Experimentally Determined Hydrophobicity Scales". University of California, Irvine. Retrieved 2017-05-25
#' \item{octanolScale_pH8} White, Stephen (2006-06-29). "Experimentally Determined Hydrophobicity Scales". University of California, Irvine. Retrieved 2017-05-25
#' \item{octanolScale_pH2} White, Stephen (2006-06-29). "Experimentally Determined Hydrophobicity Scales". University of California, Irvine. Retrieved 2017-05-25
#' \item{oiScale_pH8} White, Stephen (2006-06-29). "Experimentally Determined Hydrophobicity Scales". University of California, Irvine. Retrieved 2017-05-25
#' \item{oiScale_pH2} White, Stephen (2006-06-29). "Experimentally Determined Hydrophobicity Scales". University of California, Irvine. Retrieved 2017-05-25
#' }
#' \item{crucianiProperties:} The three Cruciani et. al (2004) properties, are the scaled principal component scores that summarize a broad set of descriptors calculated based on the interaction of each amino acid residue with several chemical groups (or "probes"), such as charged ions, methyl, hydroxyl groups, and so forth. \itemize{
#' \item{PP1:} Polarity, 
#' \item{PP2:} Hydrophobicity, 
#' \item{PP3:} H-bonding
#' }
#' \item{kideraFactors:} The Kidera Factors were originally derived by applying multivariate analysis to 188 physical properties of the 20 amino acids and using dimension reduction techniques. A 10-dimensional vector of orthogonal factors was then obtained for each amino acid.The first four factors are essentially pure physical properties; the remaining six factors are superpositions of several physical properties, and are labelled for convenience by the name of the most heavily weighted component \itemize{
#' \item{helix.bend.pref:} Helix/bend preference
#' \item{side.chain.size:} Side-chain size
#' \item{extended.str.pref:} Extended structure preference
#' \item{hydrophobicity:} Hydrophobicity
#' \item{double.bend.pref:} Double-bend preference
#' \item{partial.spec.vol:} Partial specific volume
#' \item{flat.ext.pref:} Flat extended preference
#' \item{occurrence.alpha.reg:} Occurrence in alpha region
#' \item{pK.C:} pK-C
#' \item{surrounding.hydrop:} Surrounding hydrophobicity
#' }
#' \item{pK}\itemize{
#' \item{Bjellqvist:} Bjellqvist, B., Hughes, G.J., Pasquali, Ch., Paquet, N., Ravier, F., Sanchez, J.Ch., Frutige,r S., Hochstrasser D. (1993) The focusing positions of polypeptides in immobilized pH gradients can be predicted from their amino acid sequences. Electrophoresis, 14:1023-1031.
#' \item{Dawson:} Dawson, R. M. C.; Elliot, D. C.; Elliot, W. H.; Jones, K. M. Data for biochemical research. Oxford University Press, 1989; p. 592.
#' \item{EMBOSS:} EMBOSS data are from http://emboss.sourceforge.net/apps/release/5.0/emboss/apps/iep.html.
#' \item{Lehninger:} Nelson, D. L.; Cox, M. M. Lehninger Principles of Biochemistry, Fourth Edition; W. H. Freeman, 2004; p. 1100.
#' \item{Murray:} Murray, R.K., Granner, D.K., Rodwell, V.W. (2006) Harper's illustrated Biochemistry. 27th edition. Published by The McGraw-Hill Companies.
#' \item{Rodwell:} Rodwell, J. Heterogeneity of component bands in isoelectric focusing patterns. Analytical Biochemistry, 1982, 119 (2), 440-449.
#' \item{Sillero:} Sillero, A., Maldonado, A. (2006) Isoelectric point determination of proteins and other macromolecules: oscillating method. Comput Biol Med., 36:157-166.
#' \item{Solomon:} Solomon, T.W.G. (1998) Fundamentals of Organic Chemistry, 5th edition. Published by Wiley.
#' \item{Stryer:} Stryer L. (1999) Biochemia. czwarta edycja. Wydawnictwo Naukowe PWN.
#' }
#' \item{zScales} The five Sandberg et al. (1998) Z-scales describe each amino acid with numerical values, descriptors, which represent the physicochemical properties of the amino acids including NMR data and thin-layer chromatography (TLC) data.\itemize{
#' \item{Z1:} Lipophilicity
#' \item{Z2:} Steric properties (Steric bulk/Polarizability)
#' \item{Z3:} Electronic properties (Polarity / Charge)
#' \item{Z4:} Related to  electronegativity, heat of formation, electrophilicity and hardness.
#' \item{Z5:} Related to electronegativity, heat of formation, electrophilicity and hardness.
#' }
#' \item{FASGAI} Factor Analysis Scale of Generalized Amino Acid Information (FASGAI) proposed by Liang and Li (2007), is a set of amino acid descriptors, that reflects hydrophobicity, alpha and turn propensities, bulky properties, compositional characteristics, local flexibility, and electronic properties, was derived from multi-dimensional properties of 20 naturally occurring amino acids. \itemize{
#' \item{F1:} Hydrophobicity index
#' \item{F2:} Alpha and turn propensities
#' \item{F3:} Bulky properties
#' \item{F4:} Compositional characteristic index
#' \item{F5:} Local flexibility
#' \item{F6:} Electronic properties
#' }
#' \item{VHSE} The principal components score Vectors of Hydrophobic, Steric, and Electronic properties, is derived from principal components analysis (PCA) on independent families of 18 hydrophobic properties, 17 steric properties, and 15 electronic properties, respectively, which are included in total 50 physicochemical variables of 20 coded amino acids. \itemize{
#' \item{VHSE1 and VHSE2:} Hydrophobic properties
#' \item{VHSE3 and VHSE4:} Steric properties
#' \item{VHSE5 to VHSE8:} Electronic properties
#' }
#' }
#' @source
#' \itemize{
#' \item{Hydrophobicity}\itemize{
#' \item ExPASy-Protscale (http://web.expasy.org/protscale/)
#' \item AAIndex Database (http://www.genome.jp/aaindex/)
#' }
#' \item{pK}\itemize{
#' \item Kiraga, J. (2008) Analysis and computer simulations of variability of isoelectric point of proteins in the proteomes. PhD thesis, University of Wroclaw, Poland.
#' }
#' }
#' @references 
#' \itemize{
#' \item{Hydrophobicity}\itemize{
#' \item Nakai, K., Kidera, A., and Kanehisa, M.; Cluster analysis of amino acid indices for prediction of protein structure and function. Protein Eng. 2, 93-100 (1988).
#' 
#' \item Tomii, K. and Kanehisa, M.; Analysis of amino acid indices and mutation matrices for sequence comparison and structure prediction of proteins. Protein Eng. 9, 27-36 (1996). 
#' 
#' \item Kawashima, S., Ogata, H., and Kanehisa, M.; AAindex: amino acid index database. Nucleic Acids Res. 27, 368-369 (1999).
#' 
#' \item Kawashima, S. and Kanehisa, M.; AAindex: amino acid index database. Nucleic Acids Res. 28, 374 (2000).
#' 
#' \item Kawashima, S., Pokarowski, P., Pokarowska, M., Kolinski, A., Katayama, T., and Kanehisa, M.; AAindex: amino acid index database, progress report 2008. Nucleic Acids Res. 36, D202-D205 (2008). 
#' }
#' \item{crucianiProperties:} \itemize{
#' \item Cruciani, G., Baroni, M., Carosati, E., Clementi, M., Valigi, R., and Clementi, S. (2004) Peptide studies by means of principal properties of amino acids derived from MIF descriptors. J. Chemom. 18, 146-155.
#' }
#' \item{kideraFactors:} \itemize{
#' \item Kidera, A., Konishi, Y., Oka, M., Ooi, T., & Scheraga, H. A. (1985). Statistical analysis of the physical properties of the 20 naturally occurring amino acids. Journal of Protein Chemistry, 4(1), 23-55.
#' }
#' \item{pK:} \itemize{
#' \item Aronson, J. N. The Henderson-Hasselbalch equation revisited. Biochemical Education, 1983, 11 (2), 68.
#' \item Moore, D. S.. Amino acid and peptide net charges: A simple calculational procedure. Biochemical Education, 1986, 13 (1), 10-12.
#' \item Goloborodko, A.A.; Levitsky, L.I.; Ivanov, M.V.; and Gorshkov, M.V. (2013) "Pyteomics - a Python Framework for Exploratory Data Analysis and Rapid Software Prototyping in Proteomics", Journal of The American Society for Mass Spectrometry, 24(2), 301-304.
#' \item Kiraga, J. (2008) Analysis and computer simulations of variability of isoelectric point of proteins in the proteomes. PhD thesis, University of Wroclaw, Poland.
#' }
#' \item{zScales} \itemize{
#' \item Sandberg M, Eriksson L, Jonsson J, Sjostrom M, Wold S: New chemical descriptors relevant for the design of biologically active peptides. A multivariate characterization of 87 amino acids. J Med Chem 1998, 41:2481-2491.
#' }
#' \item{FASGAI} \itemize{
#' \item Liang, G., & Li, Z. (2007). Factor analysis scale of generalized amino acid information as the source of a new set of descriptors for elucidating the structure and activity relationships of cationic antimicrobial peptides. Molecular Informatics, 26(6), 754-763.
#' }
#' \item{VHSE} \itemize{
#' \item Mei, H. U., Liao, Z. H., Zhou, Y., & Li, S. Z. (2005). A new set of amino acid descriptors and its application in peptide QSARs. Peptide Science, 80(6), 775-786.
#' }
#' }
NULL
