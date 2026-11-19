# Cleaning log

| Check / action | Result | Treatment |
|---|---|---|
| Source row count | 5,000 | Retained as source copy unchanged in lecture-file.csv. |
| Duplicate complaint IDs | 25 redundant rows removed; 4975 unique complaints remain | Duplicates were exact repeats after trimming whitespace; keep first record by complaint ID. |
| Missing state | 49 records | Replaced blank state with explicit Unknown; no state imputation. |
| Financial product labels | 11 source spellings consolidated to 6 canonical categories | Trimmed whitespace and standardized casing using a fixed category mapping. |
| Received dates | 4975 valid / 0 invalid | Parsed ISO dates; all supplied dates parse. |
| Due dates | 4975 valid / 0 invalid | Parsed ISO dates; validated as after receipt in all unique records. |
| Response dates | 4665 populated; open records blank | Parsed dates; all closed records have a response date and all open records have none. |
| Timeliness consistency | 4202 Yes, 463 No among closed; matches response date vs due date | Retained recorded Yes/No flag; it agrees with date comparison for all closed records. Open records excluded from denominator. |
| Response time | Calendar days between received and company responded | Derived field; blank for open cases. |
