test.for.each <- function() {
  checkEquals(capture.output(for.each(function(a, b)
                                      cat(a + b, ',', sep=''),
                                      list(1, 2),
                                      list(3, 4))),
              "4,6,",
              'list-oriented for.each')
}

test.pair.fold.right <- function() {
  checkEquals(pair.fold.right(function(a, b, accum)
                              append(a, append(b, accum)) ,
                              NULL,
                              list(1, 2),
                              list(3, 4)),
              list(1, 2, 3, 4, 2, 4),
              'pair.fold.right on multiple lists')
}
