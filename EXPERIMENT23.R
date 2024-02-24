data_values <- 6:30
a <- array(data_values, dim = c(4, 3, 2), dimnames = list(
  c("col", "col2", "col3", "col4"),
  c("row1", "row2", "row3"),
  c('part1', 'part2')
))
print(a)