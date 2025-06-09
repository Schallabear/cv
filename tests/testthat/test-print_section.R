source('../../CV_printing_functions.R')

cv <- list(
  entries_data = data.frame(
    section = 'other',
    title = 'Title',
    description_bullets = 'Desc',
    loc = 'Loc',
    institution = 'Inst',
    timeline = 'Time',
    stringsAsFactors = FALSE
  ),
  pdf_mode = FALSE,
  links = character()
)

test_that('print_section handles missing section', {
  expect_error(print_section(cv, 'nonexistent'), NA)
})
