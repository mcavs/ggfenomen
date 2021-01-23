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
 <img src="https://user-images.githubusercontent.com/45355486/105609011-79469800-5db7-11eb-8891-113e1746da89.png">
</p>

## Fenomen Laik

```r
ggplot(mtcars) +
  geom_fenomen(aes(mpg, wt), fenomen = "laik")
```

<p align="center">
 <img src="https://user-images.githubusercontent.com/45355486/105609024-8ebbc200-5db7-11eb-96e0-84735dceac61.png">
</p>

```r
ggplot(mtcars) +
  geom_fenomen(aes(mpg, wt), fenomen = "artiz")
```

<p align="center">
 <img src="https://user-images.githubusercontent.com/45355486/105609765-78643500-5dbc-11eb-95de-b80d85be3d1b.png">
</p>

```r
ggplot(mtcars) +
  geom_fenomen(aes(mpg, wt), fenomen = "komutan")
```

<p align="center">
 <img src="https://user-images.githubusercontent.com/45355486/105610148-3d173580-5dbf-11eb-86b7-c58c8f9f4c7c.png">
</p>

```r
ggplot(mtcars) +
  geom_fenomen(aes(mpg, wt), fenomen = "ankara")
```

<p align="center">
 <img src="https://user-images.githubusercontent.com/45355486/105611837-d5fe7e80-5dc8-11eb-95b4-cbde465ec209.png">
</p>

```r
ggplot(mtcars) +
  geom_fenomen(aes(mpg, wt), fenomen = "beyin")
```

<p align="center">
 <img src="https://user-images.githubusercontent.com/45355486/105615122-326c9880-5ddf-11eb-9064-83ecd78dda4a.png">
</p>


