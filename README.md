
<!-- README.md is generated from README.Rmd. Please edit that file -->
FromQuandl
==========

The goal of FromQuandl is to easy the seach, download and data preprocessing that often happen when using the `Quandl` package in R.

Installation
------------

You can install FromQuandl from github with:

``` r
# install.packages("devtools")
devtools::install_github("Reckziegel/FromQuandl")
```

Example
-------

Suppose you would like to download the Current Account Balance (as % of GDP) for all countries of a specific region or with a similar economic characteristic, like the G7, for example. Use the `imf_search()` function to discover the Current Accounts code.

``` r
FromQuandl::imf_search('account')
```

Next use `imf_from_quandl()` to download this data.

``` r
library(FromQuandl)
ca <- imf_from_quandl(countries = 'g7', indicators = 'BCA_NGDPD', start_date = '2008-01-01')
ca
#> # A tibble: 105 x 6
#>    date       iso   country indicator  value name                         
#>    <date>     <fct> <fct>   <fct>      <dbl> <fct>                        
#>  1 2008-12-31 CAN   Canada  BCA_NGDPD  0.099 Current Account Balance, % o~
#>  2 2009-12-31 CAN   Canada  BCA_NGDPD -2.95  Current Account Balance, % o~
#>  3 2010-12-31 CAN   Canada  BCA_NGDPD -3.61  Current Account Balance, % o~
#>  4 2011-12-31 CAN   Canada  BCA_NGDPD -2.77  Current Account Balance, % o~
#>  5 2012-12-31 CAN   Canada  BCA_NGDPD -3.60  Current Account Balance, % o~
#>  6 2013-12-31 CAN   Canada  BCA_NGDPD -3.22  Current Account Balance, % o~
#>  7 2014-12-31 CAN   Canada  BCA_NGDPD -2.43  Current Account Balance, % o~
#>  8 2015-12-31 CAN   Canada  BCA_NGDPD -3.40  Current Account Balance, % o~
#>  9 2016-12-31 CAN   Canada  BCA_NGDPD -3.34  Current Account Balance, % o~
#> 10 2017-12-31 CAN   Canada  BCA_NGDPD -2.92  Current Account Balance, % o~
#> # ... with 95 more rows
```

The result is a `tibble` that it's ready to be used in `ggplot2`.

``` r
library(ggplot2)
library(ggthemes)

ca %>%
  ggplot(aes(date, value, color = country)) + 
  geom_line(size = 1, show.legend = FALSE) + 
  geom_hline(aes(yintercept = 0), color = 'red', linetype = 'dashed', alpha = 0.3) + 
  facet_wrap(~country, scale = "free_y") + 
  labs(title    = "Current Account Balance (% of GDP)",
       subtitle = "G7 Countries From 2005-01-01 through 2018-09-10",
       caption  = "Source: International Monetary Found (IMF).") + 
  theme_fivethirtyeight() + 
  scale_color_gdocs()
```

![](README-example2-1.png)
