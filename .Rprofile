# renv ----
source("renv/activate.R")
Sys.setenv(RENV.CONFIG.PAK.ENABLED = TRUE)
# macOS fix: fstcore.so needs libomp's symbols in the flat namespace ----
local({
  if (Sys.info()[["sysname"]] == "Darwin") {
    libomp <- file.path(R.home("lib"), "libomp.dylib")
    if (file.exists(libomp) && !"libomp.dylib" %in% names(getLoadedDLLs())) {
      try(dyn.load(libomp, local = FALSE), silent = TRUE)
    }
  }
})
# OPTIONS ----
options(
  ## btw config ----
  # btw.chat = ellmer::chat_anthropic(),
  ## printing options ----
  width = 50L,
  pillar.width = 50L,
  width = 80,
  str = utils::strOptions(strict.width = 'cut'),
  # description configs ----
  usethis.description = list(
    "Authors@R" = utils::person(
        "Martin", "Frigaard",
        email = "mjfrigaard@pm.me",
        role = c("aut", "cre")
    )
  ),
  # repos configs ----
    repos = c(pm = "https://packagemanager.posit.co/cran/latest",
              CRAN = "https://cloud.r-project.org")
)
# usethis package ----
if (interactive()) {
  require(usethis, quietly = TRUE)
}
# ellmer llm package ----
# if (interactive()) {
#   require(ellmer, quietly = TRUE)
# }
# btw llm package ----
# if (interactive()) {
#   require(btw, quietly = TRUE)
# }
# pak package ----
if (interactive()) {
  require(pak, quietly = TRUE)
}
