\name{lengthpep}
\alias{lengthpep}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ To calculate the aminoacid length of a protein sequence
%%  ~~function to do ... ~~
}
\description{This function counts the number of amino acids making up the input protein sequence 
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
lengthpep(seq)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{seq}{AA sequence string in upper case
}
}

\value{
Return the residue count as a numeric vector of length one}

\examples{
lengthpep("MSLSNKLTLDKLDVKGKRVVMRVDFNVPMKNNQITNNQRIKAAVPSIKFCLDNGAKSVVLMSHLGRPDGVPMPDKYSLEP
VAVELKSLLGKDVLFLKDCVGPEVEKACANPAAGSVILLENLRFHVEEEGKGKDASGNKVKAEPAKIEAFRASLSKLGDV
YVNDAFGTAHRAHSSMVGVNLPQKAGGFLMKKELNYFAKALESPERPFLAILGGAKVADKIQLINNMLDKVNEMIIGGGM
AFTFLKVLNNMEIGTSLFDEEGAKIVKDLMSKAEKNGVKITLPVDFVTADKFDENAKTGQATVASGIPAGWMGLDCGPES
SKKYAEAVTRAKQIVWNGPVGVFEWEAFARGTKALMDEVVKATSRGCITIIGGGDTATCCAKWNTEDKVSHVSTGGGASL
ELLEGKVLPGVDALSNI")
}