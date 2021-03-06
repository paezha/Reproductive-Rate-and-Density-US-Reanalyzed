
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Reproducibility of research during COVID-19: examining the case of population density and the basic reproductive rate from the perspective of spatial analysis

<!-- badges: start -->
<!-- badges: end -->

Antonio Páez (McMaster University)

Paper desk-rejected by [~~PLoS
ONE~~](https://github.com/paezha/Reproductive-Rate-and-Density-US-Reanalyzed/tree/main/R0-Density-Reanalysis/Editorial-Materials-and-Correspondence/PLOS%20ONE%20Decision_%20PONE-D-21-16874.pdf)
[~~Science of the Total
Environment~~](https://github.com/paezha/Reproductive-Rate-and-Density-US-Reanalyzed/tree/main/R0-Density-Reanalysis/Editorial-Materials-and-Correspondence/Your%20Submission%20STOTEN-D-21-12077.pdf)
[~~Landscape and Urban
Planning~~](https://github.com/paezha/Reproductive-Rate-and-Density-US-Reanalyzed/tree/main/R0-Density-Reanalysis/Editorial-Materials-and-Correspondence/Decision%20on%20submission%20to%20Landscape%20and%20Urban%20Planning.pdf)

Geographical Analysis (2021) <https://doi.org/10.1111/gean.12307>

## Abstract

The emergence of the novel SARS-CoV-2 coronavirus and the global
COVID-19 pandemic in 2019 led to explosive growth in scientific
research. Alas, much of the research in the literature lacks conditions
to be reproducible, and recent publications on the association between
population density and the basic reproductive number of SARS-CoV-2 are
no exception. Relatively few papers share code and data sufficiently,
which hinders not only verification but additional experimentation. In
this paper, an example of reproducible research shows the potential of
spatial analysis for epidemiology research during COVID-19. Transparency
and openness means that independent researchers can, with only modest
efforts, verify findings and use different approaches as appropriate.
Given the high stakes of the situation, it is essential that scientific
findings, on which good policy depends, are as robust as possible; as
the empirical example shows, reproducibility is one of the keys to
ensure this.

## Keywords

-   COVID-19  
-   Reproducible research  
-   Population density  
-   Basic reproductive number

# Introduction

The emergence of the novel SARS-CoV-2 coronavirus in 2019, and the
global pandemic that followed in its wake, led to an explosive growth of
research around the globe. According to Fraser et al. (2021), over
125,000 COVID-19-related papers were released in the first ten months
from the first confirmed case of the disease. Of these, more than 30,000
were shared in pre-print servers, the use of which also exploded in the
past year (Kwon 2020; Vlasschaert, Topf, and Hiremath 2020; Añazco et
al. 2021).

Given the ruinous human and economic cost of the pandemic, there has
been a natural tension in the scientific community between the need to
publish research results quickly and the imperative to maintain
consistently high quality standards in scientific reporting; indeed, a
call for maintaining the standards in published research termed the
deluge of COVID-19 publications a “carnage of substandard research”
(Bramstedt 2020). Part of the challenge of maintaining quality standards
in published research is that, despite an abundance of recommendations
and guidelines (e.g., Broggini et al. 2017; Ince, Hatton, and
Graham-Cumming 2012; Ioannidis et al. 2014; Brunsdon and Comber 2020),
in practice reproducibility has remained a lofty and somewhat
aspirational goal (Konkol and Kray 2019; Konkol, Kray, and Pfeiffer
2019). As reported in the literature, only a woefully small proportion
of published research was actually reproducible before the pandemic
(Iqbal et al. 2016; Stodden, Seiler, and Ma 2018), and the situation
does not appear to have changed substantially since (Sumner et al. 2020;
Gustot 2020).

The push for open software and data (e.g., R. S. Bivand 2020;
Arribas-Bel et al. 2021), along with more strenuous efforts towards
open, reproducible research, is simply a continuation of long-standing
scientific practices of independent verification. Despite the (at times
disproportionate) attention that high profile scandals in science tend
to elicit in the media, science as a collective endeavor is remarkable
for being a self-correcting enterprise, one with built-in mechanisms and
incentives to weed out erroneous ideas. Over the long term, facts tend
to prevail in science. At stake is the shorter-term impacts that
research may have in other spheres of economic and social life. The case
of economists Reinhart and Rogoff comes to mind: by the time the
inaccuracies and errors in their research were uncovered (see Herndon,
Ash, and Pollin 2014), their claims about debt and economic growth had
already been seized by policy-makers on both sides of the Atlantic to
justify austerity policies in the aftermath of the Great Recession of
2007-2009[1]. As later research has demonstrated, those policies cast a
long shadow, and their sequels continued to be felt for years (Basu,
Carney, and Kenworthy 2017).

In the context of COVID-19, a topic that has grabbed the imagination of
numerous thinkers has been the prospect of life in cities after the
pandemic (e.g., Florida et al. 2020); as a result, the implications of
the pandemic for urban planning, design, and management are the topic of
ongoing research (e.g., Sharifi and Khavarian-Garmsir 2020). The fact
that the worst of the pandemic was initially felt in dense population
centers such as Wuhan, Milan, Madrid, and New York, unleashed a torrent
of research into the associations between density and the spread of the
pandemic. The answers to some important questions hang on the results of
these research efforts. For example, are lower density regions safer
from the pandemic? Are de-densification policies warranted, even if just
in the short term? In the longer term, will the risks of life in high
density regions presage a flight from cities? And, what are the
implications of the pandemic for future urban planning and practice?
Over the past year, numerous papers have sought to throw light on the
underlying issue of density and the pandemic; nonetheless the results,
as will be detailed next, remain mixed. Further, to complicate matters,
precious few of these studies appear to be sufficiently open to support
independent verification.

The objective of this paper is to illustrate the importance of
reproducibility in research in the context of the flood of COVID-19
papers. For this, I focus on a recent study by Sy et al. (2021) that
examined the correlation between the basic reproductive number of
COVID-19, ![R\_0](https://latex.codecogs.com/png.latex?R_0 "R_0"), and
population density. The basic reproductive number is a summary measure
of contact rates, probability of transmission of a pathogen, and
duration of infectiousness. In rough terms, it measures how many new
infections each infections begets. The paper of Sy et al. (2021) was
selected for being, in the literature examined, almost alone in
supporting reproducible research. Accordingly, I wish to be clear that
my objective in singling their work for discussion is not to malign
their efforts, but rather to demonstrate how open and reproducible
research efforts can greatly help to accelerate discovery. More
concretely, open data and open code mean that an independent researcher
can, with only modest efforts, not only verify the findings reported,
but also examine the same data from a perspective which may not have
been available to the original researchers due to differences in
disciplinary perspectives, methodological traditions, and/or training,
among other possible factors. The example, which shows consequential
changes in the conclusions reached by different analyses, should serve
as a call to researchers to redouble their efforts to increase
transparency and reproducibility in their research. In this spirit, the
present paper also aims to show how data can be packaged in
well-documented, shareable units, and code can be embedded into
self-contained documents suitable for review and independent
verification. The source for this paper is an [R
Markdown](http://rmarkdown.rstudio.com) document which, along with the
data package, are available in a public repository[2]

# Background: the intuitive relationship between density and spread of contagious diseases

The concern with population density and the spread of the virus during
the COVID-19 pandemic was fueled, at least in part, by dramatic scenes
seen in real-time around the world from large urban centers such as
Wuhan, Milan, Madrid, and New York. In theory, there are good reasons to
believe that higher density could have a positive association with the
transmission of a contagious virus. It has long been known that the
potential for inter-personal contact is greater in regions with higher
density (see for example the research on urban fields and
time-geography, including Farber and Páez 2011; Moore and Brown 1970;
Moore 1970). Mathematically, models of exposure and contagion indicate
that higher densities can catalyze the transmission of contagious
diseases (Rocklöv and Sjödin 2020; Li, Richmond, and Roehner 2018). The
idea is intuitive and likely at the root of messages, by some figures in
positions of authority, that regions with sparse population densities
faced lower risks from the pandemic[3].

As Rocklöv and Sjödin (Rocklöv and Sjödin 2020) note, however,
mathematical models of contagion are valid at small-to-medium spaces
(and presumably, smaller time intervals too, such as time spent in
restaurants, concert halls, cruises), and the results do not necessarily
transfer to larger spatial units and longer time periods. There are
solid reasons for this: while in a restaurant, one can hardly avoid
being in proximity to other customers. On the other hand, a person can
choose to (or be forced to as a matter of policy) not go to a restaurant
in the first place. Nonetheless, the idea that high density correlates
with high transmission is so seemingly sensible that it is often taken
for granted even at the scale of large spaces (e.g., Cruz et al. 2020;
Micallef et al. 2020). In such conditions, however, there exists the
possibility of behavioral adaptations, which are difficult to capture in
the mechanistic framework of differential equations (or can be missing
in agent-based models, e.g., Gomez et al. 2021); these adaptations, in
fact, can be a key aspect of disease transmission.

A plausible behavioral adaptation during a pandemic, especially one
broadcast as widely and intensely as COVID-19, is risk compensation.
Risk compensation is a process whereby people adjust their behavior in
response to their *perception* of risk (R. B. Noland 1995; Richens,
Imrie, and Copas 2000; Phillips, Fyhri, and Sagberg 2011). In the case
of COVID-19, Chauhan et al. (Chauhan et al. 2021) have found that
perception of risks in the US varies between rural, suburban, and urban
residents, with rural residents in general expressing less concern about
the virus. It is possible that people who listened to the message of
leaders saying that they were safe from the virus because of low density
may not have taken adequate precautions. Conversely, people in dense
places who could more directly observe the impact of the pandemic may
have become overly cautious. Both Paez et al. (2020) and Hamidi et al.
(2020) posit this mechanism (i.e., greater compliance with social
distancing in denser regions) to explain the results of their analyses.
The evidence available does indeed show that there were important
changes in behavior with respect to mobility during the pandemic (Jamal
and Paez 2020; Harris and Branion-Calles 2021; Molloy et al. 2020);
furthermore, shelter in place orders may have had greater buy-in from
the public in higher density regions (Feyman et al. 2020; Hamidi and
Zandiatashbar 2021), and the associated behavior may have persisted
beyond the duration of official social-distancing policies (Praharaj et
al. 2020). In addition, there is evidence that changes in mobility
correlated with the trajectory of the pandemic (A. Paez 2020; Robert B.
Noland 2021). Given the potential for behavioral adaptation, the
question of density becomes more nuanced: it is not just a matter of
proximity, but also of human behavior, which is better studied using
population-level data and models.

# Background: but what does the literature say?

When it comes to population density and the spread of COVID-19, the
international literature to date remains inconclusive.

On the one hand, there are studies that report positive associations
between population density and various COVID-19-related outcomes. Bhadra
(2021), for example, reported a moderate positive correlation between
the spread of COVID-19 and population density at the district level in
India, however their analysis was bivariate and did not control for
other variables, such as income. Similarly, Kadi and Khelfaoui (2020)
found a positive and significant correlation between number of cases and
population density in cities in Algeria in a series of simple regression
models (i.e., without other controls). A question in these relatively
simple analyses is whether density is not a proxy for other factors.
Other studies have included controls, such as Pequeno et al. (2020), a
team that reported a positive association between density and cumulative
counts of confirmed COVID-19 cases in state capitals in Brazil after
controlling for covariates, including income, transport connectivity,
and economic status. In a similar vein, Fielding-Miller et al. (2020)
reported a positive relationship between the absolute number of COVID-19
deaths and population density (rate) in rural counties in the US. Roy
and Ghosh (2020) used a battery of machine learning techniques to find
discriminatory factors, and a positive and significant association
between COVID-19 infection and death rates in US states. Wong and Li
(2020) also found a positive and significant association between
population density and number of confirmed COVID-19 cases in US
counties, using both univariate and multivariate regressions with
spatial effects. More recently, Sy et al. (2021) reported that the basic
reproductive number of COVID-19 in US counties tended to increase with
population density, but at a decreasing rate at higher densities.

On the flip side, a number of studies report non-significant or negative
associations between population density and COVID-19 outcomes. This
includes the research of Sun et al. (2020) who did not find evidence of
significant correlation between population density and confirmed number
of cases per day *in conditions of lockdown* in China. This finding
echoes the results of Paez et al. (2020), who in their study of
provinces in Spain reported non-significant associations between
population density and infection rates in the early days of the first
wave of COVID-19, and negative significant associations in the later
part of the first lockdown. Similarly, Skórka et al. (2020) found zero
or negative associations between population density and infection
numbers/deaths by country. Fielding-Miller et al. (2020) contrast their
finding about rural counties with a negative relationship between
COVID-19 deaths and population density in urban counties in the US. For
their part, in their investigation of doubling time, White and
Hébert-Dufresne (2020) identified a negative and significant correlation
between population density and doubling time in US states. Likewise,
Khavarian-Garmsir, Sharifi, and Moradpour (2021) found a small negative
(and significant) association between population density and COVID-19
morbidity in districts in Tehran. Finally, two of the most complete
studies in the US, by Hamidi, Ewing, and Sabouri (2020) and Hamidi,
Sabouri, and Ewing (2020), used an extensive set of controls to find
negative and significant correlations between density and COVID-19 cases
and fatalities at the level of counties in the US.

As can be seen, these studies are implemented at different scales in
different regions of the world. They also use a range of techniques,
from correlation analysis, to multivariate regression, spatial
regressions, and machine learning techniques. This is natural and to be
expected: individual researchers have only limited time and expertise.
This is why reproducibility is important. To pick an example (which will
be further elaborated in later sections of this paper), the study of Sy
et al. (2021), hereafter referred to as SWN, would immediately grab the
attention of a researcher with expertise in spatial analysis.

# Reproducibility of research

SWN investigated the basic reproductive number of COVID-19 in US
counties, and its association with population density, median household
income, and prevalence of private mobility. For their multivariate
analysis, SWN used mixed linear models. This is an appropriate modelling
choice: ![R\_0](https://latex.codecogs.com/png.latex?R_0 "R_0") is an
interval-ratio variable that is suitably modeled using linear
regression; further, as SWN note there is a likelihood that the process
in not independent “among counties within each state, potentially due to
variable resource allocation and differing health systems across states”
(p. 3). A mixed linear model accounts for this by introducing random
components; in the case of SWN, these are random intercepts at the state
level. SWN estimated various models with different combinations of
variables, including median household income and prevalence of travel by
private transportation. These controls help to account for potential
variations in behavior: people in more affluent counties may have
greater opportunities to work from home, and use of private
transportation reduces contact with strangers. Moreover, they also
conducted various sensitivity analyses. After these efforts, SWN
concluded that there is a positive association between the basic
reproductive number and population density at the level of counties in
the US.

One salient aspect of the analysis in SWN is that the basic reproductive
number can only be calculated reliably with a minimum number of cases,
and a large number of counties did not meet such threshold. As
researchers do, SWN made modelling decisions, in this case basing their
analysis only on counties with valid observations. A modeler with
expertise in spatial analysis would likely ask some of the following
questions on reading SWN’s paper: how were missing counties treated?
What are the implications of the spatial sampling framework used in the
analysis? Is it possible to spatially interpolate the missing
observations? Was there spatial residual autocorrelation in the models,
or was the use of mixed models sufficient to capture spatial
dependencies? These questions are relevant and their implications
important. Fortunately, SWN are an example of a reasonably open,
reproducible research product: their paper is accompanied by (most of)
the data and (most of) the code used in the analysis. This means that an
independent researcher can, with only a moderate investment of time and
effort, reproduce the results in the paper, as well as ask additional
questions.

Alas, reproducibility is not necessarily the norm in the relevant
literature.

There are various reasons why a project can fail to be reproducible. In
some cases, there might be legitimate reasons to withhold the data,
perhaps due to confidentiality and privacy reasons (e.g., Lee et al.
2020). But in many other cases the data are publicly available, which in
fact has commonly been the case with population-level COVID-19
information. Typically the provenance of the data is documented, but in
numerous studies the data themselves are not shared (Amadu et al. 2021;
Bhadra, Mukherjee, and Sarkar 2021; Cruz et al. 2020; Feng et al. 2020;
Fielding-Miller, Sundaram, and Brouwer 2020; Hamidi, Ewing, and Sabouri
2020; Hamidi, Sabouri, and Ewing 2020; Inbaraj, George, and Chandrasingh
2021; Souris and Gonzalez 2020). As any researcher can attest,
collecting, organizing, and preparing data for a project can take a
substantial amount of time. Pointing to the sources of data, even when
these sources are public, is a small step towards reproducibility-but
only a very small one. Faced with the prospect of having to recreate a
data set from raw sources is probably sufficient to dissuade all but the
most dedicated (or stubborn) researcher from independent verification.
This is true even if part of the data are shared (e.g., Wong and Li
2020). In other cases, data are shared, but the processes followed in
the preparation of the data are not fully documented (Ahmad et al. 2020;
Skórka et al. 2020). These processes matter, as shown by the errors in
the spreadsheets of Reinhart and Rogoff (see Herndon, Ash, and Pollin
2014 for the discovery of these errors), as well as by the data of
biologist Jonathan Pruitt that led to an “avalanche” of paper
retractions (see Viglione 2020). Another situation is when papers share
well-documented data, but fail to provide the code used in the analysis
(Noury et al. 2021; Pequeno et al. 2020; Wang et al. 2021). Making code
available only “on demand” (e.g., Brandtner et al. 2021) is an
unnecessary barrier when most journals offer the facility to share
supplemental materials online. Then there are those papers that more
closely comply with reproducibility standards, and share well-documented
processes and data, as well as the code used in any analyses reported
(Antonio Paez et al. 2020; Feyman et al. 2020; Stephens, Chernyavskiy,
and Bruns 2021; White and Hébert-Dufresne 2020; Sy, White, and Nichols
2021). Even in this case, the pressure to publish “new findings” instead
of replication studies can act as a deterrent, perhaps particularly for
younger researchers[4].

<!--
@Ahmad2020association -> code is not shared, data are provided but data pre-processing is not documented
@Amadu2021assessing -> code is not shared, data provenance is documented, data are not shared
@Bhadra2021impact -> (code and data not available; only data provenance is documented)
@Brandtner2021creatures -> code is available on demand, data are shared
@Cruz2020exploring -> code is shared, sources of data are documented, data are not actually provided
@Feng2020spread -> code not shared, data provenance is documented, data are not shared
@Feyman2020effectiveness -> code and data are provided
@Fielding2020social -> code is not shared, data provenance is documented, data are not actually provided
@Hamidi2020longitudinal, @Hamidi2020density ->  (code and data not available)
@Inbaraj2021seroprevalence -> code is not shared, data are not shared
@Lee2020human -> code not provided, data sources are documented but data are not shared (privacy & confidentiality)
@Noury2021how -> code is not shared, data are shared
@Pequeno2020air -> (raw data supplied in suplemental files, code not available)
@Roy2020factors -> code is not shared, data are provided and data processing is documented
@Skorka2020macroecology -> code and data are shared but data processing is not documented, 
@Souris2020covid -> code not provided, data sources are documented but data are not shared
@Stephens2021impact -> code and data are shared
@Wang2021transmission -> code is not shared, data are available
@White2020state -> code and data are in repository
@Wong2020spreading -> code not provided, data are shared but data preprocessing is not documented
-->

In the following sections, the analysis of SWN is reproduced, some
relevant questions from the perspective of an independent researcher
with expertise in spatial analysis are asked, and the data are
reanalyzed.

# Reproducing SWN

SWN examined the association between the basic reproductive number of
COVID-19 and population density. The basic reproductive number
![R\_0](https://latex.codecogs.com/png.latex?R_0 "R_0") is a summary
measure of contact rates, probability of transmission of a pathogen, and
duration of infectiousness. In rough terms,
![R\_0](https://latex.codecogs.com/png.latex?R_0 "R_0") measures how
many new infections each infections begets. Infectious disease outbreaks
generally tend to die out when
![R\_0&lt;1](https://latex.codecogs.com/png.latex?R_0%3C1 "R_0<1"), and
to grow when
![R\_0&gt;1](https://latex.codecogs.com/png.latex?R_0%3E1 "R_0>1").
Reliable calculation of
![R\_0](https://latex.codecogs.com/png.latex?R_0 "R_0") requires a
minimum number of cases to be able to assume that there is community
transmission of the pathogen. Accordingly, SWN based their analysis only
on counties that had at least 25 cases or more at the end of the
exponential growth phase (see Fig. ). Their final sample included 1,151
counties in the US, including in Alaska, Hawaii, Puerto Rico, and island
territories. SWN used COVID-19 data collected by the New York Times and
made available (with versioning) in a GitHub repository[5]. For each
county, SWN assumed that the exponential growth period began one week
prior to the second daily increase in cases, and assumed that the period
of exponential growth lasted approximately 18 days.

<div class="figure">

<img src="README_files/figure-gfm/R0-map-1.png" alt="\label{fig:R0-map}Basic reproductive rate in US counties (Alaska, Hawaii, Puerto Rico, and territories not shown)." width="1\linewidth" />
<p class="caption">
Basic reproductive rate in US counties (Alaska, Hawaii, Puerto Rico, and
territories not shown).
</p>

</div>

Table reproduces the first three models of SWN (the fourth model did not
have any significant variables; see Table 1 in SWN). It is possible to
verify that the results match, with only the minor (and irrelevant)
exception of the magnitude of the coefficient for travel by private
transportation, which is due to a difference in the input (here the
variable is changed to one percent units, instead of the ten percent
units used by SWN). The mixed linear model gives random intercepts
(i.e., the intercept is a random variable), and the standard deviation
is reported in the fifth row of Table . It is useful to map the random
intercepts: as seen in Figure , other things being equal, counties in
Texas tend to have somewhat lower values of
![R\_0](https://latex.codecogs.com/png.latex?R_0 "R_0") (i.e., a
negative random intercept), whereas counties in South Dakota tend to
have higher values of
![R\_0](https://latex.codecogs.com/png.latex?R_0 "R_0"). The key of the
analysis, after extensive sensitivity analysis, is a robust finding that
population density has a positive association with the basic
reproductive number. But does it?

<table class="table" style="margin-left: auto; margin-right: auto;">
<caption>
Reproducing SWN: Models 1-3
</caption>
<thead>
<tr>
<th style="empty-cells: hide;border-bottom:hidden;" colspan="1">
</th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2">

<div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">

Model 1

</div>

</th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2">

<div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">

Model 2

</div>

</th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2">

<div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">

Model 3

</div>

</th>
</tr>
<tr>
<th style="text-align:left;">
Variable
</th>
<th style="text-align:left;">
beta
</th>
<th style="text-align:left;">
95% CI
</th>
<th style="text-align:left;">
beta
</th>
<th style="text-align:left;">
95% CI
</th>
<th style="text-align:right;">
beta
</th>
<th style="text-align:left;">
95% CI
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Intercept
</td>
<td style="text-align:left;">
2.274
</td>
<td style="text-align:left;">
\[2.167, 2.381\]
</td>
<td style="text-align:left;">
3.347
</td>
<td style="text-align:left;">
\[2.676, 4.018\]
</td>
<td style="text-align:right;">
3.386
</td>
<td style="text-align:left;">
\[2.614, 4.157\]
</td>
</tr>
<tr>
<td style="text-align:left;">
Log of population density
</td>
<td style="text-align:left;">
0.162
</td>
<td style="text-align:left;">
\[0.133, 0.191\]
</td>
<td style="text-align:left;">
0.145
</td>
<td style="text-align:left;">
\[0.115, 0.176\]
</td>
<td style="text-align:right;">
0.147
</td>
<td style="text-align:left;">
\[0.113, 0.18\]
</td>
</tr>
<tr>
<td style="text-align:left;">
Percent of private transportation
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
-0.013
</td>
<td style="text-align:left;">
\[-0.02, -0.005\]
</td>
<td style="text-align:right;">
-0.013
</td>
<td style="text-align:left;">
\[-0.021, -0.005\]
</td>
</tr>
<tr>
<td style="text-align:left;">
Median household income ($10,000)
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
<td style="text-align:left;">
</td>
<td style="text-align:right;">
-0.003
</td>
<td style="text-align:left;">
\[-0.033, 0.026\]
</td>
</tr>
<tr>
<td style="text-align:left;">
Standard deviation (Intercept)
</td>
<td style="text-align:left;">
0.166
</td>
<td style="text-align:left;">
\[0.108, 0.254\]
</td>
<td style="text-align:left;">
0.136
</td>
<td style="text-align:left;">
\[0.081, 0.229\]
</td>
<td style="text-align:right;">
0.137
</td>
<td style="text-align:left;">
\[0.081, 0.232\]
</td>
</tr>
<tr>
<td style="text-align:left;">
Within-group standard error
</td>
<td style="text-align:left;">
0.665
</td>
<td style="text-align:left;">
\[0.638, 0.693\]
</td>
<td style="text-align:left;">
0.665
</td>
<td style="text-align:left;">
\[0.638, 0.693\]
</td>
<td style="text-align:right;">
0.665
</td>
<td style="text-align:left;">
\[0.638, 0.694\]
</td>
</tr>
</tbody>
</table>

<div class="figure">

<img src="README_files/figure-gfm/random-terms-map-1.png" alt="\label{fig:random-terms-map}Random intercepts of Model 3 (Alaska, Hawaii, Puerto Rico, and territories not shown)." width="1\linewidth" />
<p class="caption">
Random intercepts of Model 3 (Alaska, Hawaii, Puerto Rico, and
territories not shown).
</p>

</div>

# Expanding on SWN

The preceding section shows that thanks to the availability of code and
data, it is possible to verify the results reported by SWN. As noted
earlier, though, an independent researcher might have wondered about the
implications of the spatial sampling procedure used by SWN. The decision
to use a sample of counties with reliable basic reproductive numbers,
although apparently sensible, results in a non-random spatial sampling
scheme. Turning our attention back to Figure , we form the impression
that many counties without reliable values of
![R\_0](https://latex.codecogs.com/png.latex?R_0 "R_0") are in more
rural, less dense parts of the United States. This impression is
reinforced when we overlay the boundaries of urban areas with population
greater than 50,000 on the counties with valid values of
![R\_0](https://latex.codecogs.com/png.latex?R_0 "R_0") (see Figure ).
The fact that ![R\_0](https://latex.codecogs.com/png.latex?R_0 "R_0")
could not be accurately computed in many counties without large urban
areas does not mean that there was no transmission of the virus: it
simply means that we do not know with sufficient precision to what
extent that was the case. The low number of cases may be related to low
population and/or low population density. This is intriguing, to say the
least: by excluding cases based on the ability to calculate
![R\_0](https://latex.codecogs.com/png.latex?R_0 "R_0") we are
potentially *selecting* the sample in a non-random way.

<div class="figure">

<img src="README_files/figure-gfm/urban-areas-map-1.png" alt="\label{fig:urban-areas-map}Urban areas with population &gt; 50,000 (Alaska, Hawaii, Puerto Rico, and territories not shown)." width="1\linewidth" />
<p class="caption">
Urban areas with population &gt; 50,000 (Alaska, Hawaii, Puerto Rico,
and territories not shown).
</p>

</div>

A problematic issue with non-random sample selection is that parameter
estimates can become unreliable, and numerous techniques have been
developed to address this. A model useful for sample selection problems
is Heckman’s selection model (see Maddala 1983). The selection model is
in fact a system of two equations, as follows:

![
\\begin{array}{c}
y\_i^{S\*} = \\beta^{S\\prime}x\_i^S+\\epsilon\_i^S\\\\
y\_i^{O\*} = \\beta^{O\\prime}x\_i^O+\\epsilon\_i^O
\\end{array}
](https://latex.codecogs.com/png.latex?%0A%5Cbegin%7Barray%7D%7Bc%7D%0Ay_i%5E%7BS%2A%7D%20%3D%20%5Cbeta%5E%7BS%5Cprime%7Dx_i%5ES%2B%5Cepsilon_i%5ES%5C%5C%0Ay_i%5E%7BO%2A%7D%20%3D%20%5Cbeta%5E%7BO%5Cprime%7Dx_i%5EO%2B%5Cepsilon_i%5EO%0A%5Cend%7Barray%7D%0A "
\begin{array}{c}
y_i^{S*} = \beta^{S\prime}x_i^S+\epsilon_i^S\\
y_i^{O*} = \beta^{O\prime}x_i^O+\epsilon_i^O
\end{array}
")

where
![y\_i^{S\*}](https://latex.codecogs.com/png.latex?y_i%5E%7BS%2A%7D "y_i^{S*}")
is a latent variable for the sample selection process, and
![y\_i^{O\*}](https://latex.codecogs.com/png.latex?y_i%5E%7BO%2A%7D "y_i^{O*}")
is the latent outcome. Vectors
![x\_i^S](https://latex.codecogs.com/png.latex?x_i%5ES "x_i^S") and
![x\_i^O](https://latex.codecogs.com/png.latex?x_i%5EO "x_i^O") are
explanatory variables (with the possibility that
![x\_i^S = x\_i^S](https://latex.codecogs.com/png.latex?x_i%5ES%20%3D%20x_i%5ES "x_i^S = x_i^S")).
Both equations include random terms (i.e.,
![\\epsilon\_i^S](https://latex.codecogs.com/png.latex?%5Cepsilon_i%5ES "\epsilon_i^S")
and
![\\epsilon\_i^O](https://latex.codecogs.com/png.latex?%5Cepsilon_i%5EO "\epsilon_i^O")).
The first equation is designed to model the *probability* of sampling,
and the second equation the outcome of interest (say
![R\_0](https://latex.codecogs.com/png.latex?R_0 "R_0")). The random
terms are jointly distributed and correlated with parameter
![\\rho](https://latex.codecogs.com/png.latex?%5Crho "\rho").

What the analyst observes is the following:

![
y\_i^S =
\\begin{cases}
0 & \\text{if } y\_i^{S\*} &lt; 0\\\\
1 & \\text{otherwise}
\\end{cases}
](https://latex.codecogs.com/png.latex?%0Ay_i%5ES%20%3D%0A%5Cbegin%7Bcases%7D%0A0%20%26%20%5Ctext%7Bif%20%7D%20y_i%5E%7BS%2A%7D%20%3C%200%5C%5C%0A1%20%26%20%5Ctext%7Botherwise%7D%0A%5Cend%7Bcases%7D%0A "
y_i^S =
\begin{cases}
0 & \text{if } y_i^{S*} < 0\\
1 & \text{otherwise}
\end{cases}
")

and:

![
y\_i^O =
\\begin{cases}
0 & \\text{if } y\_i^{S} = 0\\\\
y\_i^{O\*} & \\text{otherwise}
\\end{cases}
](https://latex.codecogs.com/png.latex?%0Ay_i%5EO%20%3D%0A%5Cbegin%7Bcases%7D%0A0%20%26%20%5Ctext%7Bif%20%7D%20y_i%5E%7BS%7D%20%3D%200%5C%5C%0Ay_i%5E%7BO%2A%7D%20%26%20%5Ctext%7Botherwise%7D%0A%5Cend%7Bcases%7D%0A "
y_i^O =
\begin{cases}
0 & \text{if } y_i^{S} = 0\\
y_i^{O*} & \text{otherwise}
\end{cases}
")

In other words, the outcome of interest is observed *only* for certain
cases
(![y\_i^S=1](https://latex.codecogs.com/png.latex?y_i%5ES%3D1 "y_i^S=1"),
i.e., for sampled observations). The probability of sampling depends on
![x\_i^S](https://latex.codecogs.com/png.latex?x_i%5ES "x_i^S"). For the
cases observed, the outcome
![y\_i^O](https://latex.codecogs.com/png.latex?y_i%5EO "y_i^O") depends
on ![x\_i^O](https://latex.codecogs.com/png.latex?x_i%5EO "x_i^O").

A sample selection model is estimated using the same selection of
variables as SWN Model 3. This is Sample Selection Model 1 in Table .
The first thing to notice about this model is that the sample selection
process and the outcome are correlated
(![\\rho\\ne0](https://latex.codecogs.com/png.latex?%5Crho%5Cne0 "\rho\ne0")
with 5% of confidence). The selection equation indicates that the
probability of a county to be in the sample increases with population
density (but at a decreasing rate due to the log-transformation), when
travel by private modes is more prevalent, and as median household
income in the county is higher. This is in line with the impression made
by Figure that counties with reliable values of
![R\_0](https://latex.codecogs.com/png.latex?R_0 "R_0") tended to be
those with larger urban centers. Once that the selection probabilities
are accounted for in the model, several things happen with the outcomes
model. First, the coefficient for population density is still positive,
but the magnitude changes: in effect, it appears that the effect of
density is more pronounced than what SWN Model 3 indicated. The
coefficient for percent of private transportation changes signs. And the
coefficient for median household income is now significant.

The second model in Table (Selection Model 2) changes the way the
variables are entered into the model. The log-transformation of density
in SWN and Selection Model 1 assumes that the association between
density and ![R\_0](https://latex.codecogs.com/png.latex?R_0 "R_0") is
monotonically increasing (if the sign of the coefficient is positive) or
decreasing (if the sign of the coefficient is negative). There are some
indications that the relationship may actually not be monotonical. For
example, Paez et al. (2020) found a positive (if non-significant)
relationship between density and incidence of COVID-19 in the provinces
of Spain at the beginning of the pandemic. This changed to a negative
(and significant) relationship during the lockdown. In the case of the
US, Fielding-Miller et al. (2020) found that the association between
COVID-19 deaths and population density was positive in rural counties,
but negative in urban counties. A variable transformation that allows
for non-monotonic changes in the relationship is the square of the
density.

As seen in the table, Selection Model 2 replaces the log-transformation
of population density with a quadratic expansion. The results of this
analysis indicate that with this variable transformation, the selection
and outcome processes are still correlated
(![\\rho\\ne0](https://latex.codecogs.com/png.latex?%5Crho%5Cne0 "\rho\ne0")
with 5% of confidence). But a few other interesting things emerge. When
we examine the outcomes model, we see that the quadratic expansion has a
positive coefficient for the first order term, but a negative
coefficient for the second order term. This indicates that
![R\_0](https://latex.codecogs.com/png.latex?R_0 "R_0") initially tends
to increase as density grows, but only up to a point, after which the
negative second term (which grows more rapidly due to the square),
becomes increasingly dominant. Secondly, the sign of the coefficient for
travel by private transportation becomes negative again. This, of
course, makes more sense than the positive sign of Selection Model 1: if
people tend to travel in private transportation, the potential for
contact should be lower instead of higher. And finally median household
income is no longer significant, similar to SWN Model 3.

<table class="table" style="margin-left: auto; margin-right: auto;">
<caption>
Estimation results of sample selection models
</caption>
<thead>
<tr>
<th style="empty-cells: hide;border-bottom:hidden;" colspan="1">
</th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2">

<div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">

Selection Model 1

</div>

</th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2">

<div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">

Selection Model 2

</div>

</th>
</tr>
<tr>
<th style="text-align:left;">
Variable
</th>
<th style="text-align:center;">
![\\beta](https://latex.codecogs.com/png.latex?%5Cbeta "\beta")
</th>
<th style="text-align:center;">
95% CI
</th>
<th style="text-align:center;">
![\\beta](https://latex.codecogs.com/png.latex?%5Cbeta "\beta")
</th>
<th style="text-align:center;">
95% CI
</th>
</tr>
</thead>
<tbody>
<tr grouplength="6">
<td colspan="5" style="border-bottom: 1px solid;">
<strong>Sample Selection Model</strong>
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept
</td>
<td style="text-align:center;">
-2.237
</td>
<td style="text-align:center;">
\[-3.109, -1.365\]
</td>
<td style="text-align:center;">
-7.339
</td>
<td style="text-align:center;">
\[-8.381, -6.297\]
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Log of population density
</td>
<td style="text-align:center;">
0.385
</td>
<td style="text-align:center;">
\[0.352, 0.418\]
</td>
<td style="text-align:center;">
</td>
<td style="text-align:center;">
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Density (1,000 per sq.km)
</td>
<td style="text-align:center;">
</td>
<td style="text-align:center;">
</td>
<td style="text-align:center;">
2.484
</td>
<td style="text-align:center;">
\[2.13, 2.838\]
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Density squared
</td>
<td style="text-align:center;">
</td>
<td style="text-align:center;">
</td>
<td style="text-align:center;">
-0.387
</td>
<td style="text-align:center;">
\[-0.473, -0.3\]
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Percent of private transportation
</td>
<td style="text-align:center;">
0.025
</td>
<td style="text-align:center;">
\[0.016, 0.034\]
</td>
<td style="text-align:center;">
0.057
</td>
<td style="text-align:center;">
\[0.046, 0.067\]
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Median household income (10,000)
</td>
<td style="text-align:center;">
0.202
</td>
<td style="text-align:center;">
\[0.168, 0.235\]
</td>
<td style="text-align:center;">
0.32
</td>
<td style="text-align:center;">
\[0.283, 0.357\]
</td>
</tr>
<tr grouplength="6">
<td colspan="5" style="border-bottom: 1px solid;">
<strong>Outcome Model</strong>
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept
</td>
<td style="text-align:center;">
0.605
</td>
<td style="text-align:center;">
\[-0.257, 1.466\]
</td>
<td style="text-align:center;">
2.784
</td>
<td style="text-align:center;">
\[1.652, 3.915\]
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Log of population density
</td>
<td style="text-align:center;">
0.39
</td>
<td style="text-align:center;">
\[0.354, 0.426\]
</td>
<td style="text-align:center;">
</td>
<td style="text-align:center;">
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Density (1,000 per sq.km)
</td>
<td style="text-align:center;">
</td>
<td style="text-align:center;">
</td>
<td style="text-align:center;">
0.758
</td>
<td style="text-align:center;">
\[0.509, 1.008\]
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Density squared
</td>
<td style="text-align:center;">
</td>
<td style="text-align:center;">
</td>
<td style="text-align:center;">
-0.132
</td>
<td style="text-align:center;">
\[-0.187, -0.077\]
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Percent of private transportation
</td>
<td style="text-align:center;">
0.01
</td>
<td style="text-align:center;">
\[0.001, 0.018\]
</td>
<td style="text-align:center;">
-0.011
</td>
<td style="text-align:center;">
\[-0.021, -0.001\]
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Median household income ($10,000)
</td>
<td style="text-align:center;">
0.126
</td>
<td style="text-align:center;">
\[0.094, 0.159\]
</td>
<td style="text-align:center;">
0.002
</td>
<td style="text-align:center;">
\[-0.033, 0.037\]
</td>
</tr>
<tr>
<td style="text-align:left;">
![\\sigma](https://latex.codecogs.com/png.latex?%5Csigma "\sigma")
</td>
<td style="text-align:center;">
0.954
</td>
<td style="text-align:center;">
\[0.904, 1.003\]
</td>
<td style="text-align:center;">
0.684
</td>
<td style="text-align:center;">
\[0.652, 0.716\]
</td>
</tr>
<tr>
<td style="text-align:left;">
![\\rho](https://latex.codecogs.com/png.latex?%5Crho "\rho")
</td>
<td style="text-align:center;">
0.971
</td>
<td style="text-align:center;">
\[0.961, 0.98\]
</td>
<td style="text-align:center;">
-0.199
</td>
<td style="text-align:center;">
\[-0.377, -0.022\]
</td>
</tr>
</tbody>
</table>
<!--
If x is the density:
$$
\frac{dR}{dx} = 0.758 - 2 * 0.132 * density 
$$

Then, the maximum of this curve is when the density is:
$$
density = \frac{0.758}{2 * 0.132}
$$
-->

# Proceed with caution: spatial effects ahead

The results of the selection models, in particular Selection Model 2,
make us reassess the original conclusion that density has a positive
association with the basic reproductive number of COVID-19. A spatial
analyst might still wonder about spatial residual autocorrelation. A
challenge here is that spatial models tend to be technically more
demanding, and although spatial models for qualitative variables exist,
a spatial implementation of the sample selection model does not appear
to exist. It might be argued that a reproducible research project can
also allow a researcher to be more adventurous with their modeling
decisions: since data and code are shared, other researchers can
promptly and with relative ease poke the methods and see if they appear
to be sound.

In the present case, it appears that an application of spatial filtering
(see Getis and Griffith 2002; Antonio Paez 2019; Griffith 2004) can
help. Spatial filtering provides an elegant solution to regression
problems that may have difficulties handling the spatial structures of
spatial statistical and econometric models (Griffith 2000). A key issue
in the present example is the fact that there are numerous missing
observations, which prevents the calculation of autocorrelation
statistics, let alone the estimation of models with spatial components.

The following is an unorthodox, but potentially effective use of filters
in a sample selection model:

1.  Estimate a sample selection model and retrieve the residuals of the
    outcome. This will be a vector with missing values for locations
    that were not sampled.

2.  Fit a spatial filter to the residuals. This is done by regressing
    the estimated residuals of the *observed* data on the corresponding
    values of the Moran eigenvectors.

3.  The resulting filter will correlate highly with the known residuals,
    and will provide information in non-sampled locations that is
    consistent with the spatial pattern of the known residuals.

4.  Test the filter for spatial autocorrelation:

    4.1 If significant spatial autocorrelation is detected, this would
    be indicative of residual spatial pattern. Introduce the filter as a
    covariate in the outcome model of the sample selection model and
    return to step 1.

    4.2 If no significant spatial autocorrelation is detected, this
    would be indicative of random residual pattern. Stop.

This procedure is implemented using a stopping criterion whereby the
search for the filter only stops when the p-value of Moran’s Coefficient
of the filter fitted to the residuals is greater than 0.25, which was
chosen as a sufficiently conservative value for testing for
autocorrelation. The correlation of the known residuals with the
corresponding elements of the filter is consistently high (the
correlation coefficient typically is greater than 0.9). The results of
implementing this procedure appear in Table as Selection Model 3. The
results are consistent with Selection Model 2, with two intriguing
differences: 1) the variance of Sample Model 3 is smaller; and 2) the
sample and outcome processes are no longer correlated (the confidence
interval of ![\\rho](https://latex.codecogs.com/png.latex?%5Crho "\rho")
includes zero). It appears that by capturing the spatial pattern of the
residuals, which is likely strongly determined by the non-random
sampling framework, the outcome model is not only substantially more
precise, but also appears to be independent from the selection process.

<table class="table" style="font-size: 8px; margin-left: auto; margin-right: auto;">
<caption style="font-size: initial !important;">
Estimation results of sample selection model with spatial filter
</caption>
<thead>
<tr>
<th style="empty-cells: hide;border-bottom:hidden;" colspan="1">
</th>
<th style="border-bottom:hidden;padding-bottom:0; padding-left:3px;padding-right:3px;text-align: center; " colspan="2">

<div style="border-bottom: 1px solid #ddd; padding-bottom: 5px; ">

Selection Model 3

</div>

</th>
</tr>
<tr>
<th style="text-align:left;">
Variable
</th>
<th style="text-align:center;">
![\\beta](https://latex.codecogs.com/png.latex?%5Cbeta "\beta")
</th>
<th style="text-align:center;">
95% CI
</th>
</tr>
</thead>
<tbody>
<tr grouplength="5">
<td colspan="3" style="border-bottom: 1px solid;">
<strong>Sample Selection Model</strong>
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept
</td>
<td style="text-align:center;">
-7.249
</td>
<td style="text-align:center;">
\[-8.285, -6.214\]
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Density (1,000 per sq.km)
</td>
<td style="text-align:center;">
2.424
</td>
<td style="text-align:center;">
\[2.074, 2.774\]
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Density squared
</td>
<td style="text-align:center;">
-0.373
</td>
<td style="text-align:center;">
\[-0.459, -0.288\]
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Percent of private transportation
</td>
<td style="text-align:center;">
0.056
</td>
<td style="text-align:center;">
\[0.045, 0.066\]
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Median household income (10,000)
</td>
<td style="text-align:center;">
0.319
</td>
<td style="text-align:center;">
\[0.282, 0.356\]
</td>
</tr>
<tr grouplength="6">
<td colspan="3" style="border-bottom: 1px solid;">
<strong>Outcome Model</strong>
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Intercept
</td>
<td style="text-align:center;">
2.290
</td>
<td style="text-align:center;">
\[2.026, 2.553\]
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Density (1,000 per sq.km)
</td>
<td style="text-align:center;">
0.843
</td>
<td style="text-align:center;">
\[0.786, 0.9\]
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Density squared
</td>
<td style="text-align:center;">
-0.142
</td>
<td style="text-align:center;">
\[-0.153, -0.131\]
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Percent of private transportation
</td>
<td style="text-align:center;">
-0.010
</td>
<td style="text-align:center;">
\[-0.012, -0.008\]
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Median household income ($10,000)
</td>
<td style="text-align:center;">
0.011
</td>
<td style="text-align:center;">
\[0.003, 0.02\]
</td>
</tr>
<tr>
<td style="text-align:left;padding-left: 2em;" indentlevel="1">
Spatial filter
</td>
<td style="text-align:center;">
1.001
</td>
<td style="text-align:center;">
\[0.992, 1.011\]
</td>
</tr>
<tr>
<td style="text-align:left;">
![\\sigma](https://latex.codecogs.com/png.latex?%5Csigma "\sigma")
</td>
<td style="text-align:center;">
0.120
</td>
<td style="text-align:center;">
\[0.107, 0.133\]
</td>
</tr>
<tr>
<td style="text-align:left;">
![\\rho](https://latex.codecogs.com/png.latex?%5Crho "\rho")
</td>
<td style="text-align:center;">
0.495
</td>
<td style="text-align:center;">
\[0.218, 0.772\]
</td>
</tr>
</tbody>
</table>

Clearly, the various models display some intriguing differences; but how
relevant are said differences from a more substantive standpoint? Figure
shows the relationship between density and
![R\_0](https://latex.codecogs.com/png.latex?R_0 "R_0") implied by SWN
Model 3, Selection Model 2, and Selection Model 3. The left panel of the
figure shows the non-linear but monotonic relationship implied by SWN
Model 1. The conclusion is that at higher densities,
![R\_0](https://latex.codecogs.com/png.latex?R_0 "R_0") is *always*
higher. The two panels on the right, in contrast, shows that Selection
Model 2 and Selection Model 3 coincide that
![R\_0](https://latex.codecogs.com/png.latex?R_0 "R_0") tends to
increase as density grows. This continues until a density of
approximately 2.9 (1,000 people per sq.km). At higher densities than
that the relationship between density and
![R\_0](https://latex.codecogs.com/png.latex?R_0 "R_0") begins to
weaken, and the relationship becomes negative at densities higher than
approximately 5.7 (1,000 people per sq.km).

To put this into context, other things being equal, the effect of
density in a county like Charlottesville in Virginia (density \~1,639
people per sq.km) is roughly the same as that in a county like
Philadelphia (density \~4,127 people per sq.km). In contrast, the effect
of density on ![R\_0](https://latex.codecogs.com/png.latex?R_0 "R_0") in
a county like Arlington in Virginia (density \~3,093 people per sq.km)
is *stronger* than either of the previous two examples. Lastly, the
density of counties like San Francisco in California, or Queens and
Bronx in NY, which are among the densest in the US, contributes even
less to ![R\_0](https://latex.codecogs.com/png.latex?R_0 "R_0") than
even the most rural counties in the country.

<div class="figure">

<img src="README_files/figure-gfm/comparison-results-1.png" alt="\label{fig:comparison-results}Effect of density according to SWN Model 3 and Sample Selection Model 2." width="1\linewidth" />
<p class="caption">
Effect of density according to SWN Model 3 and Sample Selection Model 2.
</p>

</div>

<!--

## Experiments with tobit and spatially autoregressive tobit

## Fit tobit version of models



## Spatially autoregressive tobit

Fit spatially autoregressive tobit:


-->

# Discussion

It is worth at this point to recall Cressie’s dictum about modelling:
“\[w\]hat is one person’s mean structure could be another person’s
correlation structure” (Cressie 1989, 201). There are almost always
multiple ways to approach a modelling situation, as lively illustrated
by a recent paper that reports the results of a crowdsourced modelling
experiment (Schweinsberg et al. 2021). In the present case, we would
argue that spatial sampling is an important aspect of the modeling
process. Importantly, by adopting high reproducibility standards, SWN
made a valuable contribution to the collective enterprise of seeking
knowledge. Their effort, and subsequent efforts to validate and expand
on their work, can potentially contribute to provide clarity to ongoing
conversations about the relevance of density and the spread of COVID-19.

In particular, it is noteworthy that a sample selection model with a
different variable transformation does not lend support to the thesis
that higher density is *always* associated with a greater risk of spread
of the virus \[in Wong and Li’s words, “‘Density is destiny’ is probably
an overstatement”; (2020)\]. At the same time, the results presented
here also stand in contrast to the findings of Hamidi et al., who found
that higher density was either not significantly associated with the
rate of the virus in a cross-sectional study (Hamidi, Sabouri, and Ewing
2020), or was negatively associated with it in a longitudinal setting
\[Hamidi, Ewing, and Sabouri (2020). In this sense, the conclusion that
density does not aggravate the pandemic may have been somewhat
premature; instead, reanalysis of the data of SWN suggests that
Fielding-Miller et al. (2020) might be onto something with respect to
the difference between rural and urban counties. More generally, there
is no doubt that in population-level studies density is indicative of
proximity, but it also potentially is a proxy for adaptive behavior. And
it is possible that the determining factor during COVID-19, at least in
the US, has been variations in perceptions of the risks associated with
contagion (Chauhan et al. 2021), and subsequent compensations in
behavior in more and less dense regions.

# Conclusion

The tension between the need to publish research potentially useful in
dealing with a global pandemic, and a potential “carnage of substandard
research” (Bramstedt 2020), highlights the importance of efforts to
maintain the quality of scientific outputs during COVID-19. An important
part of quality control is the ability of independent researchers to
verify and examine the results of materials published in the literature.
As previous research illustrates, reproducibility in scientific research
remains an important but elusive goal (e.g., Iqbal et al. 2016; Stodden,
Seiler, and Ma 2018; Sumner et al. 2020; Gustot 2020). This idea is
reinforced by the review conducted for this paper in the context of
research about population density and the spread of COVID-19.

Taking one recent example from the literature \[Sy et al., Sy, White,
and Nichols (2021); SWN\], the present paper illustrates the importance
of good reproducibility practices. Sharing data and code can catalyze
research, by allowing independent verification of findings, as well as
additional research. After verifying the results of SWN, experiments
with sample selection models and variations in the definition of model
inputs, lead to an important reappraisal of the conclusion that high
density is associated with greater spread of the virus. Instead, the
possibility of a non-monotonical relationship between population density
and contagion is raised. I do not claim that the analysis presented here
is the last word on the topic of density and the spread of COVID-19, and
there is always the possibility that someone else will be better
equipped to analyze these data with greater competence. By opening up
the analysis, documenting the way data were pre-processed, and by
sharing analysis ready data, my hope would be that others will be able
to discover the limitations of my own analysis and improve on it, as
appropriate.

More generally, my hope is that the research of Sy et al. (2021), the
present paper, and similar reproducible publications, will continue to
encourage others to adopt higher reproducibility standards in their
research.

# Acknowledgments

The analysis reported in this paper was conducted in the `R` computing
statistical language (R Core Team 2021). The source document is an
Rmarkdown document (Xie, Allaire, and Grolemund 2018; Xie, Dervieux, and
Riederer 2020) processed using `knitr` (Xie 2015, 2014). The following
packages were used in the analysis, and I wish to acknowledge their
creators for their generous efforts: `adespatial` (Dray et al. 2021),
`censReg` (Henningsen 2020), `dplyr` (Wickham et al. 2021), `forcats`
(Wickham 2021a), `ggplot2` (Wickham 2016), `gmm` (Chaussé 2010),
`kableExtra` (Zhu 2021), `Matrix` (Bates and Maechler 2021), `maxLik`
(Henningsen and Toomet 2011), `miscTools` (Henningsen and Toomet 2019),
`mvtnorm` (Genz and Bretz 2009), `nlme` (Pinheiro, Bates, and R-core
2021), `patchwork` (Pedersen 2020), `purrr` (Henry and Wickham 2020),
`readr` (Wickham and Hester 2021), `sampleSelection` (Toomet and
Henningsen 2008), `sandwich` (Zeileis, Köll, and Graham 2020; Zeileis
2004, 2006), `scico` (Pedersen and Crameri 2020), `sf` (E. Pebesma
2018), `sp` (E. J. Pebesma and Bivand 2005; R. S. Bivand, Pebesma, and
Gomez-Rubio 2013a), `spatialprobit` (Wilhelm and de Matos 2015),
`spData` (R. Bivand, Nowosad, and Lovelace 2021), `spdep` (R. Bivand and
Wong 2018; R. S. Bivand, Pebesma, and Gomez-Rubio 2013b), `stringr`
\[R-stringr\], `tibble` (Müller and Wickham 2021), `tidycensus` (Walker
and Herman 2021), `tidyr` (Wickham 2021b), `tidyverse` (Wickham et al.
2019), `tmvtnorm` (Manjunath B G &lt;bgmanjunath@gmail.com&gt; 2015),
`units` (E. Pebesma, Mailund, and Hiebert 2016). This research was not
supported by Canada’s Research Councils.

# References

<div id="refs" class="references csl-bib-body hanging-indent">

<div id="ref-Ahmad2020association" class="csl-entry">

Ahmad, Khansa, Sebhat Erqou, Nishant Shah, Umair Nazir, Alan R.
Morrison, Gaurav Choudhary, and Wen-Chih Wu. 2020. “Association of Poor
Housing Conditions with COVID-19 Incidence and Mortality Across US
Counties.” Journal Article. *PLOS ONE* 15 (11): e0241327.
<https://doi.org/10.1371/journal.pone.0241327>.

</div>

<div id="ref-Amadu2021assessing" class="csl-entry">

Amadu, Iddrisu, Bright Opoku Ahinkorah, Abdul-Rahaman Afitiri,
Abdul-Aziz Seidu, Edward Kwabena Ameyaw, John Elvis Hagan, Eric Duku,
and Simon Appah Aram. 2021. “Assessing Sub-Regional-Specific Strengths
of Healthcare Systems Associated with COVID-19 Prevalence, Deaths and
Recoveries in Africa.” Journal Article. *PLOS ONE* 16 (3): e0247274.
<https://doi.org/10.1371/journal.pone.0247274>.

</div>

<div id="ref-Anazco2021publication" class="csl-entry">

Añazco, Diego, Bryan Nicolalde, Isabel Espinosa, Jose Camacho, Mariam
Mushtaq, Jimena Gimenez, and Enrique Teran. 2021. “Publication Rate and
Citation Counts for Preprints Released During the COVID-19 Pandemic: The
Good, the Bad and the Ugly.” Journal Article. *PeerJ* 9: e10927.
<https://doi.org/10.7717/peerj.10927>.

</div>

<div id="ref-Arribas2021open" class="csl-entry">

Arribas-Bel, Daniel, Mark Green, Francisco Rowe, and Alex Singleton.
2021. “Open Data Products: A Framework for Creating Valuable
Analysis-Ready Data.” Journal Article. *Journal of Geographical
Systems*.

</div>

<div id="ref-Basu2017ten" class="csl-entry">

Basu, Sanjay, Megan A. Carney, and Nora J. Kenworthy. 2017. “Ten Years
After the Financial Crisis: The Long Reach of Austerity and Its Global
Impacts on Health.” Journal Article. *Social Science & Medicine* 187:
203–7. <https://doi.org/10.1016/j.socscimed.2017.06.026>.

</div>

<div id="ref-R-Matrix" class="csl-entry">

Bates, Douglas, and Martin Maechler. 2021. *Matrix: Sparse and Dense
Matrix Classes and Methods*. <http://Matrix.R-forge.R-project.org/>.

</div>

<div id="ref-Bhadra2021impact" class="csl-entry">

Bhadra, Arunava, Arindam Mukherjee, and Kabita Sarkar. 2021. “Impact of
Population Density on Covid-19 Infected and Mortality Rate in India.”
Journal Article. *Modeling Earth Systems and Environment* 7 (1): 623–29.
<https://doi.org/10.1007/s40808-020-00984-7>.

</div>

<div id="ref-Bivand2020progress" class="csl-entry">

Bivand, Roger S. 2020. “Progress in the r Ecosystem for Representing and
Handling Spatial Data.” Journal Article. *Journal of Geographical
Systems*. <https://doi.org/10.1007/s10109-020-00336-0>.

</div>

<div id="ref-sp2013" class="csl-entry">

Bivand, Roger S., Edzer Pebesma, and Virgilio Gomez-Rubio. 2013a.
*Applied Spatial Data Analysis with R, Second Edition*. Springer, NY.
<https://asdar-book.org/>.

</div>

<div id="ref-spdep2013" class="csl-entry">

———. 2013b. *Applied Spatial Data Analysis with R, Second Edition*.
Springer, NY. <https://asdar-book.org/>.

</div>

<div id="ref-R-spData" class="csl-entry">

Bivand, Roger, Jakub Nowosad, and Robin Lovelace. 2021. *spData:
Datasets for Spatial Analysis*. <https://nowosad.github.io/spData/>.

</div>

<div id="ref-spdep2018" class="csl-entry">

Bivand, Roger, and David W. S. Wong. 2018. “Comparing Implementations of
Global and Local Indicators of Spatial Association.” *TEST* 27 (3):
716–48. <https://doi.org/10.1007/s11749-018-0599-x>.

</div>

<div id="ref-Bramstedt2020carnage" class="csl-entry">

Bramstedt, Katrina A. 2020. “The Carnage of Substandard Research During
the COVID-19 Pandemic: A Call for Quality.” Journal Article. *Journal of
Medical Ethics* 46 (12): 803–7.
<https://doi.org/10.1136/medethics-2020-106494>.

</div>

<div id="ref-Brandtner2021creatures" class="csl-entry">

Brandtner, Christof, Luís M. A. Bettencourt, Marc G. Berman, and Andrew
J. Stier. 2021. “Creatures of the State? Metropolitan Counties
Compensated for State Inaction in Initial u.s. Response to COVID-19
Pandemic.” Journal Article. *PLOS ONE* 16 (2): e0246249.
<https://doi.org/10.1371/journal.pone.0246249>.

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

<div id="ref-Chauhan2021covid" class="csl-entry">

Chauhan, Rishabh Singh, Denise Capasso da Silva, Deborah Salon, Ali
Shamshiripour, Ehsan Rahimi, Uttara Sutradhar, Sara Khoeini, Abolfazl
(Kouros) Mohammadian, Sybil Derrible, and Ram Pendyala. 2021. “COVID-19
Related Attitudes and Risk Perceptions Across Urban, Rural, and Suburban
Areas in the United States.” *Findings*, June.
<https://doi.org/10.32866/001c.23714>.

</div>

<div id="ref-gmm2010" class="csl-entry">

Chaussé, Pierre. 2010. “Computing Generalized Method of Moments and
Generalized Empirical Likelihood with R.” *Journal of Statistical
Software* 34 (11): 1–35. <https://www.jstatsoft.org/v34/i11/>.

</div>

<div id="ref-Cressie1989geostatistics" class="csl-entry">

Cressie, Noel. 1989. “Geostatistics.” Journal Article. *The American
Statistician* 43 (4): 197. <https://doi.org/10.2307/2685361>.

</div>

<div id="ref-Cruz2020exploring" class="csl-entry">

Cruz, Christian Joy Pattawi, Rachel Ganly, Zilin Li, and Stuart
Gietel-Basten. 2020. “Exploring the Young Demographic Profile of
COVID-19 Cases in Hong Kong: Evidence from Migration and Travel History
Data.” Journal Article. *PLOS ONE* 15 (6): e0235306.
<https://doi.org/10.1371/journal.pone.0235306>.

</div>

<div id="ref-R-adespatial" class="csl-entry">

Dray, Stéphane, David Bauman, Guillaume Blanchet, Daniel Borcard, Sylvie
Clappe, Guillaume Guenard, Thibaut Jombart, et al. 2021. *Adespatial:
Multivariate Multiscale Spatial Analysis*.
<https://github.com/sdray/adespatial>.

</div>

<div id="ref-Farber2011running" class="csl-entry">

Farber, Steven, and Antonio Páez. 2011. “Running to Stay in Place: The
Time-Use Implications of Automobile Oriented Land-Use and Travel.”
Journal Article. *Journal of Transport Geography* 19 (4): 782–93.
<https://doi.org/10.1016/j.jtrangeo.2010.09.008>.

</div>

<div id="ref-Feng2020spread" class="csl-entry">

Feng, Yongjiu, Qingmei Li, Xiaohua Tong, Rong Wang, Shuting Zhai, Chen
Gao, Zhenkun Lei, et al. 2020. “Spatiotemporal Spread Pattern of the
COVID-19 Cases in China.” Journal Article. *PLOS ONE* 15 (12): e0244351.
<https://doi.org/10.1371/journal.pone.0244351>.

</div>

<div id="ref-Feyman2020effectiveness" class="csl-entry">

Feyman, Yevgeniy, Jacob Bor, Julia Raifman, and Kevin N. Griffith. 2020.
“Effectiveness of COVID-19 Shelter-in-Place Orders Varied by State.”
Journal Article. *PLOS ONE* 15 (12): e0245008.
<https://doi.org/10.1371/journal.pone.0245008>.

</div>

<div id="ref-Fielding2020social" class="csl-entry">

Fielding-Miller, Rebecca K., Maria E. Sundaram, and Kimberly Brouwer.
2020. “Social Determinants of COVID-19 Mortality at the County Level.”
Journal Article. *PLOS ONE* 15 (10): e0240151.
<https://doi.org/10.1371/journal.pone.0240151>.

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

<div id="ref-mvtnorm2009" class="csl-entry">

Genz, Alan, and Frank Bretz. 2009. *Computation of Multivariate Normal
and t Probabilities*. Lecture Notes in Statistics. Heidelberg:
Springer-Verlag.

</div>

<div id="ref-Getis2002comparative" class="csl-entry">

Getis, A., and D. A. Griffith. 2002. “Comparative Spatial Filtering in
Regression Analysis.” Journal Article. *Geographical Analysis* 34 (2):
130–40.

</div>

<div id="ref-Gomez2021infekta" class="csl-entry">

Gomez, Jonatan, Jeisson Prieto, Elizabeth Leon, and Arles Rodríguez.
2021. “INFEKTA—an Agent-Based Model for Transmission of Infectious
Diseases: The COVID-19 Case in Bogotá, Colombia.” Journal Article. *PLOS
ONE* 16 (2): e0245787. <https://doi.org/10.1371/journal.pone.0245787>.

</div>

<div id="ref-Griffith2000linear" class="csl-entry">

Griffith, D. A. 2000. “A Linear Regression Solution to the Spatial
Autocorrelation Problem.” Journal Article. *Journal of Geographical
Systems* 2 (2): 141–56.

</div>

<div id="ref-Griffith2004spatial" class="csl-entry">

———. 2004. “A Spatial Filtering Specification for the Autologistic
Model.” Journal Article. *Environment and Planning A* 36 (10): 1791–811.
[ISI:000224552100007
C:/Papers/Environment and Planning A/Environment and Planning A (2004) 36 (10) 791-181.pdf](https://ISI:000224552100007
C:/Papers/Environment and Planning A/Environment and Planning A (2004) 36 (10) 791-181.pdf).

</div>

<div id="ref-Gustot2020quality" class="csl-entry">

Gustot, T. 2020. “Quality and Reproducibility During the COVID-19
Pandemic.” Journal Article. *JHEP Rep* 2 (4): 100141.
<https://doi.org/10.1016/j.jhepr.2020.100141>.

</div>

<div id="ref-Hamidi2020longitudinal" class="csl-entry">

Hamidi, Shima, Reid Ewing, and Sadegh Sabouri. 2020. “Longitudinal
Analyses of the Relationship Between Development Density and the
COVID-19 Morbidity and Mortality Rates: Early Evidence from 1,165
Metropolitan Counties in the United States.” Journal Article. *Health &
Place* 64: 102378. <https://doi.org/10.1016/j.healthplace.2020.102378>.

</div>

<div id="ref-Hamidi2020density" class="csl-entry">

Hamidi, Shima, Sadegh Sabouri, and Reid Ewing. 2020. “Does Density
Aggravate the COVID-19 Pandemic?” Journal Article. *Journal of the
American Planning Association* 86 (4): 495–509.
<https://doi.org/10.1080/01944363.2020.1777891>.

</div>

<div id="ref-Hamidi2021compact" class="csl-entry">

Hamidi, Shima, and Ahoura Zandiatashbar. 2021. “Compact Development and
Adherence to Stay-at-Home Order During the COVID-19 Pandemic: A
Longitudinal Investigation in the United States.” Journal Article.
*Landscape and Urban Planning* 205: 103952.
https://doi.org/<https://doi.org/10.1016/j.landurbplan.2020.103952>.

</div>

<div id="ref-Harris2021Changes" class="csl-entry">

Harris, M. Anne, and Michael Branion-Calles. 2021. “Changes in Commute
Mode Attributed to COVID-19 Risk in Canadian National Survey Data.”
*Findings*, February. <https://doi.org/10.32866/001c.19088>.

</div>

<div id="ref-R-censReg" class="csl-entry">

Henningsen, Arne. 2020. *censReg: Censored Regression (Tobit) Models*.
<http://www.sampleSelection.org>.

</div>

<div id="ref-maxLik2011" class="csl-entry">

Henningsen, Arne, and Ott Toomet. 2011. “maxLik: A Package for Maximum
Likelihood Estimation in R.” *Computational Statistics* 26 (3): 443–58.
<https://doi.org/10.1007/s00180-010-0217-1>.

</div>

<div id="ref-R-miscTools" class="csl-entry">

———. 2019. *miscTools: Miscellaneous Tools and Utilities*.
<http://www.micEcon.org>.

</div>

<div id="ref-R-purrr" class="csl-entry">

Henry, Lionel, and Hadley Wickham. 2020. *Purrr: Functional Programming
Tools*. <https://CRAN.R-project.org/package=purrr>.

</div>

<div id="ref-Herndon2014high" class="csl-entry">

Herndon, T., M. Ash, and R. Pollin. 2014. “Does High Public Debt
Consistently Stifle Economic Growth? A Critique of Reinhart and Rogoff.”
Journal Article. *Cambridge Journal of Economics* 38 (2): 257–79.
<https://doi.org/10.1093/cje/bet075>.

</div>

<div id="ref-Inbaraj2021seroprevalence" class="csl-entry">

Inbaraj, Leeberk Raja, Carolin Elizabeth George, and Sindhulina
Chandrasingh. 2021. “Seroprevalence of COVID-19 Infection in a Rural
District of South India: A Population-Based Seroepidemiological Study.”
Journal Article. *PLOS ONE* 16 (3): e0249247.
<https://doi.org/10.1371/journal.pone.0249247>.

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

<div id="ref-Jamal2020Changes" class="csl-entry">

Jamal, Shaila, and Antonio Paez. 2020. “Changes in Trip-Making Frequency
by Mode During COVID-19.” *Findings*, November.
<https://doi.org/10.32866/001c.17977>.

</div>

<div id="ref-Kadi2020population" class="csl-entry">

Kadi, Nadjat, and Mounia Khelfaoui. 2020. “Population Density, a Factor
in the Spread of COVID-19 in Algeria: Statistic Study.” Journal Article.
*Bulletin of the National Research Centre* 44 (1).
<https://doi.org/10.1186/s42269-020-00393-x>.

</div>

<div id="ref-Khavarian2021high" class="csl-entry">

Khavarian-Garmsir, Amir Reza, Ayyoob Sharifi, and Nabi Moradpour. 2021.
“Are High-Density Districts More Vulnerable to the COVID-19 Pandemic?”
Journal Article. *Sustainable Cities and Society* 70: 102911.
<https://doi.org/10.1016/j.scs.2021.102911>.

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

<div id="ref-Lee2020human" class="csl-entry">

Lee, Minha, Jun Zhao, Qianqian Sun, Yixuan Pan, Weiyi Zhou, Chenfeng
Xiong, and Lei Zhang. 2020. “Human Mobility Trends During the Early
Stage of the COVID-19 Pandemic in the United States.” Journal Article.
*PLOS ONE* 15 (11): e0241468.
<https://doi.org/10.1371/journal.pone.0241468>.

</div>

<div id="ref-Li2018effect" class="csl-entry">

Li, Ruiqi, Peter Richmond, and Bertrand M. Roehner. 2018. “Effect of
Population Density on Epidemics.” Journal Article. *Physica A:
Statistical Mechanics and Its Applications* 510: 713–24.
<https://doi.org/10.1016/j.physa.2018.07.025>.

</div>

<div id="ref-Maddala1983limited" class="csl-entry">

Maddala, G. S. 1983. *Limited-Dependent and Qualitative Variables in
Econometrics*. Book. Cambridge: Cambridge University Press.

</div>

<div id="ref-R-tmvtnorm" class="csl-entry">

Manjunath B G &lt;bgmanjunath@gmail.com&gt;, Stefan Wilhelm with
contributions from. 2015. *Tmvtnorm: Truncated Multivariate Normal and
Student t Distribution*. <http://www.r-project.org>.

</div>

<div id="ref-Micallef2020first" class="csl-entry">

Micallef, Sarah, Tonio V. Piscopo, Ramon Casha, Denise Borg, Chantal
Vella, Maria-Alessandra Zammit, Janice Borg, et al. 2020. “The First
Wave of COVID-19 in Malta; a National Cross-Sectional Study.” Journal
Article. *PLOS ONE* 15 (10): e0239389.
<https://doi.org/10.1371/journal.pone.0239389>.

</div>

<div id="ref-Molloy2020Tracing" class="csl-entry">

Molloy, Joseph, Christopher Tchervenkov, Beat Hintermann, and Kay W.
Axhausen. 2020. “Tracing the Sars-CoV-2 Impact: The First Month in
Switzerland.” *Findings*, May. <https://doi.org/10.32866/001c.12903>.

</div>

<div id="ref-Moore1970some" class="csl-entry">

Moore, E. G. 1970. “Some Spatial Properties of Urban Contact Fields.”
Journal Article. *Geographical Analysis* 2 (4): 376–86.

</div>

<div id="ref-Moore1970urban" class="csl-entry">

Moore, E. G., and L. A. Brown. 1970. “Urban Acquaintance Fields: An
Evaluation of a Spatial Model.” Journal Article. *Environment and
Planning* 2 (4): 443–54.
<http://www.envplan.com/abstract.cgi?id=a020443>.

</div>

<div id="ref-R-tibble" class="csl-entry">

Müller, Kirill, and Hadley Wickham. 2021. *Tibble: Simple Data Frames*.
<https://CRAN.R-project.org/package=tibble>.

</div>

<div id="ref-Noland1995perceived" class="csl-entry">

Noland, R. B. 1995. “PERCEIVED RISK AND MODAL CHOICE - RISK COMPENSATION
IN TRANSPORTATION SYSTEM.” Journal Article. *Accident Analysis and
Prevention* 27 (4): 503–21.
<https://doi.org/10.1016/0001-4575(94)00087-3>.

</div>

<div id="ref-Noland2021mobility" class="csl-entry">

Noland, Robert B. 2021. “Mobility and the Effective Reproduction Rate of
COVID-19.” Journal Article. *Journal of Transport & Health* 20: 101016.
https://doi.org/<https://doi.org/10.1016/j.jth.2021.101016>.

</div>

<div id="ref-Noury2021how" class="csl-entry">

Noury, Abdul, Abel François, Olivier Gergaud, and Alexandre Garel. 2021.
“How Does COVID-19 Affect Electoral Participation? Evidence from the
French Municipal Elections.” Journal Article. *PLOS ONE* 16 (2):
e0247026. <https://doi.org/10.1371/journal.pone.0247026>.

</div>

<div id="ref-Paez2020using" class="csl-entry">

Paez, A. 2020. “Using Google Community Mobility Reports to Investigate
the Incidence of COVID-19 in the United States.” Journal Article.
*Findings*. https://doi.org/<https://doi.org/10.32866/001c.12976>.

</div>

<div id="ref-Paez2019using" class="csl-entry">

Paez, Antonio. 2019. “Using Spatial Filters and Exploratory Data
Analysis to Enhance Regression Models of Spatial Data.” Journal Article.
*Geographical Analysis* 51 (3): 314–38.
<https://doi.org/10.1111/gean.12180>.

</div>

<div id="ref-Paez2020spatio" class="csl-entry">

Paez, Antonio, Fernando A. Lopez, Tatiane Menezes, Renata Cavalcanti,
and Maira Galdino da Rocha Pitta. 2020. “A Spatio-Temporal Analysis of
the Environmental Correlates of COVID-19 Incidence in Spain.” Journal
Article. *Geographical Analysis* n/a (n/a).
<https://doi.org/10.1111/gean.12241>.

</div>

<div id="ref-sf2018" class="csl-entry">

Pebesma, Edzer. 2018. “<span class="nocase">Simple Features for R:
Standardized Support for Spatial Vector Data</span>.” *The R Journal* 10
(1): 439–46. <https://doi.org/10.32614/RJ-2018-009>.

</div>

<div id="ref-sp2005" class="csl-entry">

Pebesma, Edzer J., and Roger S. Bivand. 2005. “Classes and Methods for
Spatial Data in R.” *R News* 5 (2): 9–13.
<https://CRAN.R-project.org/doc/Rnews/>.

</div>

<div id="ref-units2016" class="csl-entry">

Pebesma, Edzer, Thomas Mailund, and James Hiebert. 2016. “Measurement
Units in R.” *R Journal* 8 (2): 486–94.
<https://doi.org/10.32614/RJ-2016-061>.

</div>

<div id="ref-R-patchwork" class="csl-entry">

Pedersen, Thomas Lin. 2020. *Patchwork: The Composer of Plots*.
<https://CRAN.R-project.org/package=patchwork>.

</div>

<div id="ref-R-scico" class="csl-entry">

Pedersen, Thomas Lin, and Fabio Crameri. 2020. *Scico: Colour Palettes
Based on the Scientific Colour-Maps*.
<https://github.com/thomasp85/scico>.

</div>

<div id="ref-Pequeno2020air" class="csl-entry">

Pequeno, Pedro, Bruna Mendel, Clarissa Rosa, Mariane Bosholn, Jorge Luiz
Souza, Fabricio Baccaro, Reinaldo Barbosa, and William Magnusson. 2020.
“Air Transportation, Population Density and Temperature Predict the
Spread of COVID-19 in Brazil.” Journal Article. *PeerJ* 8: e9322.
<https://doi.org/10.7717/peerj.9322>.

</div>

<div id="ref-Phillips2011risk" class="csl-entry">

Phillips, R. O., A. Fyhri, and F. Sagberg. 2011. “Risk Compensation and
Bicycle Helmets.” Journal Article. *Risk Analysis* 31 (8): 1187–95.
<https://doi.org/10.1111/j.1539-6924.2011.01589.x>.

</div>

<div id="ref-R-nlme" class="csl-entry">

Pinheiro, José, Douglas Bates, and R-core. 2021. *Nlme: Linear and
Nonlinear Mixed Effects Models*.
<https://svn.r-project.org/R-packages/trunk/nlme/>.

</div>

<div id="ref-Praharaj2020Using" class="csl-entry">

Praharaj, Sarbeswar, David King, Christopher Pettit, and Elizabeth
Wentz. 2020. “Using Aggregated Mobility Data to Measure the Effect of
COVID-19 Policies on Mobility Changes in Sydney, London, Phoenix, and
Pune.” *Findings*, October. <https://doi.org/10.32866/001c.17590>.

</div>

<div id="ref-R-base" class="csl-entry">

R Core Team. 2021. *R: A Language and Environment for Statistical
Computing*. Vienna, Austria: R Foundation for Statistical Computing.
<https://www.R-project.org/>.

</div>

<div id="ref-Richens2000condoms" class="csl-entry">

Richens, J., J. Imrie, and A. Copas. 2000. “Condoms and Seat Belts: The
Parallels and the Lessons.” Journal Article. *Lancet* 355 (9201):
400–403. <https://doi.org/10.1016/s0140-6736(99)09109-6>.

</div>

<div id="ref-Rocklov2020high" class="csl-entry">

Rocklöv, Joacim, and Henrik Sjödin. 2020. “High Population Densities
Catalyse the Spread of COVID-19.” Journal Article. *Journal of Travel
Medicine* 27 (3). <https://doi.org/10.1093/jtm/taaa038>.

</div>

<div id="ref-Roy2020factors" class="csl-entry">

Roy, Satyaki, and Preetam Ghosh. 2020. “Factors Affecting COVID-19
Infected and Death Rates Inform Lockdown-Related Policymaking.” Journal
Article. *PLOS ONE* 15 (10): e0241165.
<https://doi.org/10.1371/journal.pone.0241165>.

</div>

<div id="ref-Schweinsberg2021same" class="csl-entry">

Schweinsberg, Martin, Michael Feldman, Nicola Staub, Olmo R. van den
Akker, Robbie C. M. van Aert, Marcel A. L. M. van Assen, Yang Liu, et
al. 2021. “Same Data, Different Conclusions: Radical Dispersion in
Empirical Results When Independent Analysts Operationalize and Test the
Same Hypothesis.” *Organizational Behavior and Human Decision Processes*
165: 228–49.
https://doi.org/<https://doi.org/10.1016/j.obhdp.2021.02.003>.

</div>

<div id="ref-Sharifi2020covid" class="csl-entry">

Sharifi, Ayyoob, and Amir Reza Khavarian-Garmsir. 2020. “The COVID-19
Pandemic: Impacts on Cities and Major Lessons for Urban Planning,
Design, and Management.” Journal Article. *Science of The Total
Environment* 749: 142391.
https://doi.org/<https://doi.org/10.1016/j.scitotenv.2020.142391>.

</div>

<div id="ref-Skorka2020macroecology" class="csl-entry">

Skórka, Piotr, Beata Grzywacz, Dawid Moroń, and Magdalena Lenda. 2020.
“The Macroecology of the COVID-19 Pandemic in the Anthropocene.” Journal
Article. *PLOS ONE* 15 (7): e0236856.
<https://doi.org/10.1371/journal.pone.0236856>.

</div>

<div id="ref-Souris2020covid" class="csl-entry">

Souris, Marc, and Jean-Paul Gonzalez. 2020. “COVID-19: Spatial Analysis
of Hospital Case-Fatality Rate in France.” Journal Article. *PLOS ONE*
15 (12): e0243606. <https://doi.org/10.1371/journal.pone.0243606>.

</div>

<div id="ref-Stephens2021impact" class="csl-entry">

Stephens, Kenton E., Pavel Chernyavskiy, and Danielle R. Bruns. 2021.
“Impact of Altitude on COVID-19 Infection and Death in the United
States: A Modeling and Observational Study.” Journal Article. *PLOS ONE*
16 (1): e0245055. <https://doi.org/10.1371/journal.pone.0245055>.

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

<div id="ref-Sun2020impacts" class="csl-entry">

Sun, Zhibin, Hui Zhang, Yifei Yang, Hua Wan, and Yixiang Wang. 2020.
“Impacts of Geographic Factors and Population Density on the COVID-19
Spreading Under the Lockdown Policies of China.” Journal Article.
*Science of The Total Environment* 746: 141347.
<https://doi.org/10.1016/j.scitotenv.2020.141347>.

</div>

<div id="ref-Sy2021population" class="csl-entry">

Sy, Karla Therese L., Laura F. White, and Brooke E. Nichols. 2021.
“Population Density and Basic Reproductive Number of COVID-19 Across
United States Counties.” Journal Article. *PLOS ONE* 16 (4): e0249271.
<https://doi.org/10.1371/journal.pone.0249271>.

</div>

<div id="ref-sampleSelection2008" class="csl-entry">

Toomet, Ott, and Arne Henningsen. 2008. “Sample Selection Models in R:
Package <span class="nocase">sampleSelection</span>.” *Journal of
Statistical Software* 27 (7). <https://www.jstatsoft.org/v27/i07/>.

</div>

<div id="ref-Viglione2020avalanche" class="csl-entry">

Viglione, Giuliana. 2020. “’Avalanche’of Spider-Paper Retractions Shakes
Behavioural-Ecology Community.” *Nature* 578 (7794): 199–201.

</div>

<div id="ref-Vlasschaert2020proliferation" class="csl-entry">

Vlasschaert, Caitlyn, Joel M. Topf, and Swapnil Hiremath. 2020.
“Proliferation of Papers and Preprints During the Coronavirus Disease
2019 Pandemic: Progress or Problems with Peer Review?” Journal Article.
*Advances in Chronic Kidney Disease* 27 (5): 418–26.
<https://doi.org/10.1053/j.ackd.2020.08.003>.

</div>

<div id="ref-R-tidycensus" class="csl-entry">

Walker, Kyle, and Matt Herman. 2021. *Tidycensus: Load US Census
Boundary and Attribute Data as Tidyverse and Sf-Ready Data Frames*.
<https://github.com/walkerke/tidycensus>.

</div>

<div id="ref-Wang2021transmission" class="csl-entry">

Wang, Fangxiong, Ziqian Tan, Zaihui Yu, Siqi Yao, and Changfeng Guo.
2021. “Transmission and Control Pressure Analysis of the COVID-19
Epidemic Situation Using Multisource Spatio-Temporal Big Data.” Journal
Article. *PLOS ONE* 16 (3): e0249145.
<https://doi.org/10.1371/journal.pone.0249145>.

</div>

<div id="ref-White2020state" class="csl-entry">

White, Easton R., and Laurent Hébert-Dufresne. 2020. “State-Level
Variation of Initial COVID-19 Dynamics in the United States.” Journal
Article. *PLOS ONE* 15 (10): e0240648.
<https://doi.org/10.1371/journal.pone.0240648>.

</div>

<div id="ref-ggplot22016" class="csl-entry">

Wickham, Hadley. 2016. *Ggplot2: Elegant Graphics for Data Analysis*.
Springer-Verlag New York. <https://ggplot2.tidyverse.org>.

</div>

<div id="ref-R-forcats" class="csl-entry">

———. 2021a. *Forcats: Tools for Working with Categorical Variables
(Factors)*. <https://CRAN.R-project.org/package=forcats>.

</div>

<div id="ref-R-tidyr" class="csl-entry">

———. 2021b. *Tidyr: Tidy Messy Data*.
<https://CRAN.R-project.org/package=tidyr>.

</div>

<div id="ref-tidyverse2019" class="csl-entry">

Wickham, Hadley, Mara Averick, Jennifer Bryan, Winston Chang, Lucy
D’Agostino McGowan, Romain François, Garrett Grolemund, et al. 2019.
“Welcome to the <span class="nocase">tidyverse</span>.” *Journal of Open
Source Software* 4 (43): 1686. <https://doi.org/10.21105/joss.01686>.

</div>

<div id="ref-R-dplyr" class="csl-entry">

Wickham, Hadley, Romain François, Lionel Henry, and Kirill Müller. 2021.
*Dplyr: A Grammar of Data Manipulation*.
<https://CRAN.R-project.org/package=dplyr>.

</div>

<div id="ref-R-readr" class="csl-entry">

Wickham, Hadley, and Jim Hester. 2021. *Readr: Read Rectangular Text
Data*. <https://CRAN.R-project.org/package=readr>.

</div>

<div id="ref-R-spatialprobit" class="csl-entry">

Wilhelm, Stefan, and Miguel Godinho de Matos. 2015. *Spatialprobit:
Spatial Probit Models*. <http://www.r-project.org>.

</div>

<div id="ref-Wong2020spreading" class="csl-entry">

Wong, David W. S., and Yun Li. 2020. “Spreading of COVID-19: Density
Matters.” Journal Article. *PLOS ONE* 15 (12): e0242398.
<https://doi.org/10.1371/journal.pone.0242398>.

</div>

<div id="ref-knitr2014" class="csl-entry">

Xie, Yihui. 2014. “Knitr: A Comprehensive Tool for Reproducible Research
in R.” In *Implementing Reproducible Computational Research*, edited by
Victoria Stodden, Friedrich Leisch, and Roger D. Peng. Chapman;
Hall/CRC. <http://www.crcpress.com/product/isbn/9781466561595>.

</div>

<div id="ref-knitr2015" class="csl-entry">

———. 2015. *Dynamic Documents with R and Knitr*. 2nd ed. Boca Raton,
Florida: Chapman; Hall/CRC. <https://yihui.org/knitr/>.

</div>

<div id="ref-rmarkdown2018" class="csl-entry">

Xie, Yihui, J. J. Allaire, and Garrett Grolemund. 2018. *R Markdown: The
Definitive Guide*. Boca Raton, Florida: Chapman; Hall/CRC.
<https://bookdown.org/yihui/rmarkdown>.

</div>

<div id="ref-rmarkdown2020" class="csl-entry">

Xie, Yihui, Christophe Dervieux, and Emily Riederer. 2020. *R Markdown
Cookbook*. Boca Raton, Florida: Chapman; Hall/CRC.
<https://bookdown.org/yihui/rmarkdown-cookbook>.

</div>

<div id="ref-sandwich2004" class="csl-entry">

Zeileis, Achim. 2004. “Econometric Computing with HC and HAC Covariance
Matrix Estimators.” *Journal of Statistical Software* 11 (10): 1–17.
<https://doi.org/10.18637/jss.v011.i10>.

</div>

<div id="ref-sandwich2006" class="csl-entry">

———. 2006. “Object-Oriented Computation of Sandwich Estimators.”
*Journal of Statistical Software* 16 (9): 1–16.
<https://doi.org/10.18637/jss.v016.i09>.

</div>

<div id="ref-sandwich2020" class="csl-entry">

Zeileis, Achim, Susanne Köll, and Nathaniel Graham. 2020. “Various
Versatile Variances: An Object-Oriented Implementation of Clustered
Covariances in R.” *Journal of Statistical Software* 95 (1): 1–36.
<https://doi.org/10.18637/jss.v095.i01>.

</div>

<div id="ref-R-kableExtra" class="csl-entry">

Zhu, Hao. 2021. *kableExtra: Construct Complex Table with Kable and Pipe
Syntax*. <https://CRAN.R-project.org/package=kableExtra>.

</div>

</div>

[1] Nobel Prize in Economics Paul Krugman noted that “Reinhart–Rogoff
may have had more immediate influence on public debate than any previous
paper in the history of economics”

[2] 

[3] Governor Kristi Noem of South Dakota, for example, claimed that
sparse population density allowed her state to face the pandemic down
without the need for strict policy interventions

[4] The present paper was desk rejected by three journals that had
previously published research on population density and the spread of
COVID-19; in one case, the paper was too opinionated for the journal, in
the other two cases, the paper was not a “good fit” despite dealing with
a nearly identical issue as papers previously published in said
journals.

[5] <https://github.com/nytimes/covid-19-data>
