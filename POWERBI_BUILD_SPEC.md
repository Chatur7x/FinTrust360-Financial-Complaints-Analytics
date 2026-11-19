# Power BI build specification

Import `cleaned_complaints.csv` as `cleaned_complaints`. Set `date_received`, `response_due_date`, and `date_company_responded` to Date; set `response_days` to Whole Number. Create measures:

```DAX
Total Complaints = DISTINCTCOUNT(cleaned_complaints[complaint_id])
Open Complaints = CALCULATE([Total Complaints], cleaned_complaints[response_status] = "Open")
Closed Complaints = CALCULATE([Total Complaints], cleaned_complaints[response_status] = "Closed")
Timely Response Rate = DIVIDE(CALCULATE([Total Complaints], cleaned_complaints[response_status] = "Closed", cleaned_complaints[timely_response] = "Yes"), [Closed Complaints])
Average Response Time = CALCULATE(AVERAGE(cleaned_complaints[response_days]), cleaned_complaints[response_status] = "Closed")
```

Report canvas: 16:9. Add KPI cards for the five measures. Add monthly line chart (date_received by month; Total Complaints), product bar (financial_product; Total Complaints), issue bar (issue_category; Total Complaints), and company bar (company_name; Timely Response Rate). Add slicers for date_received, company_name, and financial_product. The company rate measure must use closed complaints only.
