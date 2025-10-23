# usethis package ----
if (interactive()) {
  require(usethis, quietly = TRUE)
}
# ellmer llm package ----
# if (interactive()) {
#   require(ellmer, quietly = TRUE)
# }
# pak package ----
if (interactive()) {
  require(pak, quietly = TRUE)
}
# btw llm package ----
# if (interactive()) {
#   require(btw, quietly = TRUE)
# }
# renv ----
source("renv/activate.R")
Sys.setenv(RENV.CONFIG.PAK.ENABLED = TRUE)
# OPTIONS ----
options(
  ## btw config ----
  # btw.chat_client = ellmer::chat_anthropic(),
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


