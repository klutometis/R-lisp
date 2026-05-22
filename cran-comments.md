# cran-comments.md

## Resubmission of an archived package

`lisp` was archived on CRAN on 2022-03-07 because check NOTEs were not
corrected in time.  The maintainer's email address (`pcd@roxygen.org`)
had lapsed during a period of inactivity and CRAN's correspondence at
the time went unanswered.  The address is now active again.

This submission:

* Re-activates `pcd@roxygen.org` (the original and continuing
  maintainer address, Peter Danenberg).
* Adds `Authors@R` to `DESCRIPTION`.
* Adds `importFrom(utils, tail)` so that `last()` no longer triggers a
  "no visible global function definition for 'tail'" NOTE.
* Bumps the version from 0.1.1 to 0.2 and refreshes `Date`.
* Expands the `Description` field and adds a reference URL for SRFI-1.
* The previously NOTEd top-level `package.R` had already been moved to
  `inst/` in the upstream repository (commit 49a5660) but never
  resubmitted; that fix is included here as well.

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
which is itself scheduled for archival on 2026-06-08 and which we
intend to resubmit shortly after `lisp` is restored to CRAN.
