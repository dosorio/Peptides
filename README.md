Peptides
========
R package to calculate indices and theoretical physicochemical properties of peptides and protein sequences. Include also utilities for read and plot GROMACS output files .XVG

Install
-------
Peptides package v.0.2 is available on CRAN, for install just type:
```
install.packages("Peptides", dependencies=TRUE)
```
**New version 0.4** Not available on CRAN yet.
```
Download file from: https://github.com/dosorio/Peptides/blob/master/archive/Peptides_0.4.tar.gz?raw=true
R CMD install Peptides_0.4.tar.gz
```

Available functions
-------------------
| Code        | Function |
| :------------- |:-------------|
|AAcomp  |	To compute the Amino-acid composition of a protein sequence|
|aindex  |	To compute the Aliphatic index of a protein sequence |
|boman   |	To calculate the Boman (Potential Protein Interaction) Index |
|charge  |	To compute the theoretical Net charge of a protein sequence |
|h	| To compute the Eisenberg (1984) hydrophobicity index |
|hmoment  |	To compute the hydrophobic moment of a protein sequence |
|instaindex	| To compute the Instability Index of a protein sequence |
|KD	| To compute the Kyte-Doolittle hydrophobicity index |
|lengthpep|To calculate the aminoacid length of a protein sequence|
|membpos |	To theoretically calculate the position of a protein sequence |
|mw	| To compute the molecular weight of a protein sequence |
|pI	| To compute the isoelectic point (pI) of a protein sequence |
|plot.xvg	| Plot time series from GROMACS XVG files | 
|read.xvg |	Read XVG files from GROMACS Molecular Dynamics package |

Citation
--------
D. Osorio, P. Rondón-Villarreal and R. Torres. **Peptides: *Calculate indices and theoretical physicochemical properties of peptides and protein sequences*.**, 2014. URL: http: //CRAN.R-project.org/package=Peptides. R Package Version 0.2.
