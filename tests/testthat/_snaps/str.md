# output test

    Code
      str(as_tibble(mtcars), width = 70L)
    Output
      tibble [32 x 11] (S3: tbl_df/tbl/data.frame)
       $ mpg : num [1:32] 21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
       $ cyl : num [1:32] 6 6 4 6 8 6 8 4 4 6 ...
       $ disp: num [1:32] 160 160 108 258 360 ...
       $ hp  : num [1:32] 110 110 93 110 175 105 245 62 95 123 ...
       $ drat: num [1:32] 3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
       $ wt  : num [1:32] 2.62 2.88 2.32 3.21 3.44 ...
       $ qsec: num [1:32] 16.5 17 18.6 19.4 17 ...
       $ vs  : num [1:32] 0 0 1 1 0 1 0 1 1 1 ...
       $ am  : num [1:32] 1 1 1 0 0 0 0 0 0 0 ...
       $ gear: num [1:32] 4 4 4 3 3 3 3 4 4 4 ...
       $ carb: num [1:32] 4 4 1 1 2 1 4 2 2 4 ...
    Code
      str(as_tibble(iris), width = 70L)
    Output
      tibble [150 x 5] (S3: tbl_df/tbl/data.frame)
       $ Sepal.Length: num [1:150] 5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
       $ Sepal.Width : num [1:150] 3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
       $ Petal.Length: num [1:150] 1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
       $ Petal.Width : num [1:150] 0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
       $ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...
    Code
      # No columns
    Code
      str(as_tibble(iris[integer()]), width = 70L)
    Output
      tibble [150 x 0] (S3: tbl_df/tbl/data.frame)
       Named list()
    Code
      # Non-syntactic names
    Code
      df <- tibble(`mean(x)` = 5, `var(x)` = 3)
    Code
      str(df, width = 28)
    Output
      tibble [1 x 2] (S3: tbl_df/tbl/data.frame)
       $ mean(x): num 5
       $ var(x) : num 3
    Code
      str(as_tibble(df_all), width = 70L)
    Output
      tibble [3 x 9] (S3: tbl_df/tbl/data.frame)
       $ a: num [1:3] 1 2.5 NA
       $ b: int [1:3] 1 2 NA
       $ c: logi [1:3] TRUE FALSE NA
       $ d: chr [1:3] "a" "b" NA
       $ e: Factor w/ 2 levels "a","b": 1 2 NA
       $ f: Date[1:3], format: "2015-12-10" ...
       $ g: POSIXct[1:3], format: "2015-12-09 10:51:35" ...
       $ h:List of 3
        ..$ : int 1
        ..$ : int 2
        ..$ : int NA
       $ i:List of 3
        ..$ :List of 2
        .. ..$ : num 1
        .. ..$ : int [1:2] 2 3
        ..$ :List of 1
        .. ..$ : int [1:3] 4 5 6
        ..$ :List of 1
        .. ..$ : logi NA
    Code
      # options(tibble.width = 50)
    Code
      withr::with_options(list(tibble.width = 50), str(as_tibble(df_all)))
    Output
      tibble [3 x 9] (S3: tbl_df/tbl/data.frame)
       $ a: num [1:3] 1 2.5 NA
       $ b: int [1:3] 1 2 NA
       $ c: logi [1:3] TRUE FALSE NA
       $ d: chr [1:3] "a" "b" NA
       $ e: Factor w/ 2 levels "a","b": 1 2 NA
       $ f: Date[1:3], format: "2015-12-10" "2015-12-11" ...
       $ g: POSIXct[1:3], format: "2015-12-09 10:51:35" "2015-12-09 10:51:36" ...
       $ h:List of 3
        ..$ : int 1
        ..$ : int 2
        ..$ : int NA
       $ i:List of 3
        ..$ :List of 2
        .. ..$ : num 1
        .. ..$ : int [1:2] 2 3
        ..$ :List of 1
        .. ..$ : int [1:3] 4 5 6
        ..$ :List of 1
        .. ..$ : logi NA
    Code
      # options(tibble.width = 35)
    Code
      withr::with_options(list(tibble.width = 35), str(as_tibble(df_all)))
    Output
      tibble [3 x 9] (S3: tbl_df/tbl/data.frame)
       $ a: num [1:3] 1 2.5 NA
       $ b: int [1:3] 1 2 NA
       $ c: logi [1:3] TRUE FALSE NA
       $ d: chr [1:3] "a" "b" NA
       $ e: Factor w/ 2 levels "a","b": 1 2 NA
       $ f: Date[1:3], format: "2015-12-10" "2015-12-11" ...
       $ g: POSIXct[1:3], format: "2015-12-09 10:51:35" "2015-12-09 10:51:36" ...
       $ h:List of 3
        ..$ : int 1
        ..$ : int 2
        ..$ : int NA
       $ i:List of 3
        ..$ :List of 2
        .. ..$ : num 1
        .. ..$ : int [1:2] 2 3
        ..$ :List of 1
        .. ..$ : int [1:3] 4 5 6
        ..$ :List of 1
        .. ..$ : logi NA
    Code
      # non-tibble
    Code
      str(5)
    Output
       num 5
    Code
      iris2 <- as_unknown_rows(iris)
    Code
      str(iris2, width = 70L)
    Output
      unknown_rows [?? x 5] (S3: unknown_rows/tbl_df/tbl/data.frame)
       $ Sepal.Length: num [1:150] 5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
       $ Sepal.Width : num [1:150] 3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
       $ Petal.Length: num [1:150] 1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
       $ Petal.Width : num [1:150] 0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
       $ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...
    Code
      Species <- unique(iris$Species)
    Code
      data <- unname(split(iris, iris$Species))
    Code
      nested_iris_df <- tibble(Species, data)
    Code
      str(nested_iris_df, width = 70L)
    Output
      tibble [3 x 2] (S3: tbl_df/tbl/data.frame)
       $ Species: Factor w/ 3 levels "setosa","versicolor",..: 1 2 3
       $ data   :List of 3
        ..$ :'data.frame':	50 obs. of  5 variables:
        .. ..$ Sepal.Length: num [1:50] 5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
        .. ..$ Sepal.Width : num [1:50] 3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
        .. ..$ Petal.Length: num [1:50] 1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
        .. ..$ Petal.Width : num [1:50] 0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
        .. ..$ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...
        ..$ :'data.frame':	50 obs. of  5 variables:
        .. ..$ Sepal.Length: num [1:50] 7 6.4 6.9 5.5 6.5 5.7 6.3 4.9 6.6 5.2 ...
        .. ..$ Sepal.Width : num [1:50] 3.2 3.2 3.1 2.3 2.8 2.8 3.3 2.4 2.9 2.7 ...
        .. ..$ Petal.Length: num [1:50] 4.7 4.5 4.9 4 4.6 4.5 4.7 3.3 4.6 3.9 ...
        .. ..$ Petal.Width : num [1:50] 1.4 1.5 1.5 1.3 1.5 1.3 1.6 1 1.3 1.4 ...
        .. ..$ Species     : Factor w/ 3 levels "setosa","versicolor",..: 2 2 2 2 2 2 2 2 2 2 ...
        ..$ :'data.frame':	50 obs. of  5 variables:
        .. ..$ Sepal.Length: num [1:50] 6.3 5.8 7.1 6.3 6.5 7.6 4.9 7.3 6.7 7.2 ...
        .. ..$ Sepal.Width : num [1:50] 3.3 2.7 3 2.9 3 3 2.5 2.9 2.5 3.6 ...
        .. ..$ Petal.Length: num [1:50] 6 5.1 5.9 5.6 5.8 6.6 4.5 6.3 5.8 6.1 ...
        .. ..$ Petal.Width : num [1:50] 2.5 1.9 2.1 1.8 2.2 2.1 1.7 1.8 1.8 2.5 ...
        .. ..$ Species     : Factor w/ 3 levels "setosa","versicolor",..: 3 3 3 3 3 3 3 3 3 3 ...
    Code
      data <- map(data, as_tibble)
    Code
      nested_iris_tbl <- tibble(Species, data)
    Code
      str(nested_iris_tbl, width = 70L)
    Output
      tibble [3 x 2] (S3: tbl_df/tbl/data.frame)
       $ Species: Factor w/ 3 levels "setosa","versicolor",..: 1 2 3
       $ data   :List of 3
        ..$ : tibble [50 x 5] (S3: tbl_df/tbl/data.frame)
        .. ..$ Sepal.Length: num [1:50] 5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
        .. ..$ Sepal.Width : num [1:50] 3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
        .. ..$ Petal.Length: num [1:50] 1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
        .. ..$ Petal.Width : num [1:50] 0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
        .. ..$ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...
        ..$ : tibble [50 x 5] (S3: tbl_df/tbl/data.frame)
        .. ..$ Sepal.Length: num [1:50] 7 6.4 6.9 5.5 6.5 5.7 6.3 4.9 6.6 5.2 ...
        .. ..$ Sepal.Width : num [1:50] 3.2 3.2 3.1 2.3 2.8 2.8 3.3 2.4 2.9 2.7 ...
        .. ..$ Petal.Length: num [1:50] 4.7 4.5 4.9 4 4.6 4.5 4.7 3.3 4.6 3.9 ...
        .. ..$ Petal.Width : num [1:50] 1.4 1.5 1.5 1.3 1.5 1.3 1.6 1 1.3 1.4 ...
        .. ..$ Species     : Factor w/ 3 levels "setosa","versicolor",..: 2 2 2 2 2 2 2 2 2 2 ...
        ..$ : tibble [50 x 5] (S3: tbl_df/tbl/data.frame)
        .. ..$ Sepal.Length: num [1:50] 6.3 5.8 7.1 6.3 6.5 7.6 4.9 7.3 6.7 7.2 ...
        .. ..$ Sepal.Width : num [1:50] 3.3 2.7 3 2.9 3 3 2.5 2.9 2.5 3.6 ...
        .. ..$ Petal.Length: num [1:50] 6 5.1 5.9 5.6 5.8 6.6 4.5 6.3 5.8 6.1 ...
        .. ..$ Petal.Width : num [1:50] 2.5 1.9 2.1 1.8 2.2 2.1 1.7 1.8 1.8 2.5 ...
        .. ..$ Species     : Factor w/ 3 levels "setosa","versicolor",..: 3 3 3 3 3 3 3 3 3 3 ...
