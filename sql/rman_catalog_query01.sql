COL in_size format a10
COL out_size format a10
SELECT *
FROM   (SELECT To_char(start_time, 'YYYYMMDD') backup_date,
               db_name,
               session_key,
               input_type,
               compression_ratio,
               input_bytes_display             in_size,
               output_bytes_display            out_size
        FROM   rc_rman_backup_job_details
        WHERE  input_type = 'DB FULL'
               AND status = 'COMPLETED'
               AND db_name = '&DB_NAME'
        ORDER  BY To_char(start_time, 'YYYYMMDD') DESC)
WHERE  ROWNUM < 6;