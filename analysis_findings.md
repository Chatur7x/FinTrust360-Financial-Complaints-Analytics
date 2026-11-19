# FinTrust 360 - Findings and recommendations

## Scope and method
Analysis uses the supplied fictional complaint file, dated 2025-10-01 to 2026-10-15. Exact duplicate complaint records were removed, leaving **4,975 unique complaints**. Response speed and timeliness use closed records only, as specified. Response time is calendar days from receipt to response. The October 2026 monthly count is partial because records end on October 15.

## Five findings

1. **Product mix:** Credit card leads with 1,191 complaints (23.9%); Checking or savings account is next with 1,054 (21.2%).
2. **Recurring issue:** Unexpected fees is the most common issue (545), followed by Account access (337) and Fraudulent charges (307).
3. **Volume trend:** monthly counts ranged from 212 to 433; the peak was 2026-05 (433). Across full months, volume moved from 382 in 2025-10 to 383 in 2026-09; the last month is incomplete and should not be compared as a full month.
4. **Response performance:** 4,665 cases are closed and 310 are open (6.2%). Of closed cases, 4,202 (90.1%) are marked timely; average response time is 8.76 calendar days. Timely status follows the supplied flag, which was validated against response date and due date.
5. **Company variation:** timely rates among closed cases span 81.8% (Atlas Consumer Finance) to 94.1% (OakBridge Services). Counts are not adjusted for company size or product mix, so they do not establish relative performance or causation. A timely response does not establish customer satisfaction.

## Three actions for management

1. **Target issue-specific fixes:** review the underlying journeys for unexpected fees and account access; identify root causes, owners, and preventable repeat contacts, then track issue volume per relevant customer or transaction where denominators become available.
2. **Reduce late responses:** investigate handoffs and queue aging for the companies with the lowest recorded timely rates, starting with Atlas Consumer Finance and Cedar Finance; set aging alerts and review weekly cohorts by product and issue before comparing teams.
3. **Add outcome and scale measures:** collect customer satisfaction / resolution quality and company workload denominators (active customers, accounts, or transactions). Use these alongside complaint and response metrics to make fair comparisons.

## KPI definitions

- Total complaints: unique complaint IDs after exact duplicate removal.
- Open / closed: cleaned records by recorded response status.
- Timely response rate: closed records marked Yes divided by all closed records.
- Average response time: mean calendar days from received date to company response date among closed records only.

## Power BI companion dashboard

A native Power BI Desktop report is included as `FinTrust_360.pbix`. It was reopened from the project folder and contains the five KPI cards, monthly trend, product and issue charts, company timely-response chart, and date, company, and product slicers. The genuine Desktop capture is `actual_powerbi_screenshot.jpg`. `interactive_dashboard.html` is a separate interactive companion with the same key filters and charts. Power BI abbreviates the total and closed count cards to `5K`; their exact measures are 4,975 and 4,665. The company response-rate measure excludes open complaints. As described above, complaint counts are not adjusted for company size, and timeliness does not establish customer satisfaction.
