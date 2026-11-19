# AI usage and verification

AI assistance supported profiling and cleaning the fictional complaint CSV, drafting SQL, calculating summary statistics, writing analysis and recommendations, preparing the interactive companion dashboard, and updating documentation.

Verification performed: source and cleaned row counts, duplicate IDs, missing state treatment, product category normalization, date parsing and order, response-date/status consistency, timeliness against response and due dates, and recalculation of all headline KPIs. Browser rendering of the interactive dashboard was checked, including KPI values (4,975 total, 310 open, 4,665 closed, 90.1% timely, 8.76 days average).

Limitations: all records and entities are fictional. Counts are not adjusted for company size. Satisfaction and resolution quality are not supplied. A compatible Power BI Desktop validation is still required for a native `.pbix`; the included package is explicitly marked unverified in `POWERBI_STATUS.md`. No GitHub URL was supplied or published.
