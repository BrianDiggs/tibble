# Setup

## Platform

|setting  |value                        |
|:--------|:----------------------------|
|version  |R version 3.4.0 (2017-04-21) |
|system   |x86_64, linux-gnu            |
|ui       |X11                          |
|language |(EN)                         |
|collate  |en_US.UTF-8                  |
|tz       |Zulu                         |
|date     |2017-05-13                   |

## Packages

|package        |*  |version    |date       |source                            |
|:--------------|:--|:----------|:----------|:---------------------------------|
|assertthat     |   |0.2.0      |2017-04-11 |cran (@0.2.0)                     |
|covr           |   |2.2.2      |2017-01-05 |cran (@2.2.2)                     |
|dplyr          |   |0.5.0      |2016-06-24 |cran (@0.5.0)                     |
|knitr          |   |1.15.1     |2016-11-22 |cran (@1.15.1)                    |
|microbenchmark |   |1.4-2.1    |2015-11-25 |cran (@1.4-2.1)                   |
|nycflights13   |   |0.2.2      |2017-01-27 |cran (@0.2.2)                     |
|Rcpp           |   |0.12.10    |2017-03-19 |CRAN (R 3.4.0)                    |
|rlang          |   |0.1        |2017-05-06 |CRAN (R 3.4.0)                    |
|rmarkdown      |   |1.5        |2017-04-26 |cran (@1.5)                       |
|testthat       |   |1.0.2      |2016-04-23 |cran (@1.0.2)                     |
|tibble         |   |1.3.0.9003 |2017-05-13 |Github (tidyverse/tibble@7503b32) |
|withr          |   |1.0.2      |2016-06-20 |CRAN (R 3.4.0)                    |

# Check results

18 packages with problems

|package       |version | errors| warnings| notes|
|:-------------|:-------|------:|--------:|-----:|
|atlantistools |0.4.1   |      0|        1|     1|
|dat           |0.2.0   |      1|        0|     0|
|dplyr         |0.5.0   |      1|        0|     2|
|ecoseries     |0.1.3   |      1|        0|     0|
|filesstrings  |0.4.0   |      1|        0|     0|
|FSelectorRcpp |0.1.3   |      1|        0|     2|
|ggimage       |0.0.4   |      1|        0|     0|
|haven         |1.0.0   |      2|        0|     2|
|huxtable      |0.2.2   |      1|        1|     0|
|monkeylearn   |0.1.1   |      0|        1|     0|
|officer       |0.1.3   |      2|        1|     0|
|poio          |0.0-3   |      0|        1|     0|
|readr         |1.1.0   |      1|        0|     1|
|rif           |0.1.0   |      1|        1|     0|
|rio           |0.5.0   |      2|        1|     0|
|srvyr         |0.2.1   |      0|        1|     0|
|tidyr         |0.6.2   |      1|        0|     0|
|unpivotr      |0.1.1   |      1|        0|     0|

## atlantistools (0.4.1)
Maintainer: Alexander Keth <alexander.keth@uni-hamburg.de>  
Bug reports: https://github.com/alketh/atlantistools/issues

0 errors | 1 warning  | 1 note 

```
checking sizes of PDF files under ‘inst/doc’ ... WARNING
  ‘gs+qpdf’ made some significant size reductions:
     compacted ‘model-calibration.pdf’ from 766Kb to 493Kb
  consider running tools::compactPDF(gs_quality = "ebook") on these files

checking installed package size ... NOTE
  installed size is  5.6Mb
  sub-directories of 1Mb or more:
    doc       1.5Mb
    extdata   3.0Mb
```

