# adultIncomeDashboard

An R package that provides a comprehensive analysis of the Adult Census Income, including:

- Data cleaning and summary statistics  
- Visual exploration using `ggplot2`  
- Hypothesis testing (t-tests, ANOVA, chi-square)  
- Logistic regression modeling  
- One RMarkdown analysis script (assignment.Rmd) for reproducible research  
- Dashboard for interactive exploration  

---

## Project Structure

adultIncomeDashboard/
├── analysis/
│   └── assignment.Rmd
├── inst/
│   └── app/
│       └── app.R
├── R/
│   ├── helpers.R
│   └── run_dashboard.R
├── DESCRIPTION
├── LICENSE
├── README.md
└── .gitignore

---

## Installation

To install this package from GitHub:

```r
# install.packages("devtools")
devtools::install_github("name/adultIncomeDashboard")
```

Replace `name` with actual GitHub username.

---

## Run the Dashboard

If you included a Shiny app in `inst/app/`, run it with:

```r
adultIncomeDashboard::run_dashboard()
```

---

## Analysis Script

The full analysis is located in:

```
analysis/assignment.Rmd
```

You can open it in RStudio or render it to HTML with:

```r
rmarkdown::render("analysis/assignment.Rmd")
```

Includes:

- Cleaned dataset using `janitor`  
- Exploratory data analysis with `skimr` and `modelsummary`  
- Plots using `ggplot2`  
- Statistical tests: t-tests, ANOVA, and chi-square  
- Logistic regression with odds ratio interpretation  

---

## Dataset

- Source: https://www.kaggle.com/datasets/uciml/adult-census-income
- Observations: ~48,000  
- Target variable: income (<=50K, >50K)  
- Data type: Mixed (categorical, numeric, binary)  

---

## Author

Mary Wu
