test_that("bentobox package names are correct", {
  out <- bentobox_packages()
  expect_type(out,'character')
  expect_true("rsstap" %in% out)
})
