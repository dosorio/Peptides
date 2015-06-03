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
install_github("Peptides", "dosorio")
library(Peptides)
```
You can install the development version:
```
install_github("Peptides", "dosorio", "develop")
```
although it may not always work.

Available functions
-------------------
| Code        | Function |
| :------------- |:-------------|
|aacomp  |  Compute the amino-acid composition of a protein sequence|
|aindex  |	Compute the aliphatic index of a protein sequence |
|boman   |	Compute the Boman (Potential Protein Interaction) index |
|charge  |	Compute the theoretical net charge of a protein sequence |
|hydrophobicity	| Compute the hydrophobicity index |
|hmoment  |	Compute the hydrophobic moment of a protein sequence |
|instaindex	| Compute the instability index of a protein sequence |
|kidera | Compute the Kidera factors of a protein sequence |
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
|H  | 38 Hydrophobicity values for amino acids form various sources |
|Kfactors | The 10 Kidera factors from Kidera *et. al* (1985)|
|pepdata | A data frame with physicochemical properties and indices from 100 amino-acid sequences (50 antimicrobial and 50 non antimicrobial)  |
|pKscales | 9 pKa scales for the side chain of charged amino acids from various sources |

Citation
--------
D. Osorio, P. Rondón-Villarreal and R. Torres. **Peptides: *Calculate indices and theoretical physicochemical properties of peptides and protein sequences*.**, 2014. URL: http: //CRAN.R-project.org/package=Peptides. R Package Version 1.1.0.
