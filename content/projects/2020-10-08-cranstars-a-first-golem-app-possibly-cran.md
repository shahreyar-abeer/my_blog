---
title: '{cranstars}: a first golem app & possibly, CRAN!'
author: Zauad Shahreer Abeer
date: '2020-10-08'
slug: cranstars-a-first-golem-app-possibly-cran
categories:
  - r
tags:
  - golem
  - cran
  - shiny
code: https://github.com/shahreyar-abeer/cranstars
app: https://shahreyar-abeer.shinyapps.io/cranstars
img: https://raw.githubusercontent.com/shahreyar-abeer/cranstars/master/inst/app/www/hex.png

summary: A simple shiny app made with the {golem} framework.
---

<!-- badges: start -->
<div style="text-align:center">

  <a href="https://www.tidyverse.org/lifecycle/#experimental">
    <img src="https://img.shields.io/badge/lifecycle-maturing-blue.svg" alt = "Lifecycle: maturing">
  </a>
  
  <a href="https://github.com/shahreyar-abeer/cranstars/actions">
    <img src="https://github.com/shahreyar-abeer/cranstars/workflows/R-CMD-check/badge.svg" alt = "R build status">
  </a>

  <a href="https://codecov.io/gh/shahreyar-abeer/cranstars">
    <img src="https://codecov.io/gh/shahreyar-abeer/cranstars/branch/master/graphs/badge.svg" alt = "codecov">
  </a>
</div>
<!-- badges: end -->  


<aside> <img src="https://raw.githubusercontent.com/shahreyar-abeer/cranstars/master/inst/app/www/hex.png" width="120px" alt="hex" align="right" /></aside>

`{cranstars}` is a simple shiny app that given a package name, shows CRAN downloads &amp; github star statistics.  


The implementation is pretty simple.   
The app downloads CRAN data using `cranlogs::cran_downloads`.  
And github stars data is downloaded using `gh::gh`.  
The app then shows some outputs based on the data.  
> It also shows the time, reminding us of our flaws.  

The app is developed with the <a class="a-body" target=_blank href="https://github.com/ThinkR-open/golem" style="font-weight:bold">{golem}</a> framework. The idea of developing shiny apps as
packages is quite outstanding. Although it takes some time and effort to get used to,
the effort is worth it.  

## Installation

You can play with `{cranstars}` on your machine by running the following: 

``` r
# Install
devtools::install_github("shahreyar-abeer/cranstars")

# Run
cranstars::run_app()
```  


There is also a deployed version of the app on 
<a class="a-body" target=_blank href = "https://shahreyar-abeer.shinyapps.io/cranstars" style="font-weight:bold">shinyapps.io</a>  
Find the codes on <a class = "a-body" style="font-weight:bold" href="https://github.com/shahreyar-abeer/cranstars" target=_blank>github</a>

## Motivation

I was required to create something for the final assessment of 
<a class="a-body" target=_blank href="https://rtask.thinkr.fr/remote-trainings-and-certification/learning-shiny-online-july/">Learning Shiny for Production</a>. This is where it all started.  
Thus the design resembles apps from the course. This was an awesome course by the way.

The main idea is taken from <a class="a-body" target=_blank href="https://twitter.com/MilesMcBain">Miles McBaine's</a> <a class="a-body" target=_blank href="https://github.com/acrossthetidyverse/tidycast" style="font-weight:bold">tidycast</a> repo.  
I also had a peak at Hadley's <a href="https://github.com/hadley/cran-downloads" class="a-body" target=_blank>cran-downloads</a>.  
The codes from the github style plots have been taken from <a class="a-body" target=_blank href="https://vuorre.netlify.app/post/2016/03/24/github-style-waffle-plots-in-r/">Matti Vuore's blog post</a>.






