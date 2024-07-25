<h1 align="center">

<a href="https://github.com/mjfrigaard/shiny-app-pkgs">
<!-- Please provide path to your logo here -->
<img src="images/sap_icon.png" alt="Logo" width="50%" height="50%"/>
</a>

</h1>

<p align="center">
Shiny App-Packages <br /> <a href="#about"><strong>Explore the screenshots
»</strong></a> <br /> <br />
<a href="https://github.com/mjfrigaard/shiny-app-pkgs/issues/new?assignees=&labels=bug&template=01_BUG_REPORT.md&title=bug%3A+">Report
a Bug</a> ·
<a href="https://github.com/mjfrigaard/shiny-app-pkgs/issues/new?assignees=&labels=enhancement&template=02_FEATURE_REQUEST.md&title=feat%3A+">Request
a Feature</a> .
<a href="https://github.com/mjfrigaard/shiny-app-pkgs/issues/new?assignees=&labels=question&template=04_SUPPORT_QUESTION.md&title=support%3A+">Ask
a Question</a>
</p>

<p align="center">
<br />

[![Project
license](https://img.shields.io/badge/LICENSE-MIT-blue)](https://github.com/mjfrigaard/shiny-app-pkgs/LICENSE.md)

[![Pull Requests
welcome](https://img.shields.io/badge/PRs-welcome-ff69b4.svg?style=flat-square)](https://github.com/mjfrigaard/shiny-app-pkgs/issues?q=is%3Aissue+is%3Aopen+label%3A%22help+wanted%22)
[![code with love by
mjfrigaard](https://img.shields.io/badge/%3C%2F%3E%20with%20%E2%99%A5%20by-mjfrigaard-ff1414.svg?style=flat-square)](https://github.com/mjfrigaard)
</p>

------------------------------------------------------------------------

## About 

Shiny App-Packages covers how to create a Shiny application as an R package.

<!--
> **\[?\]** Provide general information about your project here. What
> problem does it (intend to) solve? What is the purpose of your
> project? Why did you undertake it? You don't have to answer all the
> questions -- just the ones relevant to your project.
-->

<details open>

<summary>Screenshots</summary>

<br>

<!--
 > ![](images/screen_shot_01.png)
 > ![](images/screen_shot_02.png)
-->
 

|     Testing Shiny apps             |      Shiny frameworks              |
|:----------------------------------:|:----------------------------------:|
| <img src="images/screen_shot_01.png" title="Developing apps in inst/" width="100%"/> | <img src="images/screen_shot_02.png" title="golem app-packages" width="100%"/> |

</details>

### Built With 

[Quarto](https://quarto.org/), [Shiny](https://shiny.posit.co/) and [Posit workbench](https://posit.co/products/enterprise/workbench/).

<!--
> **\[?\]** Please provide the technologies that are used in the
> project.
-->

## Getting Started 

Make sure you have [R](https://cran.r-project.org/), [Posit Workbench](https://posit.co/products/enterprise/workbench/), and [Git](https://git-scm.com/) installed.

### Prerequisites 

The contents of the text assumes you're comfortable with R, Posit Workbench, Shiny, and the `tidyverse`. Maybe you haven't built a ton of applications, but you understand reactivity, and you're comfortable with the core Shiny concepts (i.e., the UI, server, `*_Input()`, `*_Output()`, and `render_*` functions, etc.).


## Usage 

The code examples can be found in the [`shinyAppPkgs` repo](https://github.com/mjfrigaard/shinyAppPkgs). The sections from each chapter can be found in the branches. 

``` sh
git checkout <branch>
```


## Issues 

See the [open
issues](https://github.com/mjfrigaard/shiny-app-pkgs/issues) for a list
of proposed features (and known issues).

-   [Top Feature
    Requests](https://github.com/mjfrigaard/shiny-app-pkgs/issues?q=label%3Aenhancement+is%3Aopen+sort%3Areactions-%2B1-desc)
    (Add your votes using the 👍 reaction)
-   [Top
    Bugs](https://github.com/mjfrigaard/shiny-app-pkgs/issues?q=is%3Aissue+is%3Aopen+label%3Abug+sort%3Areactions-%2B1-desc)
    (Add your votes using the 👍 reaction)
-   [Newest
    Bugs](https://github.com/mjfrigaard/shiny-app-pkgs/issues?q=is%3Aopen+is%3Aissue+label%3Abug)

<!--
> **\[?\]** Provide additional ways to contact the project
> maintainer/maintainers.
-->

Reach out to the maintainer at one of the following places:

-   [GitHub
    issues](https://github.com/mjfrigaard/shiny-app-pkgs/issues/new?assignees=&labels=question&template=04_SUPPORT_QUESTION.md&title=support%3A+)
-   Contact options listed on [this GitHub
    profile](https://github.com/mjfrigaard)

## Project assistance 

If you want to say **thank you** or/and support active development of
Shiny App-Packages:

-   Add a [GitHub Star](https://github.com/mjfrigaard/shiny-app-pkgs) to
    the project.
-   Tweet about the Shiny App-Packages.

Together, we can make Shiny App-Packages **better**!

## Contributing 

First off, thanks for taking the time to contribute! Contributions are
what make the open-source community such an amazing place to learn,
inspire, and create. Any contributions you make will benefit everybody
else and are **greatly appreciated**.

## Authors & contributors

The original setup of this repository is by
[Martin Frigaard](https://github.com/mjfrigaard).

### Acknowledgments

This book is the result of multiple discussions with 1) Shiny developers who were new to writing R packages, 2) R package authors who were learning Shiny development and testing, and 3) new R users who wanted to build a robust and scalable application. Shiny App-Packages wouldn't have been possible without the contributors below (and I am deeply grateful for all of their help!). 

- [Henry Bernreuter](https://github.com/HenryBernreuter) & [Elizabeth Marshallsay](https://www.youtube.com/@lilybuguk) for the initial discussions that created the outline for this book  
- [Andrew Bates](https://github.com/asbates) for being an exemplary developer and professional, quietly building outstanding UIs, applications, and packages 
- [Eric Simms](https://github.com/esimms999) for asking so many great questions, reviewing chapters, and giving phenomenal feedback  
- [Eric Nantz](https://github.com/rpodcast)[^nantz-linkedin] for his [R podcast](https://r-podcast.org/), [Shiny developer series](https://shinydevseries.com/), [workshops](https://posit-conf-2023.github.io/shiny-r-prod/), and everything else he does for the Shiny community   
- [Philip Bowsher](https://github.com/philbowsher) for everything he does for the R/Pharma conference and community  
- [Ted Laderas](https://github.com/laderast) for his excellent [gRadual intRoduction to Shiny](https://laderast.github.io/gradual_shiny/) course and insightful blog posts  
- [Jennifer Bryan](https://github.com/jennybc) and [Hadley Wickham](https://github.com/hadley) for their posit::conf(23) [package development masterclass workshop.](https://github.com/posit-conf-2023/pkg-dev-masterclass) 
- [Maya Gans](https://github.com/MayaGans) for having multiple conversations and Shiny modules and package dependencies
- [Leon Samson](https://github.com/LDSamson) for his feedback on the testing chapters

[^nantz-linkedin]: Eric's [LinkedIn](https://www.linkedin.com/in/eric-nantz-6621617)

For a full list of all authors and contributors, see [the contributors
page](https://github.com/mjfrigaard/shiny-app-pkgs/contributors).

## License 

This project is licensed under the **MIT license**.

See [LICENSE](LICENSE) for more information.

<!--

## Acknowledgements {#acknowledgements}


> **\[?\]** If your work was funded by any organization or institution,
> acknowledge their support here. In addition, if your work relies on
> other software libraries, or was inspired by looking at other work, it
> is appropriate to acknowledge this intellectual debt too.
-->
