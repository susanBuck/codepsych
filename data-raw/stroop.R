# This file create the stroop data set for the package, loading it from stroop.csv
# The end result is data/stroop.rda

# Load the data
stroop <- read.csv(
    "data-raw/stroop.csv",
    stringsAsFactors = FALSE
)

# Do some manipulations
stroop$condition <- factor(
    stroop$condition,
    levels = c("congruent", "incongruent")
)

stroop$word <- factor(
    stroop$word,
    levels = c("red", "green", "blue")
)

stroop$color <- factor(
    stroop$color,
    levels = c("red", "green", "blue")
)

stroop$response <- factor(
    stroop$response,
    levels = c("r", "g", "b")
)

# Save to data/stroop.rda, making it available to the package
usethis::use_data(stroop, overwrite = TRUE)
