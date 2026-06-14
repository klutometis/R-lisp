# cran-comments.md

## Resubmission addressing reviewer feedback

This resubmits `lisp` 0.2 after Benjamin Altmann's review of the
2026-05-22 submission. The two requested changes have been made:

* Software/specification names are now single-quoted in the Title and
  Description ('SRFI-1'), while this package's own exported function
  names (car, cdr, zip, pairwise, for.each, pair.fold.right) are no
  longer quoted.
* Added `\value` sections to the `.Rd` files that were missing them:
  `last.Rd`, `pair.fold.right.Rd`, and `zip.with.names.Rd`.

## Background

`lisp` was archived on CRAN on 2022-03-07 because check NOTEs were not
corrected in time. The maintainer's email address (pcd@roxygen.org)
had lapsed during a period of inactivity, which is why CRAN's earlier
correspondence went unanswered. The address is active again.

This version also (from the original 0.2 resubmission):

* Adds `Authors@R` to `DESCRIPTION`.
* Adds `importFrom(utils, tail)` so that `last()` no longer triggers a
  "no visible global function definition for 'tail'" NOTE.
* Relocates the previously NOTEd top-level `package.R` to `inst/`.
* Adds a reference URL for SRFI-1.

## Test environments

* local: Debian GNU/Linux rodete, R 4.5.2 (2025-10-31).

## R CMD check results

0 errors | 0 warnings | 2 NOTEs

The two remaining NOTEs are:

1. "New submission / Package was archived on CRAN" — expected for a
   resubmission of an archived package.
2. "Skipping checking HTML validation: no command 'tidy' found" — a
   local-environment NOTE only; HTML Tidy is not installed on the
   submitter's machine.

## Downstream impact

`lisp` is a build-time dependency of the CRAN package `functional`,
which was archived on 2026-06-08 when this dependency could not be
restored in time. `functional` 0.7 will be resubmitted as soon as
`lisp` is back on CRAN, restoring it and its reverse dependencies.
