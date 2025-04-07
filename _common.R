# upgrade with pak
# pak::pak('mjfrigaard/shinypak', ask = FALSE, upgrade = TRUE)

options(width = 50L, pillar.width = 50L)

shinypak_apps <- function(regex, branch = "02.1_shiny-app") {
  cat(paste0(
    "\n",
    "::::{.callout-tip collapse='true' appearance='deafult'}",
    "\n\n",
    "## [Access the applications in this chapter]{style='font-weight: bold; font-size: 1.15em;'}",
    "\n\n",
    ":::{style='font-size: 0.95em; color: #282b2d;'}",
    "\n\n",
    "I've created the [`shinypak` R package](https://mjfrigaard.github.io/shinypak/) in an effort to make each section accessible and easy to follow. Install `shinypak` using `pak` (or `remotes`):",
    "\n\n",
    "```r",
    "\n",
    "install.packages('pak')",
    "\n",
    "pak::pak('mjfrigaard/shinypak')",
    "\n",
    "library(shinypak)",
    "\n",
    "```",
    "\n\n",
    "List the apps in this chapter:",
    "\n\n",
    "```r",
    "\n",
    "list_apps(regex = '", regex, "')",
    "\n",
    "```",
    "\n\n",
    "Launch apps with `launch()`",
    "\n\n",
    "```r",
    "\n",
    "launch(app = '", branch, "')",
    "\n",
    "```",
    "\n\n",
    "Download apps with `get_app()`",
    "\n\n",
    "```r",
    "\n",
    "get_app(app = '", branch, "')",
    "\n",
    "```",
    "\n\n",
    "::::",
    "\n\n",
    ":::"
  ))
}

co_box <- function(
  color = "b",
  header = "header",
  contents = "Your text",
  size = "1.05",
  hsize = "1.05",
  fold = FALSE,
  look = "default") {
  
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
      ":::: {.callout-", class, " collapse='", fold, "'", " appearance='", look, "' icon=false}", "\n\n",
      "## [", header, "]{style='font-weight: bold; font-size: ", hsize, "em;'}\n\n",
      "::: {style='font-size: ", size, "em; color: #282b2d;'}\n\n",
      "\n", glue::glue_collapse(contents), "\n\n",
      "::: \n\n",
      "::::", "\n"
    )),
    g = cat(paste0(
      "\n\n",
      ":::: {.callout-", class, " collapse='", fold, "'", " appearance='", look, "' icon=false}", "\n\n",
      "## [", header, "]{style='font-weight: bold; font-size: ", hsize, "em;'}\n\n",
      "::: {style='font-size: ", size, "em; color: #282b2d;'}\n\n",
      "\n", glue::glue_collapse(contents), "\n\n",
      "::: \n\n",
      "::::", "\n"
    )),
    y = cat(paste0(
      "\n\n",
      ":::: {.callout-", class, " collapse='", fold, "'", " appearance='", look, "' icon=false}", "\n\n",
      "## [", header, "]{style='font-weight: bold; font-size: ", hsize, "em;'}\n\n",
      "::: {style='font-size: ", size, "em; color: #282b2d;'}\n\n",
      "\n", glue::glue_collapse(contents), "\n\n",
      "::: \n\n",
      "::::", "\n"
    )),
    o = cat(paste0(
      "\n\n",
      ":::: {.callout-", class, " collapse='", fold, "'", " appearance='", look, "' icon=false}", "\n\n",
      "## [", header, "]{style='font-weight: bold; font-size: ", hsize, "em;'}\n\n",
      "::: {style='font-size: ", size, "em; color: #282b2d;'}\n\n",
      "\n", glue::glue_collapse(contents), "\n\n",
      "::: \n\n",
      "::::", "\n"
    )),
    r = cat(paste0(
      "\n\n",
      ":::: {.callout-", class, " collapse='", fold, "'", " appearance='", look, "' icon=false}", "\n\n",
      "## [", header, "]{style='font-weight: bold; font-size: ", hsize, "em;'}\n\n",
      "::: {style='font-size: ", size, "em; color: #282b2d;'}\n\n",
      "\n", glue::glue_collapse(contents), "\n\n",
      "::: \n\n",
      "::::", "\n"
    )),
    stop("Invalid `type`", call. = FALSE)
  )
}

