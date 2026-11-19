# Power BI deliverables status

## Native report

`FinTrust_360.pbix` is a native Power BI Desktop report. It was saved to the project folder and reopened from that path to confirm the report page and visuals load. The report contains five KPI cards (total, open, closed, timely response rate, and average response time), a monthly complaint trend line chart, product and issue bar charts, a company timely-response chart, and slicers for received date, company, and product.

The response measures exclude open complaints. Verified unfiltered values are 4,975 total complaints, 310 open, 4,665 closed, 90.075% timely among closed complaints, and 8.7638 average response days among closed complaints. Power BI's card display abbreviates the two counts near 5,000 as `5K`; the exact values are available in the model and supporting KPI summary.

## Screenshot

`actual_powerbi_screenshot.png` is a capture of the reopened report in Power BI Desktop, not the companion browser dashboard. The interactive HTML is supplied separately as a reviewable companion.

## Scope notes

The report uses the supplied fictional records. Company complaint counts are not normalized by company size, and timely response is not a measure of satisfaction or resolution quality.