## dat (0.2.0)
Maintainer: Sebastian Warnholz <wahani@gmail.com>  
Bug reports: https://github.com/wahani/dat/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
  Running ‘testthat.R’ [11s/11s]
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
                                               ^
  tests/testthat/test-trunc-mat.R:5:3: style: Variable and function names should not be longer than 25 characters.
    print_arg_names_without_ellipsis <- setdiff(print_arg_names, "...")
    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  tests/testthat/test-trunc-mat.R:9:16: style: Variable and function names should not be longer than 25 characters.
    expect_equal(print_arg_names_without_ellipsis, trunc_mat_arg_names)
                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  
  
  testthat results ================================================================
  OK: 108 SKIPPED: 0 FAILED: 1
  1. Failure: Package Style (@test-lintr.R#5) 
  
  Error: testthat unit tests failed
  Execution halted
```

## dplyr (0.5.0)
Maintainer: Hadley Wickham <hadley@rstudio.com>  
Bug reports: https://github.com/hadley/dplyr/issues

1 error  | 0 warnings | 2 notes

```
checking tests ... ERROR
  Running ‘testthat.R’
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  
  
  testthat results ================================================================
  OK: 1501 SKIPPED: 1 FAILED: 8
  1. Failure: duplicated column name is explicit about which column (#996) (@test-arrange.r#139) 
  2. Failure: duplicated column name is explicit about which column (#996) (@test-arrange.r#143) 
  3. Failure: filter uses the white list (#566) (@test-filter.r#193) 
  4. Failure: ungrouped output (@test-output.R#10) 
  5. Failure: ungrouped output (@test-output.R#10) 
  6. Failure: ungrouped output (@test-output.R#10) 
  7. Failure: ungrouped output (@test-output.R#10) 
  8. Failure: ungrouped output (@test-output.R#10) 
  
  Error: testthat unit tests failed
  Execution halted

checking installed package size ... NOTE
  installed size is 23.4Mb
  sub-directories of 1Mb or more:
    libs  21.3Mb

checking compiled code ... NOTE
File ‘dplyr/libs/dplyr.so’:
  Found no calls to: ‘R_registerRoutines’, ‘R_useDynamicSymbols’

It is good practice to register native routines and to disable symbol
search.

See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
```

## ecoseries (0.1.3)
Maintainer: Fernando Teixeira <fernando.teixeira@fgv.br>  
Bug reports: https://github.com/fernote7/ecoseries/issues

1 error  | 0 warnings | 0 notes

```
checking examples ... ERROR
Running examples in ‘ecoseries-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: series_sidra
> ### Title: A function to extract Sidra series using their API
> ### Aliases: series_sidra
> ### Keywords: sidra
> 
> ### ** Examples
> 
> sidra=series_sidra(x = c(1612), from = 1990, to = 2015, territory = "brazil")
Error in function (type, msg, asError = TRUE)  : 
  Failed to connect to api.sidra.ibge.gov.br port 80: Connection timed out
Calls: series_sidra ... <Anonymous> -> curlPerform -> .Call -> <Anonymous> -> fun
Execution halted
```

## filesstrings (0.4.0)
Maintainer: Rory Nolan <rorynoolan@gmail.com>  
Bug reports: https://www.github.com/rorynolan/filesstrings/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
  Running ‘testthat.R’
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  Attributes: < Length mismatch: comparison on first 2 components >
  
  
  2. Failure: MergeTablesOnDisk works (@test_files.R#82) -------------------------
  readr::read_csv("merged.csv") not equal to tibble::tibble(x = c(1.5, 1.5), y = c(2.5, 29.5)).
  Attributes: < Length mismatch: comparison on first 2 components >
  
  
  testthat results ================================================================
  OK: 141 SKIPPED: 0 FAILED: 2
  1. Failure: MergeTablesOnDisk works (@test_files.R#80) 
  2. Failure: MergeTablesOnDisk works (@test_files.R#82) 
  
  Error: testthat unit tests failed
  Execution halted
```

## FSelectorRcpp (0.1.3)
Maintainer: Zygmunt Zawadzki <zygmunt@zstat.pl>  
Bug reports: https://github.com/mi2-warsaw/FSelectorRcpp/issues

1 error  | 0 warnings | 2 notes

```
checking tests ... ERROR
  Running ‘testthat.R’
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  The following objects are masked from 'package:base':
  
      intersect, setdiff, setequal, union
  
  > library(entropy)
  
  Attaching package: 'entropy'
  
  The following object is masked from 'package:FSelectorRcpp':
  
      discretize
  
  > 
  > test_check("FSelectorRcpp")
  Segmentation fault (core dumped)

checking package dependencies ... NOTE
Package suggested but not available for checking: ‘RTCGA.rnaseq’

checking installed package size ... NOTE
  installed size is  9.6Mb
  sub-directories of 1Mb or more:
    doc    2.2Mb
    libs   7.2Mb
```

## ggimage (0.0.4)
Maintainer: Guangchuang Yu <guangchuangyu@gmail.com>  
Bug reports: https://github.com/GuangchuangYu/ggimage/issues

1 error  | 0 warnings | 0 notes

```
checking package dependencies ... ERROR
Packages required but not available: ‘EBImage’ ‘gridGraphics’

See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
manual.
```

## haven (1.0.0)
Maintainer: Hadley Wickham <hadley@rstudio.com>  
Bug reports: https://github.com/hadley/haven/issues

2 errors | 0 warnings | 2 notes

```
checking examples ... ERROR
Running examples in ‘haven-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: read_dta
> ### Title: Read and write Stata DTA files.
> ### Aliases: read_dta read_stata write_dta
> 
> ### ** Examples
... 16 lines ...
10         4.9        3.1         1.5        0.1  setosa
# ... with 140 more rows
> 
> tmp <- tempfile(fileext = ".dta")
> write_dta(mtcars, tmp)
> read_dta(tmp)
Invalid timestamp string (length=17): 13 Mai 2017 10:31
Error in df_parse_dta_file(spec, encoding) : 
  Failed to parse /tmp/RtmpeVvhzx/file23e12bcf0193.dta: The file's timestamp string is invalid.
Calls: read_dta -> df_parse_dta_file -> .Call
Execution halted

checking tests ... ERROR
  Running ‘testthat.R’
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  
  testthat results ================================================================
  OK: 132 SKIPPED: 0 FAILED: 9
  1. Error: can roundtrip basic types (@test-write-dta.R#5) 
  2. Error: can roundtrip missing values (as much as possible) (@test-write-dta.R#12) 
  3. Error: can roundtrip date times (@test-write-dta.R#23) 
  4. Error: infinity gets converted to NA (@test-write-dta.R#28) 
  5. Error: factors become labelleds (@test-write-dta.R#33) 
  6. Error: labels are preserved (@test-write-dta.R#44) 
  7. Error: labelleds are round tripped (@test-write-dta.R#52) 
  8. Error: factors become labelleds (@test-write-dta.R#59) 
  9. Error: labels are converted to utf-8 (@test-write-dta.R#73) 
  
  Error: testthat unit tests failed
  Execution halted

checking for GNU extensions in Makefiles ... NOTE
GNU make is a SystemRequirements.

checking compiled code ... NOTE
File ‘haven/libs/haven.so’:
  Found no calls to: ‘R_registerRoutines’, ‘R_useDynamicSymbols’

It is good practice to register native routines and to disable symbol
search.

See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
```

## huxtable (0.2.2)
Maintainer: David Hugh-Jones <davidhughjones@gmail.com>  
Bug reports: https://github.com/hughjonesd/huxtable/issues

1 error  | 1 warning  | 0 notes

```
checking tests ... ERROR
  Running ‘testthat.R’
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  4: withCallingHandlers(withVisible(code), warning = handle_warning, message = handle_message) at /tmp/Rtmpf6YF8j/devtools1eed5a0addc9/testthat/R/evaluate-promise.R:42
  5: withVisible(code) at /tmp/Rtmpf6YF8j/devtools1eed5a0addc9/testthat/R/evaluate-promise.R:42
  6: rmarkdown::render("rowheight-multicol-test.Rmd", quiet = TRUE) at /tmp/Rtmpf6YF8j/devtools1eed5a0addc9/testthat/R/evaluate-promise.R:42
  7: convert(output_file, run_citeproc) at /tmp/Rtmp2UybSq/devtoolsc0a2aa8de4c/rmarkdown/R/render.R:655
  8: pandoc_convert(utf8_input, pandoc_to, output_format$pandoc$from, output, citeproc, 
         output_format$pandoc$args, !quiet) at /tmp/Rtmp2UybSq/devtoolsc0a2aa8de4c/rmarkdown/R/render.R:585
  9: stop("pandoc document conversion failed with error ", result, call. = FALSE) at /tmp/Rtmp2UybSq/devtoolsc0a2aa8de4c/rmarkdown/R/pandoc.R:100
  
  testthat results ================================================================
  OK: 200 SKIPPED: 14 FAILED: 2
  1. Error: slice, filter and arrange work (@test-dplyr.R#24) 
  2. Error: Row heights do not screw up latex multicol (@test-with-pandoc.R#20) 
  
  Error: testthat unit tests failed
  Execution halted

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Quitting from lines 320-337 (huxtable.Rmd) 
Error: processing vignette 'huxtable.Rmd' failed with diagnostics:
is.data.frame(df) is not TRUE
Execution halted

```

## monkeylearn (0.1.1)
Maintainer: Maëlle Salmon <maelle.salmon@yahoo.se>  
Bug reports: http://github.com/ropenscilabs/monkeylearn/issues

0 errors | 1 warning  | 0 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
pandoc: Could not fetch http://ropensci.org/public_images/github_footer.png
TlsExceptionHostPort (HandshakeFailed Error_EOF) "ropensci.org" 80
Error: processing vignette 'monkeylearn_intro.Rmd' failed with diagnostics:
pandoc document conversion failed with error 67
Execution halted

```

## officer (0.1.3)
Maintainer: David Gohel <david.gohel@ardata.fr>  
Bug reports: https://github.com/davidgohel/officer/issues

2 errors | 1 warning  | 0 notes

```
checking examples ... ERROR
Running examples in ‘officer-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: slip_in_img
> ### Title: append an image
> ### Aliases: slip_in_img
> 
> ### ** Examples
> 
> library(magrittr)
> img.file <- file.path( Sys.getenv("R_HOME"), "doc", "html", "logo.jpg" )
> x <- read_docx() %>%
+   body_add_par("R logo: ", style = "Normal") %>%
+   slip_in_img(src = img.file, style = "strong", width = .3, height = .3)
Error: file.exists(src) is not TRUE
Execution halted

checking tests ... ERROR
  Running ‘testthat.R’ [151s/154s]
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  8: function_list[[k]](value) at /tmp/RtmpT6Czo8/R.INSTALL13c163d710cb/magrittr/R/freduce.R:20
  9: ph_with_img(., type = "body", src = img.file, height = 1.06, width = 1.39)
  10: external_img(src, width = width, height = height)
  11: stopifnot(file.exists(src))
  12: stop(msg, call. = FALSE, domain = NA)
  
  testthat results ================================================================
  OK: 341 SKIPPED: 0 FAILED: 4
  1. Error: image add  (@test-docx-add.R#68) 
  2. Error: pml fp_border (@test-fp_cell.R#75) 
  3. Error: css fp_border (@test-fp_cell.R#165) 
  4. Error: add img into placeholder (@test-pptx-add.R#67) 
  
  Error: testthat unit tests failed
  Execution halted

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...

Attaching package: 'dplyr'

The following objects are masked from 'package:stats':

    filter, lag

The following objects are masked from 'package:base':

    intersect, setdiff, setequal, union

Quitting from lines 180-190 (powerpoint.Rmd) 
Error: processing vignette 'powerpoint.Rmd' failed with diagnostics:
file.exists(src) is not TRUE
Execution halted

```

## poio (0.0-3)
Maintainer: Richard Cotton <richierocks@gmail.com>  
Bug reports: https://github.com/RL10N/poio/issues

0 errors | 1 warning  | 0 notes

```
checking Rd cross-references ... WARNING
Package unavailable to check Rd xrefs: ‘ISOcodes’
Missing link or links in documentation object 'print.po.Rd':
  ‘[tibble]{print.tbl_df}’

See section 'Cross-references' in the 'Writing R Extensions' manual.

```

## readr (1.1.0)
Maintainer: Jim Hester <james.hester@rstudio.com>  
Bug reports: https://github.com/tidyverse/readr/issues

1 error  | 0 warnings | 1 note 

```
checking tests ... ERROR
  Running ‘testthat.R’
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  Actual value: "Column `b` must be length 1 or 3, not 2"
  
  
  2. Failure: fwf_cols throws error when arguments are not length 1 or 2 (@test-read-fwf.R#152) 
  error$message does not match "Variables must be length 1 or .*".
  Actual value: "Column `a` must be length 1 or 2, not 0"
  
  
  testthat results ================================================================
  OK: 488 SKIPPED: 2 FAILED: 2
  1. Failure: fwf_cols throws error when arguments are not length 1 or 2 (@test-read-fwf.R#151) 
  2. Failure: fwf_cols throws error when arguments are not length 1 or 2 (@test-read-fwf.R#152) 
  
  Error: testthat unit tests failed
  Execution halted

checking installed package size ... NOTE
  installed size is 12.5Mb
  sub-directories of 1Mb or more:
    libs  11.8Mb
```

## rif (0.1.0)
Maintainer: Scott Chamberlain <myrmecocystus+r@gmail.com>  
Bug reports: https://github.com/ropensci/rif/issues

1 error  | 1 warning  | 0 notes

```
checking tests ... ERROR
  Running ‘test-all.R’ [0m/50m]
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
  testthat results ================================================================
  OK: 0 SKIPPED: 0 FAILED: 22
  1. Error: federation_data (@test-federation_data.R#4) 
  2. Error: federation_facet (@test-federation_facet.R#4) 
  3. Error: federation_search (@test-federation_search.R#4) 
  4. Error: lexical_chunks (@test-lexical_chunks.R#4) 
  5. Error: lexical_entities (@test-lexical_entities.R#4) 
  6. Error: lexical_pmchunks (@test-lexical_pmchunks.R#4) 
  7. Error: lexical_pmentities (@test-lexical_pmentities.R#4) 
  8. Error: lexical_pos (@test-lexical_pos.R#4) 
  9. Error: lexical_sentences (@test-lexical_sentences.R#4) 
  1. ...
  
  Error: testthat unit tests failed
  Execution halted

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Quitting from lines 51-53 (rif_vignette.Rmd) 
Error: processing vignette 'rif_vignette.Rmd' failed with diagnostics:
Internal Server Error (HTTP 500)
Execution halted

```

## rio (0.5.0)
Maintainer: Thomas J. Leeper <thosjleeper@gmail.com>  
Bug reports: https://github.com/leeper/rio/issues

2 errors | 1 warning  | 0 notes

```
checking examples ... ERROR
Running examples in ‘rio-Ex.R’ failed
The error most likely occurred in:

> base::assign(".ptime", proc.time(), pos = "CheckExEnv")
> ### Name: convert
> ### Title: Convert from one file format to another
> ### Aliases: convert
> 
> ### ** Examples
> 
> # create a file to convert
> export(mtcars, "mtcars.dta")
> 
> # convert Stata to CSV and open converted file
> convert("mtcars.dta", "mtcars.csv")
Invalid timestamp string (length=17): 13 Mai 2017 10:50
Error in df_parse_dta_file(spec, encoding) : 
  Failed to parse /home/muelleki/git/R/tibble/revdep/checks/rio.Rcheck/mtcars.dta: The file's timestamp string is invalid.
Calls: convert ... standardize_attributes -> read_dta -> df_parse_dta_file -> .Call
Execution halted

checking tests ... ERROR
  Running ‘test-all.R’
Running the tests in ‘tests/test-all.R’ failed.
Last 13 lines of output:
  
  3. Error: Data identical (haven formats) (@test_identical.R#27) ----------------
  Failed to parse /home/muelleki/git/R/tibble/revdep/checks/rio.Rcheck/tests/testthat/mtcars.dta: The file's timestamp string is invalid.
  1: expect_equivalent(import(export(mtcars, "mtcars.dta")), mtcars) at testthat/test_identical.R:27
  2: compare(object, expected, check.attributes = FALSE) at /tmp/Rtmpf6YF8j/devtools1eed5a0addc9/testthat/R/expect-equality.R:71
  3: import(export(mtcars, "mtcars.dta")) at /tmp/Rtmpf6YF8j/devtools1eed5a0addc9/testthat/R/compare.R:12
  4: .import(file = file, ...)
  5: .import.rio_dta(file = file, ...)
  6: standardize_attributes(read_dta(file = file))
  7: read_dta(file = file)
  8: df_parse_dta_file(spec, encoding) at /tmp/RtmpuKlkGu/devtools18334695b5a3/haven/R/haven.R:149
  
  DONE ===========================================================================
  Error: Test failures
  Execution halted

checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
Quitting from lines 88-97 (rio.Rmd) 
Error: processing vignette 'rio.Rmd' failed with diagnostics:
Failed to parse /home/muelleki/git/R/tibble/revdep/checks/rio.Rcheck/vign_test/rio/vignettes/mtcars.dta: The file's timestamp string is invalid.
Execution halted

```

## srvyr (0.2.1)
Maintainer: Greg Freedman Ellis <greg.freedman@gmail.com>  
Bug reports: https://github.com/gergness/srvyr/issues

0 errors | 1 warning  | 0 notes

```
checking re-building of vignette outputs ... WARNING
Error in re-building vignettes:
  ...
17: fun(x, options = options)
18: value_fun(ev$value, ev$visible)
19: withVisible(value_fun(ev$value, ev$visible))
20: withCallingHandlers(withVisible(value_fun(ev$value, ev$visible)),     warning = wHandler, error = eHandler, message = mHandler)
21: handle(pv <- withCallingHandlers(withVisible(value_fun(ev$value,     ev$visible)), warning = wHandler, error = eHandler, message = mHandler))
22: evaluate_call(expr, parsed$src[[i]], envir = envir, enclos = enclos,     debug = debug, last = i == length(out), use_try = stop_on_error !=         2L, keep_warning = keep_warning, keep_message = keep_message,     output_handler = output_handler, include_timing = include_timing)
23: evaluate(code, envir = env, new_device = FALSE, keep_warning = !isFALSE(options$warning),     keep_message = !isFALSE(options$message), stop_on_error = if (options$error &&         options$include) 0L else 2L, output_handler = knit_handlers(options$render,         options))
... 8 lines ...
31: knitr::knit(knit_input, knit_output, envir = envir, quiet = quiet,     encoding = encoding)
32: rmarkdown::render(file, encoding = encoding, quiet = quiet, envir = globalenv())
33: vweave_rmarkdown(...)
34: engine$weave(file, quiet = quiet, encoding = enc)
35: doTryCatch(return(expr), name, parentenv, handler)
36: tryCatchOne(expr, names, parentenv, handlers[[1L]])
37: tryCatchList(expr, classes, parentenv, handlers)
38: tryCatch({    engine$weave(file, quiet = quiet, encoding = enc)    setwd(startdir)    find_vignette_product(name, by = "weave", engine = engine)}, error = function(e) {    stop(gettextf("processing vignette '%s' failed with diagnostics:\n%s",         file, conditionMessage(e)), domain = NA, call. = FALSE)})
39: buildVignettes(dir = "/home/muelleki/git/R/tibble/revdep/checks/srvyr.Rcheck/vign_test/srvyr")
An irrecoverable exception occurred. R is aborting now ...
Segmentation fault (core dumped)
```

## tidyr (0.6.2)
Maintainer: Hadley Wickham <hadley@rstudio.com>  
Bug reports: https://github.com/tidyverse/tidyr/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
  Running ‘testthat.R’
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  > library(testthat)
  > library(tidyr)
  > 
  > test_check("tidyr")
  1. Failure: errors are raised (@test-drop_na.R#53) -----------------------------
  error$message does not match "Unknown column".
  Actual value: "Column `z` not found"
  
  
  testthat results ================================================================
  OK: 192 SKIPPED: 0 FAILED: 1
  1. Failure: errors are raised (@test-drop_na.R#53) 
  
  Error: testthat unit tests failed
  Execution halted
```

## unpivotr (0.1.1)
Maintainer: Duncan Garmonsway <nacnudus@gmail.com>  
Bug reports: https://github.com/nacnudus/unpivotr/issues

1 error  | 0 warnings | 0 notes

```
checking tests ... ERROR
  Running ‘testthat.R’
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  
  The following objects are masked from 'package:stats':
  
      filter, lag
  
  The following objects are masked from 'package:base':
  
      intersect, setdiff, setequal, union
  
  testthat results ================================================================
  OK: 119 SKIPPED: 0 FAILED: 1
  1. Failure: 'cross' works (@test-anchor.R#19) 
  
  Error: testthat unit tests failed
  Execution halted
```

