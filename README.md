# Shiny app-packages

This is a quarto book on creating shiny app-packages. Feel free to request chapters, packages, or topics. 

## For developers 

Each new .qmd file should start with a code block sourcing `_common.R`:

````verbatim
```{r}
#| eval: true 
#| echo: false 
#| include: false
source("_common.R")
```
````
