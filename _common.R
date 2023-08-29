co_box <- function(color, header, contents = "Your text", fold = FALSE, look = "default") {
  
  if (look == "simple") {
    look <- "simple"
  } else if (look == "minimal") {
    look <- "minimal"
  } else {
    look <- "default"
  }
  
  fold <- tolower(as.character(fold))
  
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
      "\n",
      ":::: {.callout-", class, " collapse='", fold, "'", " appearance='", look, "'}", "\n\n",
      "## ", header, "\n\n",
      "::: {style='font-size: 1.05em; color: #696969;'}\n\n",
      glue::glue_collapse(contents), "\n\n",
      "::: \n\n",
      "::::", "\n"
    )),
    g = cat(paste0(
      "\n",
      ":::: {.callout-", class, " collapse='", fold, "'", " appearance='", look, "'}", "\n\n",
      "## ", header, "\n\n",
      "::: {style='font-size: 1.05em; color: #696969;'}\n\n",
      glue::glue_collapse(contents), "\n\n",
      "::: \n\n",
      "::::", "\n"
    )),
    y = cat(paste0(
      "\n",
      ":::: {.callout-", class, " collapse='", fold, "'", " appearance='", look, "'}", "\n\n",
      "## ", header, "\n\n",
      "::: {style='font-size: 1.05em; color: #696969;'}\n\n",
      glue::glue_collapse(contents), "\n\n",
      "::: \n\n",
      "::::", "\n"
    )),
    o = cat(paste0(
      "\n",
      ":::: {.callout-", class, " collapse='", fold, "'", " appearance='", look, "'}", "\n\n",
      "## ", header, "\n\n",
      "::: {style='font-size: 1.05em; color: #696969;'}\n\n",
      glue::glue_collapse(contents), "\n\n",
      "::: \n\n",
      "::::", "\n"
    )),
    r = cat(paste0(
      "\n",
      ":::: {.callout-", class, " collapse='", fold, "'", " appearance='", look, "'}", "\n\n",
      "## ", header, "\n\n",
      "::: {style='font-size: 1.05em; color: #696969;'}\n\n",
      glue::glue_collapse(contents), "\n\n",
      "::: \n\n",
      "::::", "\n"
    )),
    stop("Invalid `type`", call. = FALSE)
  )
}

git_margin_box <- function(fig_pw = '70%', branch = 'main', repo = 'shinyap') {
  cat(paste0(
      "\n",
      "::: {.column-margin}\n\n",
      "![Git Branch](img/new_branch_ico.png){width='", fig_pw, "'}\n\n",
      "This section's code is in the [`", repo, "`](https://github.com/mjfrigaard/", repo, ")
      repo's [`", branch, "`](https://github.com/mjfrigaard/", repo, "/tree/", branch, ") branch \n\n",
      "::: \n\n"
    ))
}
