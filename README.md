Peptides 
![Build Status](https://travis-ci.org/dosorio/Peptides.svg?branch=master)
![CRAN\_Download\_Badge](http://cranlogs.r-pkg.org/badges/grand-total/Peptides?color=green)
========
R package to calculate several physicochemical properties and indices for amino-acid sequences as well as to read and plot 'XVG' output files from the 'GROMACS' molecular dynamics package

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
|aaList|	Return a vector with the 20 standard aminoacids in upper case|
|aaComp  |  Compute the amino-acid composition of a protein sequence|
|aaDescriptors|Compute 66 descriptors for each amino acid of a protein sequence|
|aIndex  |	Compute the aliphatic index of a protein sequence |
|autoCorrelation|Compute the auto-correlation index of a protein sequence|
|autoCovariance|Compute the auto-covariance index of a protein sequence|
|blosumIndices|Compute the BLOSUM62 derived indices of a protein sequence|
|boman   |	Compute the Boman (Potential Protein Interaction) index |
|charge  |	Compute the theoretical net charge of a protein sequence |
|crossCovariance|Compute the cross-covariance index of a protein sequence|
|crucianiProperties | Compute the Cruciani properties of a protein sequence |
|fasgaiVectors| Compute the FASGAI vectors of a protein sequence |
|hmoment  |	Compute the hydrophobic moment of a protein sequence |
|hydrophobicity	| Compute the hydrophobicity index of a protein sequence |
|instaIndex	| Compute the instability index of a protein sequence |
|kideraFactors | Compute the Kidera factors of a protein sequence |
|lengthpep| Compute the aminoacid length of a protein sequence |
|massShift | Compute the mass difference of a protein sequence labelled with stable isotope. |
|membpos |	Compute theoretically the class of a protein sequence |
|mswhimScores|Compute the MS-WHIM scores of a protein sequence|
|mw	| Compute the molecular weight of a protein sequence |
|mz | Compute the mass over charge (m/z) of a protein sequence |
|pI	| Compute the isoelectic point (pI) of a protein sequence |
|plotXVG	| Plot time series from GROMACS XVG files |
|protFP|Compute the protFP descriptors of a protein sequence|
|readXVG |	Read XVG files from GROMACS molecular dynamics package |
|stScales| Compute the ST-scales of a protein sequence|
|tScales| Compute the T-scales of a protein sequence|
|vhseScales|Compute the VHSE-scales of a protein sequence|
|zScales| Compute the Z-scales of a protein sequence |

Available datasets
-------------------
| Code        | Description |
|:----------- |:------------|
|AAdata | Properties, scales and indices for the 20 naturally occurring amino acids from various sources |
|pepdata | A data frame with 21 physicochemical properties and indices from 100 amino-acid sequences (50 antimicrobial and 50 non antimicrobial) |

Citation
--------
Osorio, D., Rondon-Villarreal, P. & Torres, R. **Peptides: A package for data mining of antimicrobial peptides.** The R Journal. 7(1), 4–14 (2015).
