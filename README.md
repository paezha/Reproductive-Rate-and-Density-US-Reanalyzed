
<!-- README.md is generated from README.Rmd. Please edit that file -->

# The importance of reproducibility in COVID-19 research: the case of population density and the spread of the pandemic

<!-- badges: start -->
<!-- badges: end -->

Antonio Páez (McMaster University)

Paper in preparation for submision to *PLoS ONE*

## Abstract

The emergence of the novel SARS-CoV-2 coronavirus and the global
COVID-19 pandemic has led to explosive growth in scientific research.
Given the high stakes of the situation, it is essential that scientific
activites, on which good policy depends, are as transparent and
reproducible as possible. Reproducibility is key for the efficient
operation of the self-correction mechanisms of science, which work to
weed out errors and refine our understanding of social and physical
phenomena. In this paper, the importance of reproducibility is
illustrated for the case of the association between population density
and the the spread of SARS-CoV-2. Transparency and openness means that
the same problem can, with relatively modest efforts, be examined by
independent researchers who can verify findings, and bring to bear
different perspectives, approaches, and methods—sometimes with
consequantial changes in the conclusions, as the empirical example in
this paper shows.

## Keywords

-   COVID-19  
-   Reproducible research  
-   Population density  
-   Basic reproductive number

## Introduction

The emergence of the novel SARS-CoV-2 coronavirus in 2019, and the
global pandemic that followed in its wake, led to an explosive growth of
research. According to Fraser et al. (2021), over 125,000
COVID-19-related papers were released in the first ten months from the
first confirmed case of the disease. Of these, more than 30,000 were
shared in pre-print servers, the use of which also exploded in the past
year (Kwon 2020; Vlasschaert, Topf, and Hiremath 2020; Añazco et al.
2021).

Given the heavy human and economic cost of the pandemic, there has been
a natural tension in the scientific community between the need to
publish research results quickly and the imperative to maintain
consistently high quality standards in scientific reporting; indeed, a
call for maintaining the standards in published research has even called
this deluge of publications a “carnage of substandard research”
(Bramstedt 2020). Part of the challenge of maintaining quality standards
in published research is that, despite an abundance of recommendations
and guidelines (Broggini et al. 2017; Ince, Hatton, and Graham-Cumming
2012; Ioannidis et al. 2014; Brunsdon and Comber 2020), in practice
reproducibility has remained a lofty but somewhat aspirational goal
(Konkol and Kray 2019; Konkol, Kray, and Pfeiffer 2019). As reported in
the literature, only a woefully small proportion of published research
was actually reproducible before the pandemic (Iqbal et al. 2016;
Stodden, Seiler, and Ma 2018), a situation that does not appear to have
changed substantially since (Sumner et al. 2020; Gustot 2020).

The push for open data and software, along with more strenuous efforts
towards open, reproducible research, is simply a continuation of
long-standing scientific practices of independent verification. Despite
the (at times disproportionate) attention that high profile scandals in
science tend to elicit in the media, science as a collective endeavor is
remarkable for being a self-correcting enterprise, one with built-in
mechanisms and incentives to weed out erroneous ideas. Over the long
term, facts tend to prevail in science. At stake is the shorter-term
impacts that research may have in other spheres of economic and social
life. The case of economists Reinhart and Rogoff comes to mind: by the
time the inaccuracies in their research were uncovered (see Herndon,
Ash, and Pollin 2014), their claims about debt and economic growth had
already been seized by policy-makers on both sides of the Atlantic to
justify austerity policies in the aftermath of the Great Recession of
2007-2009[1]. As later research has demonstrated, those policies cast a
long shadow, and their sequels continued to be felt for years (Basu,
Carney, and Kenworthy 2017).

In the context of COVID-19, a topic that has grabbed the imagination of
numerous thinkers has been the prospect of life in cities after the
pandemic (Florida et al. 2020). The fact that the worst of the pandemic
was initially felt in dense population centers such as Wuhan, Milan,
Madrid, and New York, prompted a flurry of research into the
associations between density and the spread of the pandemic. Some
important questions hang on the results of these research efforts. For
example, are lower density regions safer from the pandemic? Are
de-densification policies warranted, at least in the short term? And in
the longer term, will the risks of life in high density regions presage
a flight from cities? Over the past year, numerous papers have sought to
throw light into the underlying issue of density and the pandemic;
nonetheless the results, as will be detailed next, remain mixed.
Further, to complicate matters, precious few of these studies appear to
be sufficiently open to support independent verification.

