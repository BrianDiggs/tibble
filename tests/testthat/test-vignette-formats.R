test_that("formats vignette", {
  skip_if_not_installed("pillar", "1.6.2")
  # Fails on Linux
  skip_on_ci()
  test_galley("formats")
})
