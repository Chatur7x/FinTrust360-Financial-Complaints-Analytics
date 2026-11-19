# FinTrust 360 — Financial Customer Complaints & Response Analytics

Analytics project using 5,000 fictional financial-service complaint records. Exact duplicate complaint IDs were removed, leaving 4,975 unique records.

## Deliverables

- `lecture-file.csv` — original source data.
- `cleaned_complaints.csv` and `cleaned_complaints.xlsx` — cleaned unique records; the workbook includes cleaned data, cleaning log, and KPI summary.
- `cleaning_log.md` — cleaning and validation decisions.
- `complaint_analysis.sql` — 11 explained SQLite-compatible analysis queries.
- `analysis_findings.md` and `analysis_report.pdf` — five findings and three practical recommendations.
- `FinTrust_360.pbix` — native Power BI Desktop report with five KPI cards, four required charts, and date, company, and product slicers.
- `actual_powerbi_screenshot.png` — screenshot captured from the reopened Power BI Desktop report.
- `interactive_dashboard.html` — self-contained companion dashboard with interactive filters and charts.
- `POWERBI_BUILD_SPEC.md` and `POWERBI_STATUS.md` — report specification and validation notes.
- `AI_USAGE.md` — AI assistance and verification record.

## Verified headline KPIs

| KPI | Result |
|---|---:|
| Total complaints | 4,975 |
| Open | 310 |
| Closed | 4,665 |
| Timely among closed | 90.075% |
| Average response time among closed | 8.7638 calendar days |

Open complaints are excluded from response-time and timely-rate calculations. October 2026 is partial through October 15. Complaint counts are not adjusted for company size, and a timely response does not guarantee customer satisfaction. Power BI's card visual rounds the total and closed counts to `5K`; the exact measures are documented above and in the workbook.

## GitHub

Repository: https://github.com/Chatur7x/FinTrust360-Financial-Complaints-Analytics
