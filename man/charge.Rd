\name{charge}
\alias{charge}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Compute the theoretical net charge of a protein sequence
%%  ~~function to do ... ~~
}
\description{
This function computes the net charge of a protein sequence based on the Henderson-Hasselbalch equation described by Moore, D. S. (1985). The net charge can be calculated at defined pH using one of the 9 pKa scales availables: Bjellqvist, EMBOSS, Murray, Sillero, Solomon, Stryer, Lehninger, Dawson or Rodwell
}
\usage{
charge(seq, pH, pKscale)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{amino acid sequence as string}
  \item{pH}{pH value}
  \item{pKscale}{a character string specifying the pKa scale to be used; must be one of \code{"Bjellqvist"}, \code{"EMBOSS"}, \code{"Murray"}, \code{"Sillero"}, \code{"Solomon"}, \code{"Stryer"}, \code{"Lehninger"}, \code{"Dawson"} or \code{"Rodwell"}}
}

\references{
Kiraga, J. (2008) Analysis and computer simulations of variability of isoelectric point of proteins in the proteomes. PhD thesis, University of Wroclaw, Poland.

Bjellqvist, B., Hughes, G.J., Pasquali, Ch., Paquet, N., Ravier, F., Sanchez, J.Ch., Frutige,r S., Hochstrasser D. (1993) The focusing positions of polypeptides in immobilized pH gradients can be predicted from their amino acid sequences. Electrophoresis, 14:1023-1031.

EMBOSS data are from http://emboss.sourceforge.net/apps/release/5.0/emboss/apps/iep.html.

Murray, R.K., Granner, D.K., Rodwell, V.W. (2006) Harper's illustrated Biochemistry. 27th edition. Published by The McGraw-Hill Companies.

Sillero, A., Maldonado, A. (2006) Isoelectric point determination of proteins and other macromolecules: oscillating method. Comput Biol Med., 36:157-166.

Solomon, T.W.G. (1998) Fundamentals of Organic Chemistry, 5th edition. Published by Wiley.

Stryer L. (1999) Biochemia. czwarta edycja. Wydawnictwo Naukowe PWN.
}

\examples{
# COMPARED TO EMBOSS PEPSTATS
# http://emboss.bioinformatics.nl/cgi-bin/emboss/pepstats
# SEQUENCE: FLPVLAGLTPSIVPKLVCLLTKKC
# Charge   = 3.0

charge(seq="FLPVLAGLTPSIVPKLVCLLTKKC",pH=7, pKscale="Bjellqvist")
# [1] 2.737
charge(seq="FLPVLAGLTPSIVPKLVCLLTKKC",pH=7, pKscale="EMBOSS")
# [1] 2.914
charge(seq="FLPVLAGLTPSIVPKLVCLLTKKC",pH=7, pKscale="Murray")
# [1] 2.908
charge(seq="FLPVLAGLTPSIVPKLVCLLTKKC",pH=7, pKscale="Sillero")
# [1] 2.920
charge(seq="FLPVLAGLTPSIVPKLVCLLTKKC",pH=7, pKscale="Solomon")
# [1] 2.844
charge(seq="FLPVLAGLTPSIVPKLVCLLTKKC",pH=7, pKscale="Stryer")
# [1] 2.877
charge(seq="FLPVLAGLTPSIVPKLVCLLTKKC",pH=7, pKscale="Lehninger")
# [1] 2.873
charge(seq="FLPVLAGLTPSIVPKLVCLLTKKC",pH=7, pKscale="Dawson")
# [1] 2.844
charge(seq="FLPVLAGLTPSIVPKLVCLLTKKC",pH=7, pKscale="Rodwell")
# [1] 2.820

# COMPARED TO YADAMP
# http://yadamp.unisa.it/showItem.aspx?yadampid=845&x=0,7055475
# SEQUENCE: FLPVLAGLTPSIVPKLVCLLTKKC
# CHARGE pH5: 3.00   	 
# CHARGE pH7: 2.91   	 
# CHARGE pH9: 1.09  

charge(seq="FLPVLAGLTPSIVPKLVCLLTKKC",pH=5, pKscale="EMBOSS")
# [1] 3.037
charge(seq="FLPVLAGLTPSIVPKLVCLLTKKC",pH=7, pKscale="EMBOSS")
# [1] 2.914
charge(seq="FLPVLAGLTPSIVPKLVCLLTKKC",pH=9, pKscale="EMBOSS")
# [1] 0.718

# JUST ONE COMMAND
charge(seq="FLPVLAGLTPSIVPKLVCLLTKKC",pH=seq(from = 5,to = 9,by = 2), pKscale="EMBOSS")
# [1] 3.037 2.914 0.718
}