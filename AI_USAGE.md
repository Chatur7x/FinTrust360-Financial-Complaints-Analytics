# AI usage and verification

AI assistance supported profiling and cleaning the fictional complaint CSV, drafting SQL, calculating summary statistics, writing findings and recommendations, preparing the companion dashboard, and editing documentation.

Verification covered source and cleaned row counts, duplicate IDs, missing-state handling, product category normalization, date parsing and order, response-date/status consistency, timeliness against response and due dates, and recalculation of the headline KPIs. The SQL queries were executed against the cleaned data. The Power BI report was saved and reopened from the project folder in Power BI Desktop; its five KPI cards, four charts, and three slicers were confirmed on the report page. `actual_powerbi_screenshot.png` was captured from Power BI Desktop.

Verified unfiltered measures: 4,975 total, 310 open, 4,665 closed, 90.075% timely among closed complaints, and 8.7638 average response days among closed complaints. Power BI's KPI cards abbreviate total and closed counts to `5K`; exact values are listed in the README and workbook.

Limitations: records and organizations are fictional. Counts are not adjusted for company size. Satisfaction and resolution quality are not supplied, so timeliness should not be treated as a customer satisfaction measure.
