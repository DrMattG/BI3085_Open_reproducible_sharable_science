library(tidyverse)
library(openalexR)
# Define the concept for Ecology
ecology_query <- "ecology"

# Fetch ecology-related papers
ecology_papers <- oa_fetch(
  entity = "works",
  search = ecology_query,
  from_publication_date = "2014-01-01",
  to_publication_date = "2024-09-18",
  count_only = FALSE,
  verbose = TRUE
)

# Check the first few results
head(ecology_papers)

# Filter for papers related to open science
open_science_papers <- ecology_papers[grepl("open science", ecology_papers$title, ignore.case = TRUE) |
                                        grepl("open science", ecology_papers$abstract, ignore.case = TRUE), ]

# Check the first few results
head(open_science_papers)

