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
    ":::{style='font-size: 0.95em;'}",
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
  size = "0.95",
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
      "::: {style='font-size: ", size, "em;'}\n\n",
      "\n", glue::glue_collapse(contents), "\n\n",
      "::: \n\n",
      "::::", "\n"
    )),
    g = cat(paste0(
      "\n\n",
      ":::: {.callout-", class, " collapse='", fold, "'", " appearance='", look, "' icon=false}", "\n\n",
      "## [", header, "]{style='font-weight: bold; font-size: ", hsize, "em;'}\n\n",
      "::: {style='font-size: ", size, "em;'}\n\n",
      "\n", glue::glue_collapse(contents), "\n\n",
      "::: \n\n",
      "::::", "\n"
    )),
    y = cat(paste0(
      "\n\n",
      ":::: {.callout-", class, " collapse='", fold, "'", " appearance='", look, "' icon=false}", "\n\n",
      "## [", header, "]{style='font-weight: bold; font-size: ", hsize, "em;'}\n\n",
      "::: {style='font-size: ", size, "em;'}\n\n",
      "\n", glue::glue_collapse(contents), "\n\n",
      "::: \n\n",
      "::::", "\n"
    )),
    o = cat(paste0(
      "\n\n",
      ":::: {.callout-", class, " collapse='", fold, "'", " appearance='", look, "' icon=false}", "\n\n",
      "## [", header, "]{style='font-weight: bold; font-size: ", hsize, "em;'}\n\n",
      "::: {style='font-size: ", size, "em;'}\n\n",
      "\n", glue::glue_collapse(contents), "\n\n",
      "::: \n\n",
      "::::", "\n"
    )),
    r = cat(paste0(
      "\n\n",
      ":::: {.callout-", class, " collapse='", fold, "'", " appearance='", look, "' icon=false}", "\n\n",
      "## [", header, "]{style='font-weight: bold; font-size: ", hsize, "em;'}\n\n",
      "::: {style='font-size: ", size, "em;'}\n\n",
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
        "::: {style='font-size: ", size, "em;'}\n\n",
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

dev_env <- function() {
  os <- Sys.info()[["sysname"]]

  # helper: run a command and capture first line of output, NA on failure
  run_version <- function(cmd, args = "--version") {
    out <- tryCatch(
      suppressWarnings(system2(cmd, args, stdout = TRUE, stderr = TRUE)),
      error = function(e) character(0)
    )
    if (length(out) == 0) return(NA_character_)
    trimws(out[1])
  }

  # helper: read version from an Electron/VS Code style package.json or Info.plist
  read_app_version <- function(paths) {
    for (p in paths) {
      if (!file.exists(p)) next
      txt <- tryCatch(readLines(p, warn = FALSE), error = function(e) character(0))
      # package.json / product.json: "version": "x.y.z"
      m <- regmatches(txt, regexpr('"version"\\s*:\\s*"[^"]+"', txt))
      if (length(m)) return(sub('.*"([^"]+)"$', "\\1", m[1]))
      # Info.plist: CFBundleShortVersionString followed by <string>x.y.z</string>
      i <- grep("CFBundleShortVersionString", txt)
      if (length(i) && length(txt) > i[1]) {
        return(gsub("<[^>]+>|\\s", "", txt[i[1] + 1]))
      }
      # RStudio VERSION file: plain text
      if (length(txt) == 1 && nzchar(txt[1])) return(trimws(txt[1]))
    }
    NA_character_
  }

  ## R version ---------------------------------------------------------
  r_info <- list(installed = TRUE, version = as.character(getRversion()),
                 string = R.version.string)

  ## rstudio version --------------------------------------------------
  rstudio <- list(installed = FALSE, version = NA_character_, running = FALSE)
  if (nzchar(Sys.getenv("RSTUDIO")) && exists("RStudio.Version")) {
    rstudio$installed <- TRUE
    rstudio$running   <- TRUE
    rstudio$version   <- as.character(get("RStudio.Version")()$version)
  } else {
    candidates <- switch(os,
      Windows = c(
        file.path(Sys.getenv("ProgramFiles"), "RStudio", "resources", "app", "VERSION"),
        file.path(Sys.getenv("ProgramFiles"), "RStudio", "VERSION"),
        file.path(Sys.getenv("LOCALAPPDATA"), "Programs", "RStudio", "resources", "app", "VERSION")
      ),
      Darwin = c(
        "/Applications/RStudio.app/Contents/Info.plist",
        "~/Applications/RStudio.app/Contents/Info.plist"
      ),
      c("/usr/lib/rstudio/VERSION", "/usr/lib/rstudio/resources/app/VERSION",
        "/opt/rstudio/VERSION", "/usr/lib/rstudio-server/VERSION")
    )
    candidates <- path.expand(candidates)
    v <- read_app_version(candidates)
    if (!is.na(v)) {
      rstudio$installed <- TRUE
      rstudio$version   <- v
    } else if (nzchar(Sys.which("rstudio"))) {
      rstudio$installed <- TRUE
      rstudio$version   <- run_version("rstudio")
    }
  }

  ## positron version --------------------------------------------------
  positron <- list(installed = FALSE, version = NA_character_, running = FALSE)
  if (nzchar(Sys.getenv("POSITRON"))) {
    positron$installed <- TRUE
    positron$running   <- TRUE
    positron$version   <- Sys.getenv("POSITRON_VERSION", NA_character_)
  }
  if (is.na(positron$version)) {
    candidates <- switch(os,
      Windows = c(
        file.path(Sys.getenv("LOCALAPPDATA"), "Programs", "Positron", "resources", "app", "product.json"),
        file.path(Sys.getenv("ProgramFiles"), "Positron", "resources", "app", "product.json")
      ),
      Darwin = c(
        "/Applications/Positron.app/Contents/Resources/app/product.json",
        "~/Applications/Positron.app/Contents/Resources/app/product.json",
        "/Applications/Positron.app/Contents/Info.plist"
      ),
      c("/usr/share/positron/resources/app/product.json",
        "/opt/positron/resources/app/product.json")
    )
    candidates <- path.expand(candidates)
    v <- read_app_version(candidates)
    if (!is.na(v)) {
      positron$installed <- TRUE
      positron$version   <- v
    } else if (nzchar(Sys.which("positron"))) {
      positron$installed <- TRUE
      positron$version   <- run_version("positron")
    }
  }

  ## python version -----------------------------------------------------
  python <- list(installed = FALSE, version = NA_character_, path = NA_character_)
  for (exe in c("python3", "python", "py")) {
    p <- Sys.which(exe)
    if (nzchar(p)) {
      v <- run_version(p)
      if (!is.na(v) && grepl("^Python", v)) {
        python$installed <- TRUE
        python$path      <- unname(p)
        python$version   <- sub("^Python\\s+", "", v)
        break
      }
    }
  }

  res <- list(os = os, R = r_info, RStudio = rstudio, Positron = positron, Python = python)
  class(res) <- "dev_env"
  res
}

print.dev_env <- function(x, ...) {
  fmt <- function(name, info) {
    status <- if (isTRUE(info$installed)) {
      paste0("installed (", ifelse(is.na(info$version), "version unknown", info$version), ")")
    } else "not found"
    if (isTRUE(info$running)) status <- paste(status, "[current session]")
    cat(sprintf("%-9s %s\n", paste0(name, ":"), status))
  }
  cat("OS:       ", x$os, "\n", sep = "")
  fmt("R", x$R)
  fmt("RStudio", x$RStudio)
  fmt("Positron", x$Positron)
  fmt("Python", x$Python)
  invisible(x)
}