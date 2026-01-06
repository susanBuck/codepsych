stroop <- read.csv(
    "data-raw/stroop.csv",
    stringsAsFactors = FALSE
)

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

usethis::use_data(stroop, overwrite = TRUE)
