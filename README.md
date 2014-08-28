Peptides
========
R package to calculate indices and theoretical physicochemical properties of peptides and protein sequences. Include also utilities for read and plot GROMACS output files .XVG

Install
-------
Peptides package v.0.4 is now available on CRAN, for install just type:
```
install.packages("Peptides", dependencies=TRUE)
```

Available functions
-------------------
| Code        | Function |
| :------------- |:-------------|
|aacomp  |	Compute the amino-acid composition of a protein sequence|
|aindex  |	Compute the aliphatic index of a protein sequence |
|boman   |	Compute the Boman (Potential Protein Interaction) index |
|charge  |	Compute the theoretical net charge of a protein sequence |
|hydrophobicity	| Compute the hydrophobicity index |
|hmoment  |	Compute the hydrophobic moment of a protein sequence |
|instaindex	| Compute the instability index of a protein sequence |
|lengthpep| Compute the aminoacid length of a protein sequence |
|membpos |	Compute theoretically the class of a protein sequence |
|mw	| Compute the molecular weight of a protein sequence |
|pI	| Compute the isoelectic point (pI) of a protein sequence |
|plot.xvg	| Plot time series from GROMACS XVG files | 
|read.xvg |	Read XVG files from GROMACS molecular dynamics package |

Available datasets
-------------------
| Code        | Description |
| :------------- |:-------------|
|H  |24 Hydrophobicity values for amino acids form ExPASy "protscale"  |
|Pepdata | A data frame with physicochemical properties and indices from 100 amino-acid sequences (50 antimicrobial and 50 non antimicrobial)  |
|pKscales | 9 pKa scales for the side chain of charged amino acids from various sources
Citation
--------
D. Osorio, P. Rondón-Villarreal and R. Torres. **Peptides: *Calculate indices and theoretical physicochemical properties of peptides and protein sequences*.**, 2014. URL: http: //CRAN.R-project.org/package=Peptides. R Package Version 0.4.
