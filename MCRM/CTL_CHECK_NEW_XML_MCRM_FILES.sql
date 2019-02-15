CREATE OR REPLACE VIEW ETL.CTL_CHECK_NEW_XML_MCRM_FILES AS
SELECT 1 NEW_FILE_EXISTS_FLG
     FROM ctl_input_files a, ctl_actual_file_types b
    WHERE     a.SOURCE_NAME IN ('MCRM')
          AND STATUS_CD = 1
          AND a.FILE_TYPE_CD = b.FILE_TYPE_CD
          AND ROWNUM < 2;
