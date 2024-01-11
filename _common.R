
options(width = 50L,
  pillar.width = 50L)

co_box <- function(color, header, contents = "Your text", size = "1.05", hsize = "1.10", fold = FALSE, look = "default") {
  
  if (look == "simple") {
    look <- "simple"
  } else if (look == "minimal") {
    look <- "minimal"
  } else {
    look <- "default"
  }
  
  fold <- tolower(as.character(fold))
  size <- as.character(size)
  
  class <- switch(color,
    b = "note",
    g = "tip",
    r = "important",
    o = "warning",
    y = "caution",
    stop("Invalid `type`", call. = FALSE)
  )
  switch(color,
    b = cat(paste0(
      "\n\n",
      ":::: {.callout-", class, " collapse='", fold, "'", " appearance='", look, "'}", "\n\n",
      "## [", header, "]{style='font-weight: bold; font-size: ", hsize, "em;'}\n\n",
      "::: {style='font-size: ", size, "em; color: #282b2d;'}\n\n",
      "\n", glue::glue_collapse(contents), "\n\n",
      "::: \n\n",
      "::::", "\n"
    )),
    g = cat(paste0(
      "\n\n",
      ":::: {.callout-", class, " collapse='", fold, "'", " appearance='", look, "'}", "\n\n",
      "## [", header, "]{style='font-weight: bold; font-size: ", hsize, "em;'}\n\n",
      "::: {style='font-size: ", size, "em; color: #282b2d;'}\n\n",
      "\n", glue::glue_collapse(contents), "\n\n",
      "::: \n\n",
      "::::", "\n"
    )),
    y = cat(paste0(
      "\n\n",
      ":::: {.callout-", class, " collapse='", fold, "'", " appearance='", look, "'}", "\n\n",
      "## [", header, "]{style='font-weight: bold; font-size: ", hsize, "em;'}\n\n",
      "::: {style='font-size: ", size, "em; color: #282b2d;'}\n\n",
      "\n", glue::glue_collapse(contents), "\n\n",
      "::: \n\n",
      "::::", "\n"
    )),
    o = cat(paste0(
      "\n\n",
      ":::: {.callout-", class, " collapse='", fold, "'", " appearance='", look, "'}", "\n\n",
      "## [", header, "]{style='font-weight: bold; font-size: ", hsize, "em;'}\n\n",
      "::: {style='font-size: ", size, "em; color: #282b2d;'}\n\n",
      "\n", glue::glue_collapse(contents), "\n\n",
      "::: \n\n",
      "::::", "\n"
    )),
    r = cat(paste0(
      "\n\n",
      ":::: {.callout-", class, " collapse='", fold, "'", " appearance='", look, "'}", "\n\n",
      "## [", header, "]{style='font-weight: bold; font-size: ", hsize, "em;'}\n\n",
      "::: {style='font-size: ", size, "em; color: #282b2d;'}\n\n",
      "\n", glue::glue_collapse(contents), "\n\n",
      "::: \n\n",
      "::::", "\n"
    )),
    stop("Invalid `type`", call. = FALSE)
  )
}

