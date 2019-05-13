library(usethis)
create_package("~/Desktop/nyrconf")

# Set up roxygen (run once)
use_roxygen_md()
# Insert roxygen skeleton (menu option)

# See if package name is taken / means something already
available::available("nyrconf")

# Setting up testthat
use_testthat()
use_test("i_love_nyrconf")

# Make a website with pkgdown
pkgdown::build_site()

library((plumber))
r <- plumb("rest_controller.R")
r$run(port=80, )
