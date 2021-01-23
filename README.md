# ggfenomen

ggplot2 paketi kullanılarak çizilen grafiklere fenomenleri ikon olarak ekleyebilmek için geliştirilmiştir. [ggbernie](https://github.com/R-CoderDotCom/ggbernie) paketinden esinlenerek hazırlanmıştır. Tamamen eğlence amaçlı hazırlanmış olup, geliştirme önerilerine açıktır. İyi eğlenceler!

## Paketin Kurulumu
```r
# install.packages("remotes")
remotes::install_github("mcavs/ggfenomen")
library(ggfenomen)
```

## Fenomen 1: Tağsim tağsim
```r
ggplot(mtcars) +
  geom_fenomen(aes(mpg, wt), fenomen = "taksim")
```

<p align="center">
 <img src="https://user-images.githubusercontent.com/45355486/105609011-79469800-5db7-11eb-8891-113e1746da89.png">
</p>

## Fenomen 2: Laiklik elden gidiyah

```r
ggplot(mtcars) +
  geom_fenomen(aes(mpg, wt), fenomen = "laik")
```

<p align="center">
 <img src="https://user-images.githubusercontent.com/45355486/105609024-8ebbc200-5db7-11eb-96e0-84735dceac61.png">
</p>


## Fenomen 3: Artiz ne arar la bazarda

```r
ggplot(mtcars) +
  geom_fenomen(aes(mpg, wt), fenomen = "artiz")
```

<p align="center">
 <img src="https://user-images.githubusercontent.com/45355486/105609765-78643500-5dbc-11eb-95de-b80d85be3d1b.png">
</p>


## Fenomen 4: Kenan komutan

```r
ggplot(mtcars) +
  geom_fenomen(aes(mpg, wt), fenomen = "komutan")
```

<p align="center">
 <img src="https://user-images.githubusercontent.com/45355486/105610148-3d173580-5dbf-11eb-86b7-c58c8f9f4c7c.png">
</p>


## Fenomen 5: Angara ayağını denk alsın

```r
ggplot(mtcars) +
  geom_fenomen(aes(mpg, wt), fenomen = "ankara")
```

<p align="center">
 <img src="https://user-images.githubusercontent.com/45355486/105611837-d5fe7e80-5dc8-11eb-95b4-cbde465ec209.png">
</p>


## Fenomen 6: Beyin bedava

```r
ggplot(mtcars) +
  geom_fenomen(aes(mpg, wt), fenomen = "beyin")
```

<p align="center">
 <img src="https://user-images.githubusercontent.com/45355486/105615122-326c9880-5ddf-11eb-9064-83ecd78dda4a.png">
</p>


## Fenomen 7: Zabaha kadar burdayız

```r
ggplot(mtcars) +
  geom_fenomen(aes(mpg, wt), fenomen = "beyin")
```

<p align="center">
 <img src="https://user-images.githubusercontent.com/45355486/105615529-7614d180-5de2-11eb-9074-f4b10ef38319.png">
</p>

