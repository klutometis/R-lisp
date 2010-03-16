test.for.each <- function() {
  checkEquals(capture.output(for.each(function(a, b)
                                      cat(a + b, ',', sep=''),
                                      list(1, 2),
                                      list(3, 4))),
              "4,6,",
              'list-oriented for.each')
}
