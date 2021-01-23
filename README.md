# ggfenomen
A ggplot2 geom for adding fenomens

This is a package inspired by [ggbernie package](https://github.com/R-CoderDotCom/ggbernie)

## Installation
```r
# install.packages("remotes")
remotes::install_github("mcavs/fenomen@main")
```

## Fenomen Taksim
```r
ggplot(mtcars) +
  geom_fenomen(aes(mpg, wt), fenomen = "taksim")
```

## Fenomen Laik

```r
ggplot(mtcars) +
  geom_fenomen(aes(mpg, wt), fenomen = "laik")
```

