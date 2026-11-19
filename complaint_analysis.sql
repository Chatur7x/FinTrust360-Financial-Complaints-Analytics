-- FinTrust 360 | SQLite-compatible analysis queries
-- Run against cleaned_complaints.csv imported as table complaints.
-- Dates are ISO YYYY-MM-DD. Response-time and timeliness metrics exclude Open records.

-- 1. Total complaints (unique after cleaning)
SELECT COUNT(DISTINCT complaint_id) AS total_complaints FROM complaints;

-- 2. Monthly complaint trend
SELECT strftime('%Y-%m', date_received) AS complaint_month, COUNT(*) AS complaints FROM complaints GROUP BY complaint_month ORDER BY complaint_month;

-- 3. Complaints by financial product
SELECT financial_product, COUNT(*) AS complaints FROM complaints GROUP BY financial_product ORDER BY complaints DESC;

-- 4. Most frequently reported issues
SELECT issue_category, COUNT(*) AS complaints FROM complaints GROUP BY issue_category ORDER BY complaints DESC LIMIT 10;

-- 5. Complaints by company (volume is not normalized for company size)
SELECT company_name, COUNT(*) AS complaints FROM complaints GROUP BY company_name ORDER BY complaints DESC;

-- 6. Complaints by customer state (Unknown kept visible)
SELECT state, COUNT(*) AS complaints FROM complaints GROUP BY state ORDER BY complaints DESC;

-- 7. Timely-response percentage by company (closed only)
SELECT company_name, COUNT(*) AS closed_complaints, SUM(CASE WHEN timely_response = 'Yes' THEN 1 ELSE 0 END) AS timely_closed, ROUND(100.0 * SUM(CASE WHEN timely_response = 'Yes' THEN 1 ELSE 0 END) / NULLIF(COUNT(*),0), 1) AS timely_response_pct FROM complaints WHERE response_status = 'Closed' GROUP BY company_name ORDER BY timely_response_pct DESC;

-- 8. Average response time in calendar days (closed only)
SELECT ROUND(AVG(julianday(date_company_responded) - julianday(date_received)), 2) AS avg_response_days FROM complaints WHERE response_status = 'Closed' AND date_company_responded IS NOT NULL;

-- 9. Open and closed counts
SELECT response_status, COUNT(*) AS complaints FROM complaints GROUP BY response_status ORDER BY response_status;

-- 10. Date and flag validation: closed responses beyond due date
SELECT COUNT(*) AS closed_after_due_date FROM complaints WHERE response_status = 'Closed' AND date_company_responded > response_due_date;

-- 11. Average response time by product (closed only)
SELECT financial_product, ROUND(AVG(julianday(date_company_responded) - julianday(date_received)), 2) AS avg_response_days FROM complaints WHERE response_status = 'Closed' AND date_company_responded IS NOT NULL GROUP BY financial_product ORDER BY avg_response_days DESC;

