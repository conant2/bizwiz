
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bizwiz

<!-- badges: start -->
<!-- badges: end -->

This package was designed with the intention of making it easy to
generate fake business data to work with in R. The functions in this
package allow the user to quickly make dataframes with randomly
generated names, salaries, company revenue, and expenses. I hope that
you enjoy using the bizwiz package and that it streamlines your work.

## Installation

You can install the released version of bizwiz from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("bizwiz")
```

And the development version from
[GitHub](https://github.com/conant2/bizwiz) with:

``` r
# install.packages("devtools")
devtools::install_github("conant2/bizwiz")
```

## Examples

``` r
library(bizwiz)
# A staff data frame example
bizstaff(10)
#>    employeeID GivenName  Surname    income yearsemployed
#> 1           1  Veronica     Long  92111.03            11
#> 2           2     Lukas   Hickey  93143.72             8
#> 3           3     Laura Nakamura  52992.00             1
#> 4           4   Gabriel   Hughes  69369.61            13
#> 5           5       Mia   Joseph  86831.06            18
#> 6           6   Gabriel   Glover 104329.79            19
#> 7           7  Jonathan     Diaz  74403.99             7
#> 8           8   Bradley    Imamu  84242.00            14
#> 9           9       Lin     Park 114224.70            24
#> 10         10   Claudia      Lee  44623.89             1
#>                           Position
#> 1           Senior Project Manager
#> 2               Managing Executive
#> 3                 Junior Associate
#> 4                 Junior Devleoper
#> 5                 Junior Devleoper
#> 6  Customer Service Representative
#> 7                   Junior Analyst
#> 8                 Senior Developer
#> 9                 Senior Executive
#> 10 Customer Service Representative
```

``` r
library(bizwiz)
# A company data frame example
bizcompany(10)
#>    branchID  revenue expenses   profit units_sold
#> 1         1  9041324  8106566   934758     613187
#> 2         2  9883463  7669802  2213661     365694
#> 3         3 10095249  8160365  1934884     509650
#> 4         4 11068015 12226271 -1158256     436008
#> 5         5  7550945  8716936 -1165991     320159
#> 6         6 11265746 10222542  1043204     672297
#> 7         7 11591212  8671029  2920183     512358
#> 8         8  7588464  8699516 -1111052     326025
#> 9         9 10112070  8388604  1723466     440058
#> 10       10  8547369  7897947   649422     462605
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/master/examples>.