The objective of this paper is to illustrate the importance of
reproducibility in research, particularly in the context of the flood of
COVID-19 papers. To this end, a recent study by Sy et al. (Sy, White,
and Nichols 2021) is chosen as an example of reproducible research. The
objective is not to malign the analysis of these researchers, but rather
to demonstrate the value of openness to allow for independent
verification and further analysis. Open data and open code mean that an
independent researcher can, with only modest efforts, not only verify
the findings reported, but also examine the same data from a perspective
which may not have been available to the original researchers due to
differences in disciplinary perspectives, methodological traditions,
and/or training, among other possible factors. The example, which shows
consequential changes in the conclusions reached by different analyses,
should serve as a call to researchers to redouble their efforts to
increase transparency and reproducibility in research. This paper, in
addition, aims to show how data can be packaged in well-documented,
shareable units, and code can be embedded into self-contained documents
suitable for review and independent verification. The source for this
paper is an [R Markdown](http://rmarkdown.rstudio.com) document which,
along with the data package, is available in a public repository[2].

## References

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-Anazco2021publication" class="csl-entry">

Añazco, Diego, Bryan Nicolalde, Isabel Espinosa, Jose Camacho, Mariam
Mushtaq, Jimena Gimenez, and Enrique Teran. 2021. “Publication Rate and
Citation Counts for Preprints Released During the COVID-19 Pandemic: The
Good, the Bad and the Ugly.” Journal Article. *PeerJ* 9: e10927.
<https://doi.org/10.7717/peerj.10927>.

</div>

<div id="ref-Basu2017ten" class="csl-entry">

Basu, Sanjay, Megan A. Carney, and Nora J. Kenworthy. 2017. “Ten Years
After the Financial Crisis: The Long Reach of Austerity and Its Global
Impacts on Health.” Journal Article. *Social Science & Medicine* 187:
203–7. <https://doi.org/10.1016/j.socscimed.2017.06.026>.

</div>

<div id="ref-Bramstedt2020carnage" class="csl-entry">

Bramstedt, Katrina A. 2020. “The Carnage of Substandard Research During
the COVID-19 Pandemic: A Call for Quality.” Journal Article. *Journal of
Medical Ethics* 46 (12): 803–7.
<https://doi.org/10.1136/medethics-2020-106494>.

</div>

<div id="ref-Broggini2017reproducible" class="csl-entry">

Broggini, F., J. Dellinger, S. Fomel, and Y. Liu. 2017. “Reproducible
Research: Geophysics Papers of the Future - Introduction.” Journal
Article. *Geophysics* 82 (6).
<https://doi.org/10.1190/geo2017-0918-spseintro.1>.

</div>

<div id="ref-Brunsdon2020opening" class="csl-entry">

Brunsdon, Chris, and Alexis Comber. 2020. “Opening Practice: Supporting
Reproducibility and Critical Spatial Data Science.” Journal Article.
*Journal of Geographical Systems*.
<https://doi.org/10.1007/s10109-020-00334-2>.

</div>

<div id="ref-Florida2020how" class="csl-entry">

Florida, R, E Glaeser, MM Sharif, K Bedi, TJ Campanella, CH Chee, D
Doctoroff, B Katz, R Katz, and J Kotkin. 2020. “How Life in Our Cities
Will Look After the Coronavirus Pandemic.” Journal Article. *Foreign
Policy* 1.
<https://foreignpolicy.com/2020/05/01/future-of-cities-urban-life-after-coronavirus-pandemic/>.

</div>

<div id="ref-Fraser2021evolving" class="csl-entry">

Fraser, Nicholas, Liam Brierley, Gautam Dey, Jessica K. Polka, Máté
Pálfy, Federico Nanni, and Jonathon Alexis Coates. 2021. “The Evolving
Role of Preprints in the Dissemination of COVID-19 Research and Their
Impact on the Science Communication Landscape.” Journal Article. *PLOS
Biology* 19 (4): e3000959.
<https://doi.org/10.1371/journal.pbio.3000959>.

</div>

<div id="ref-Gustot2020quality" class="csl-entry">

Gustot, T. 2020. “Quality and Reproducibility During the COVID-19
Pandemic.” Journal Article. *JHEP Rep* 2 (4): 100141.
<https://doi.org/10.1016/j.jhepr.2020.100141>.

</div>

<div id="ref-Herndon2014high" class="csl-entry">

Herndon, T., M. Ash, and R. Pollin. 2014. “Does High Public Debt
Consistently Stifle Economic Growth? A Critique of Reinhart and Rogoff.”
Journal Article. *Cambridge Journal of Economics* 38 (2): 257–79.
<https://doi.org/10.1093/cje/bet075>.

</div>

<div id="ref-Ince2012case" class="csl-entry">

Ince, D. C., L. Hatton, and J. Graham-Cumming. 2012. “The Case for Open
Computer Programs.” Journal Article. *Nature* 482 (7386): 485–88.
<https://doi.org/10.1038/nature10836>.

</div>

<div id="ref-Ioannidis2014increasing" class="csl-entry">

Ioannidis, J. P. A., S. Greenland, M. A. Hlatky, M. J. Khoury, M. R.
Macleod, D. Moher, K. F. Schulz, and R. Tibshirani. 2014. “Increasing
Value and Reducing Waste in Research Design, Conduct, and Analysis.”
Journal Article. *Lancet* 383 (9912): 166–75.
<https://doi.org/10.1016/s0140-6736(13)62227-8>.

</div>

<div id="ref-Iqbal2016reproducible" class="csl-entry">

Iqbal, S. A., J. D. Wallach, M. J. Khoury, S. D. Schully, and J. P. A.
Ioannidis. 2016. “Reproducible Research Practices and Transparency
Across the Biomedical Literature.” Journal Article. *Plos Biology* 14
(1). <https://doi.org/10.1371/journal.pbio.1002333>.

</div>

<div id="ref-Konkol2019examination" class="csl-entry">

Konkol, M., and C. Kray. 2019. “In-Depth Examination of Spatiotemporal
Figures in Open Reproducible Research.” Journal Article. *Cartography
and Geographic Information Science* 46 (5): 412–27.
<https://doi.org/10.1080/15230406.2018.1512421>.

</div>

<div id="ref-Konkol2019computational" class="csl-entry">

Konkol, M., C. Kray, and M. Pfeiffer. 2019. “Computational
Reproducibility in Geoscientific Papers: Insights from a Series of
Studies with Geoscientists and a Reproduction Study.” Journal Article.
*International Journal of Geographical Information Science* 33 (2):
408–29. <https://doi.org/10.1080/13658816.2018.1508687>.

</div>

<div id="ref-Kwon2021swamped" class="csl-entry">

Kwon, Diana. 2020. “How Swamped Preprint Servers Are Blocking Bad
Coronavirus Research.” Journal Article. *Nature* 581 (7807): 130–32.

</div>

<div id="ref-Stodden2018empirical" class="csl-entry">

Stodden, V., J. Seiler, and Z. K. Ma. 2018. “An Empirical Analysis of
Journal Policy Effectiveness for Computational Reproducibility.” Journal
Article. *Proceedings of the National Academy of Sciences of the United
States of America* 115 (11): 2584–89.
<https://doi.org/10.1073/pnas.1708290115>.

</div>

<div id="ref-Sumner2020reproducibility" class="csl-entry">

Sumner, Josh, Leah Haynes, Sarah Nathan, Cynthia Hudson-Vitale, and
Leslie D. McIntosh. 2020. “Reproducibility and Reporting Practices in
COVID-19 Preprint Manuscripts.” Journal Article. *medRxiv*,
2020.03.24.20042796. <https://doi.org/10.1101/2020.03.24.20042796>.

</div>

<div id="ref-Sy2021population" class="csl-entry">

Sy, Karla Therese L., Laura F. White, and Brooke E. Nichols. 2021.
“Population Density and Basic Reproductive Number of COVID-19 Across
United States Counties.” Journal Article. *PLOS ONE* 16 (4): e0249271.
<https://doi.org/10.1371/journal.pone.0249271>.

</div>

<div id="ref-Vlasschaert2020proliferation" class="csl-entry">

Vlasschaert, Caitlyn, Joel M. Topf, and Swapnil Hiremath. 2020.
“Proliferation of Papers and Preprints During the Coronavirus Disease
2019 Pandemic: Progress or Problems with Peer Review?” Journal Article.
*Advances in Chronic Kidney Disease* 27 (5): 418–26.
<https://doi.org/10.1053/j.ackd.2020.08.003>.

</div>

</div>

[1] Nobel Prize in Economics Paul Krugman noted that “Reinhart–Rogoff
may have had more immediate influence on public debate than any previous
paper in the history of economics”

[2] 