git_contrib_box <- function(
                repo = 'shiny-app-pkgs', 
                header = "See a typo, error, or something missing?",
                contents = "Please open an issue on ",
                size = "0.95",
                hsize = "1.05",
                fold = TRUE) {
  
  git_repo_root <- "https://github.com/mjfrigaard/"
  new_issue <- "/issues/new"
  
  fold <- tolower(fold)
  
  gh_repo_link <- paste0("[GitHub]", "(", git_repo_root, repo, new_issue, ")")
  gh_repo_link
  
  cat(paste0(
        "\n\n",
        ":::: {.callout-note", " collapse='", fold, "'", " appearance='default' icon=false}", "\n\n",
        "## [", header, "]{style='font-weight: bold; font-size: ", hsize, "em;'}\n\n",
        "::: {style='font-size: ", size, "em; color: #282b2d;'}\n\n",
        "\n", 
        glue::glue_collapse(contents), 
        gh_repo_link,
        "\n\n",
        "::: \n\n",
        "::::", "\n"
      ))
  
  
}

git_margin_box <- function(contents = "standard", fig_pw = '70%', branch = 'main', repo = 'shinypak') {
  switch(contents,
  install = cat(paste0(
      "\n",
      "::::{.column-margin}\n\n",
      # ":::{style='font-size: 1.10em;'}\n\n",
      "Access the applications in this\n\nchapter with the [`shinypak`](https://mjfrigaard.github.io/shinypak/articles/getting-started.html) package:\n\n",
      ":::{style='font-size: 0.90rem;'}\n",
      "\`\`\` r\n",
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
      "![](images/new_branch_ico.png){width='", fig_pw, "' fig-align='center'}\n\n",
      ":::\n\n",
      
      ":::{style='font-size: 1.05em;'}\n\n",
      "\nSee the [`", branch, 
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
      "![](images/new_branch_ico.png){width='", fig_pw, 
      "' fig-align='center'}\n\n",
      "\nThe [`", branch, 
      "`](https://github.com/mjfrigaard/", repo, "/tree/", branch, ")
      branch of [`", repo, "`](https://github.com/mjfrigaard/", repo, ").\n\n",
      "::: \n",
      ":::: \n\n"
    )),
  alt = cat(paste0(
      "\n",
      ":::: {.column-margin}\n\n",
      "::: {style='font-weight: bold; font-size: 1.00em;'}\n\n",
      "![](images/new_branch_ico.png){width='", fig_pw, "' fig-align='center'}\n\n",
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

hot_key <- function(fun = "L") {
  if (fun == "all") {
glue::glue("\n:::: {{layout='[ 15, 33, 16 ]'}}

::: {{#first-column}}

:::

::: {{#second-column}}

::: {{style='font-color: #000000; font-weight: bold; font-size: 1.15em' layout-valign='bottom'}}

<kbd>Ctrl/Cmd</kbd> + <kbd>Shift</kbd> + <kbd>L</kbd>   
<kbd>Ctrl/Cmd</kbd> + <kbd>Shift</kbd> + <kbd>D</kbd>   
<kbd>Ctrl/Cmd</kbd> + <kbd>Shift</kbd> + <kbd>B</kbd>    

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

::: {{style='font-weight: bold; font-size: 1.15em' layout-valign='bottom'}}

<kbd>Ctrl/Cmd</kbd> + <kbd>Shift</kbd> + <kbd>{fun}</kbd>

:::

:::

::: {{#third-column}}

:::

::::")
  }
}

pkg_info <- function(pkgs, gt = FALSE) {
  # Ensure pkgs is a character vector
  if (!is.character(pkgs)) {
    stop("`pkgs` must be a character vector.")
  }
  
  # Helper function to extract package details
  get_pkg_details <- function(pkg) {
    desc_path <- system.file("DESCRIPTION", package = pkg)
    
    if (desc_path == "") {
      warning(glue::glue("Package '{pkg}' not found or has no DESCRIPTION file."))
      return(data.frame(
        Package = pkg,
        Version = NA,
        Title = NA,
        Description = NA,
        stringsAsFactors = FALSE
      ))
    }
    
    # Read DESCRIPTION file
    pkg_description <- readr::read_lines(desc_path, skip_empty_rows = TRUE)
    
    # Initialize storage for info
    info <- list(Package = pkg, Version = NA, Title = NA, Description = NA)
    description_started <- FALSE
    description_text <- ""
    
    for (line in pkg_description) {
      if (startsWith(line, "Package:")) {
        info$Package <- sub("Package: ", "", line)
      } else if (startsWith(line, "Version:")) {
        info$Version <- sub("Version: ", "", line)
      } else if (startsWith(line, "Title:")) {
        info$Title <- sub("Title: ", "", line)
      } else if (startsWith(line, "Description:")) {
        description_started <- TRUE
        description_text <- sub("Description: ", "", line)
      } else if (description_started) {
        if (grepl("^\\s", line)) {  # Continuation of description
          description_text <- paste(description_text, trimws(line))
        } else {
          break  # Stop at the next non-indented line
        }
      }
    }
    
    info$Description <- trimws(description_text)
    as.data.frame(info, stringsAsFactors = FALSE)
  }
  
  # Process multiple packages
  pkg_info_df <- purrr::map_dfr(pkgs, get_pkg_details)
  
  # Return gt table if gt = TRUE
  if (gt) {
    gt::gt(data = pkg_info_df) |>
      gt::tab_style(
        style = "vertical-align:top",
        locations = gt::cells_body(columns = everything())
      ) |>
      gt::cols_align(
        align = "left",
        columns = everything()
      )
  } else {
    pkg_info_df
  }
}

# Example usage
# pkg_info(c("golem", "leprechaun", "rhino", "randomNonexistentPackage"), gt = TRUE)

dev_box <- function(text, italic = TRUE, bold = FALSE) {
  tday <- Sys.Date()
  if (isTRUE(italic) & isTRUE(bold)) {
    cat(paste0(
      ":::{.callout-important collapse='true' appearance='default' icon='false'}\n\n",
      "## DEV BOX\n\n",
      ":::{style='font-size: 1.20em; color: #ff0000; font-weight: bold; font-style: italic;'}\n\n",
      glue::glue_collapse(text),
      "\n\n", tday, "\n\n",
      "\n\n:::\n\n",
      ":::"
    ))
  } else if (isFALSE(italic) & isTRUE(bold)) {
    cat(paste0(
      ":::{.callout-important collapse='true' appearance='default' icon='false'}\n\n",
      "## DEV BOX\n\n",
      ":::{style='font-size: 1.20em; color: #ff0000; font-weight: bold;'}\n\n",
      glue::glue_collapse(text),
      "\n\n", tday, "\n\n",
      "\n\n:::\n\n",
      ":::"
    ))
  } else if (isTRUE(italic) & isFALSE(bold)) {
    cat(paste0(
      ":::{.callout-important collapse='true' appearance='default' icon='false'}\n\n",
      "## DEV BOX\n\n",
      ":::{style='font-size: 1.20em; color: #ff0000; font-style: italic;'}\n\n",
      glue::glue_collapse(text),
      "\n\n", tday, "\n\n",
      "\n\n:::\n\n",
      ":::"
    ))
  } else {
    cat(paste0(
      ":::{.callout-important collapse='true' appearance='default' icon='false'}\n\n",
      "## DEV BOX\n\n",
      ":::{style='font-size: 1.20em; color: #ff0000;'}\n\n",
      glue::glue_collapse(text),
      "\n\n", tday, "\n\n",
      "\n\n:::\n\n",
      ":::"
    ))
  }
}