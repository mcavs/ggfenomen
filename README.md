# ggfenomen
A ggplot2 geom for adding fenomens

This is a package inspired by [ggbernie package](https://github.com/R-CoderDotCom/ggbernie)

## Installation
```r
# install.packages("remotes")
remotes::install_github("mcavs/ggfenomen")
library(ggfenomen)
```

## Fenomen Taksim
```r
ggplot(mtcars) +
  geom_fenomen(aes(mpg, wt), fenomen = "taksim")
```

<p align="center">
 <img src="https://user-images.githubusercontent.com/45355486/105609024-8ebbc200-5db7-11eb-96e0-84735dceac61.png">
</p>

## Fenomen Laik

```r
ggplot(mtcars) +
  geom_fenomen(aes(mpg, wt), fenomen = "laik")
```

<p align="center">
 <img src="https://user-images.githubusercontent.com/45355486/105609011-79469800-5db7-11eb-8891-113e1746da89.png">
</p>

