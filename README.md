# ushe-dws
1. Run the dws_submit_file.sql
- Update the d_end_dt field and the to_date date range to the last day of the previous quarter (i.e to_date('06/30/2020', 'mm/dd/yyyy'))
- Execute the query and export the results as a pipe | delimited text file
- Save the file and name the file dsu-dws-2007 (YYMM) 
- Send an email to USHE letting them know the file is available on the ftp server