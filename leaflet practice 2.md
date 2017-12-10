---
Date: "December 11 2017"
title: "R Notebook"
output: html_notebook
---



```r
install.packages("leaflet")
```

```
## Installing package into '/Users/rileyboeth/Library/R/3.4/library'
## (as 'lib' is unspecified)
```

```
## Error in contrib.url(repos, "source"): trying to use CRAN without setting a mirror
```

```r
require(leaflet)
```

```
## Loading required package: leaflet
```

```r
install.packages("webshot")
```

```
## Installing package into '/Users/rileyboeth/Library/R/3.4/library'
## (as 'lib' is unspecified)
```

```
## Error in contrib.url(repos, "source"): trying to use CRAN without setting a mirror
```

```r
library(webshot)
```

```
## Warning: package 'webshot' was built under R version 3.4.3
```

```r
my_map <- leaflet() %>% 
  addTiles()
my_map
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-1-1.png)

```r
my_map <- my_map %>%
  addMarkers(lat=40.730610, lng=-73.935242, 
             popup="NYC")
my_map
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-1-2.png)

```r
NYCicon <- makeIcon(
  iconUrl = "https://upload.wikimedia.org/wikipedia/commons/0/09/NYC_Logo_Wolff_Olins.svg",
  iconWidth = 31*215/230, iconHeight = 31,
  iconAnchorX = 31*215/230/2, iconAnchorY = 16
)

nycLatLong <- data.frame(
  lat = c(40.730610),
  lng = c(-73.935242))

#nYCsites <- c(
#  "<a href='https://www.nycgo.com/</a>")

plot<-nycLatLong %>% 
  leaflet() %>%
  addTiles() %>%
  addMarkers(icon = NYCicon)#, popup = nYCsites)

plot
```

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-1-3.png)

