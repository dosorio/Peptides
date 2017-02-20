Peptides
========
R package to calculate indices and theoretical physicochemical properties of peptides and protein sequences. Include also the option to read and plot output files from the GROMACS molecular dynamics package.

Install
-------
This package required R version 1.2.2 or higher. If you are using an older version of R you will be prompted to upgrade when you try to install the package.

The official release of Peptides is available on CRAN. To install from CRAN, use the following command:
```
install.packages("Peptides", dependencies=TRUE)
```
If you have devtools installed, install the latest stable version this package directly from GitHub:

```
library(devtools)
install_github("dosorio/Peptides")
library(Peptides)
```

Available functions
-------------------
| Code        | Function |
| :------------- |:-------------|
|aacomp  |  Compute the amino-acid composition of a protein sequence|
|aindex  |	Compute the aliphatic index of a protein sequence |
|autoCorrelation|Compute the auto-correlation index of a protein sequence|
|autoCovariance|Compute the auto-covariance index of a protein sequence|
|boman   |	Compute the Boman (Potential Protein Interaction) index |
|charge  |	Compute the theoretical net charge of a protein sequence |
|crossCovariance|Compute the cross-covariance index of a protein sequence|
|crucianiProperties | Compute the Cruciani properties of a protein sequence |
|hmoment  |	Compute the hydrophobic moment of a protein sequence |
|hydrophobicity	| Compute the hydrophobicity index |
|instaindex	| Compute the instability index of a protein sequence |
|kideraFactors | Compute the Kidera factors of a protein sequence |
|lengthpep| Compute the aminoacid length of a protein sequence |
|membpos |	Compute theoretically the class of a protein sequence |
|mw	| Compute the molecular weight of a protein sequence |
|pI	| Compute the isoelectic point (pI) of a protein sequence |
|plot.xvg	| Plot time series from GROMACS XVG files |
|read.xvg |	Read XVG files from GROMACS molecular dynamics package |

Available datasets
-------------------
| Code        | Description |
|:----------- |:------------|
|CP | The 3 properties from Cruciani *et. al* (2004) |
|H  | 38 Hydrophobicity values for amino acids form various sources |
|K | The 10 factors from Kidera *et. al* (1985)|
|pepdata | A data frame with 21 physicochemical properties and indices from 100 amino-acid sequences (50 antimicrobial and 50 non antimicrobial)  |
|pK | 9 pKa scales for the side chain of charged amino acids from various sources |

Citation
--------
Osorio, D., Rondon-Villarreal, P. & Torres, R. **Peptides: A package for data mining of antimicrobial peptides.** The R Journal. 7(1), 4–14 (2015).

D. Osorio, P. Rondón-Villarreal and R. Torres. **Peptides: Calculate indices and theoretical physicochemical properties of peptides and protein sequences.**, 2014. URL: http: //CRAN.R-project.org/package=Peptides. R Package Version 1.2.1.
