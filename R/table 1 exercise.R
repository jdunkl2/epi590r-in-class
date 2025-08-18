here::here()
getwd()

setwd("data")

install.packages("gtsummary", dependencies = TRUE)


library(gtsummary)

tbl_summary(
	nlsy,
	by = sex_cat,
	include = c(starts_with("sleep"),
		income, race_eth_cat, region_cat
		),

	label = list(
		race_eth_cat ~ "Race/ethnicity",
		region_cat ~ "Region",
		income ~ "Income",
		sleep_wkdy ~ "Sleep on Weekdays",
		sleep_wknd ~ "Sleep on weekends"
	),
	missing_text = "Missing"

 ,

	statistic = list(sleep_wkdy ~ "min = {min}; max = {max}",
									 sleep_wknd ~ "min = {min}; max = {max}",
									 income = "({p10}, {p90})") ,
	digits = list(sleep_wkdy ~ c(1, 1), sleep_wknd ~ c(1, 1),  income ~ c(3, 3)))|>

add_p(test = list(
	all_continuous() ~ "t.test",
	all_categorical() ~ "chisq.test"
))|>
	# add a total column with the number of observations
	add_overall()|>
	# figured out how to do this from
	# https://stackoverflow.com/questions/73154658/adding-a-footnote-to-a-single-row-label-in-a-gtsummary-table
	modify_table_styling(
		columns = label,
		rows = label == "Race/ethnicity",
		footnote = "see https://www.nlsinfo.org/content/cohorts/nlsy79/topical-guide/household/race-ethnicity-immigration-data"
	)


