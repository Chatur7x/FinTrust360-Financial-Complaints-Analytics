# FinTrust 360 — Financial Customer Complaints & Response Analytics

Analytics project using 5,000 fictional complaint records. Cleaning exact duplicates leaves 4,975 unique complaint IDs.

## Deliverables

- `lecture-file.csv` — original source data.
- `cleaned_complaints.csv` and `cleaned_complaints.xlsx` — cleaned unique records; workbook includes cleaning log and KPI summary.
- `cleaning_log.md` — cleaning and validation decisions.
- `complaint_analysis.sql` — 11 explained SQLite-compatible queries.
- `analysis_findings.md` and `analysis_report.pdf` — five findings and three recommendations.
- `interactive_dashboard.html` — self-contained browser dashboard with date, company, and product filters, five KPIs, and charts.
- `FinTrust_360.pbix` — native Power BI file with imported data; it is an earlier model snapshot and has no completed report visuals. See `POWERBI_STATUS.md`.
- `actual_powerbi_screenshot.png` — browser dashboard capture, not a Power BI Desktop screenshot. A genuine Power BI report capture remains outstanding.
- `POWERBI_BUILD_SPEC.md` — Power BI visuals, slicers, and measure specification.
- `AI_USAGE.md` — AI assistance and verification record.

## Verified headline KPIs

| KPI | Result |
|---|---:|
| Total complaints | 4,975 |
| Open | 310 |
| Closed | 4,665 |
| Timely among closed | 90.1% |
| Average response time among closed | 8.76 calendar days |

Open complaints are excluded from response-time and timely-rate calculations. October 2026 is partial through October 15. Complaint counts are not adjusted for company size, and a timely response does not guarantee customer satisfaction.

## GitHub

Repository: https://github.com/Chatur7x/FinTrust360-Financial-Complaints-Analytics
