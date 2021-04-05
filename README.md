
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

You can install the development version from
[GitHub](https://github.com/conant2/bizwiz) with:

``` r
# install.packages("devtools")
devtools::install_github("conant2/bizwiz")
```

## Examples

bizstaff gives a dataframe of employees with variables: employeeID
(unique employee IDs), GivenName (first, or given name), Surname (last
name), income (the income of the employee), yearsemployed (number of
years the employee has worked), Position (the job title of the
employee).

``` r
library(bizwiz)
# A staff data frame example
bizstaff(10)
#>    employeeID GivenName      Surname    income yearsemployed
#> 1           1   Stephen      Mertens 125061.50            22
#> 2           2    Dinesh      Morales  95397.23            15
#> 3           3       Ana        Cohen  79047.37             6
#> 4           4    Jamila      Mbafeno  99411.84            15
#> 5           5      Kian    Rodriguez  81693.37             3
#> 6           6     Jorge        Rolle  63409.71             9
#> 7           7      Andy Papadopoulos 100126.19            18
#> 8           8      Ruth      Ibrahim  73106.69            16
#> 9           9    Dinesh         Bibi 134037.33            24
#> 10         10 Alejandro          Eke 115641.83            22
#>                           Position
#> 1            Junior Market Analyst
#> 2                 Office Assistant
#> 3                Financial Officer
#> 4                    Administrator
#> 5                       File Clerk
#> 6             Data Entry Assistant
#> 7       Public Relations Executive
#> 8                Financial Officer
#> 9  Customer Service Representative
#> 10      Public Relations Executive
```

bizcompany gives a dataframe of company branches with variables:
branchID (unique branch IDs), revenue (the revenue for the branch),
expenses (the expenses for the branch), profit (the difference between
revenue and expenses), units\_sold (the number of items sold for the
branch).

``` r
library(bizwiz)
# A company data frame example
bizcompany(10)
#>    branchID  revenue expenses   profit units_sold
#> 1         1 12016487 10150071  1866416     518309
#> 2         2  6683725  9488443 -2804718     658367
#> 3         3  7951856  8240687  -288831     733991
#> 4         4  5046844  7204118 -2157274     757225
#> 5         5 12514155 10566240  1947915     469101
#> 6         6 11616587  6960852  4655735     497041
#> 7         7 12280435 10644793  1635642     549933
#> 8         8 11122438  9784774  1337664     442425
#> 9         9  8058471  8120558   -62087     506672
#> 10       10  6116517 10988504 -4871987     410450

```