git_margin_box <- function(contents = "standard", fig_pw = '70%', branch = 'main', repo = 'shinypak') {
  switch(contents,
  install = cat(paste0(
      "\n",
      "::::{.column-margin}\n\n",
      # ":::{style='font-size: 1.10em;'}\n\n",
      "Install the [`shinypak` package](https://mjfrigaard.github.io/shinypak/articles/getting-started.html) to easily launch the applications:\n\n",
      ":::{style='font-size: 0.65rem;'}\n",
      "\`\`\`r \n",
      "install.packages('pak')\n",
      "library(pak)\n",
      "pak('mjfrigaard/shinypak')\n",
      "\`\`\`\n",
      ":::\n\n",
    
      # ":::\n\n",
      ":::: \n\n"
    )),
  launch = cat(paste0(
      "\n",
      ":::: {.column-margin}\n\n",
    
      # ":::{style='font-size: 1.10em;'}\n\n",
      "Launch app with the [`shinypak` package](https://mjfrigaard.github.io/shinypak/articles/getting-started.html):\n\n",
      # ":::\n\n",
    
      ":::{style='font-size: 0.65rem;'}\n",
      "\`\`\`r \n",
      "launch('", branch, "')\n",
      "\`\`\`\n",
      ":::\n",
    
      ":::: \n\n"
    )),
  standard = cat(paste0(
      "\n\n",
      "::::{.column-margin}\n\n",
      ":::{style='font-size: 1.10em;'}\n\n",
      "![](img/new_branch_ico.png){width='", fig_pw, "' fig-align='center'}\n\n",
      ":::\n\n",
      
      ":::{style='font-size: 1.05em;'}\n\n",
      "\nThis section's code is in the [`", branch, 
      "`](https://github.com/mjfrigaard/", repo, "/tree/", branch, ")
      branch of [`", repo, "`](https://github.com/mjfrigaard/", 
      repo, ").\n\n",
      ":::\n\n",
    
      "::::\n\n"
    )),
  branch = cat(paste0(
      "\n",
      ":::: {.column-margin}\n\n",
      "::: {style='font-size: 1.05em;'}\n\n",
      "![](img/new_branch_ico.png){width='", fig_pw, 
      "' fig-align='center'}\n\n",
      "\nThis section's code is in the [`", branch, 
      "`](https://github.com/mjfrigaard/", repo, "/tree/", branch, ")
      branch of [`", repo, "`](https://github.com/mjfrigaard/", repo, ").\n\n",
      "::: \n",
      ":::: \n\n"
    )),
  alt = cat(paste0(
      "\n",
      ":::: {.column-margin}\n\n",
      "::: {style='font-weight: bold; font-size: 1.00em;'}\n\n",
      "![](img/new_branch_ico.png){width='", fig_pw, "' fig-align='center'}\n\n",
      "\n\n Git branch: [`", 
      branch, "`](https://github.com/mjfrigaard/", repo, "/tree/", branch, ")\n\n",
      "Launch app with:\n\n",
      "::: \n\n",
      
      ":::{style='font-weight: bold; font-size: 1.00em;'}\n\n",
      "\`\`\`r \n",
      "launch_app(\n",
      "\t'", branch, "'\n",
      "\t)\n",
      "\`\`\`\n\n",
      ":::\n\n",
    
      "::::", "\n"
    )),
    stop("Invalid `type`", call. = FALSE)
  )
}

git_margin_box(contents = "alt",
  fig_pw = '75%', 
  branch = "main", 
  repo = 'moviesApp')

hot_key <- function(fun = "L") {
  if (fun == "all") {
glue::glue("\n:::: {{layout='[ 15, 33, 16 ]'}}

::: {{#first-column}}

:::

::: {{#second-column}}

::: {{style='font-weight: bold; font-size: 1.15em' layout-valign='bottom'}}

<br><br>

<kbd>Ctrl/Cmd</kbd> + <kbd>Shift</kbd> + <kbd>L</kbd> / <kbd>D</kbd> / <kbd>B</kbd>
:::

:::

::: {{#third-column}}

:::

::::")
  } else if (fun == 'tf') {
glue::glue("\n:::: {{layout='[ 30, 50, 20 ]'}}

::: {{#first-column}}

:::

::: {{#second-column}}

::: {{style='font-weight: bold; font-size: 1.15em' layout-valign='bottom'}}

<br>

<kbd>Ctrl/Cmd</kbd> + <kbd>T</kbd>
:::

:::

::: {{#third-column}}

:::

::::")
  } else if (fun == 'cf') {
glue::glue("\n:::: {{layout='[ 30, 50, 20 ]'}}

::: {{#first-column}}

:::

::: {{#second-column}}

::: {{style='font-weight: bold; font-size: 1.15em' layout-valign='bottom'}}

<br>

<kbd>Ctrl/Cmd</kbd> + <kbd>Shift</kbd> + <kbd>R</kbd>
:::

:::

::: {{#third-column}}

:::

::::")
  } else {
glue::glue("\n:::: {{layout='[ 30, 50, 20 ]'}}

::: {{#first-column}}

:::

::: {{#second-column}}

::: {{style='font-weight: bold; font-size: 1.25em' layout-valign='bottom'}}

<br>

<kbd>Ctrl/Cmd</kbd> + <kbd>Shift</kbd> + <kbd>{fun}</kbd>
:::

:::

::: {{#third-column}}

:::

::::")
  }
}
