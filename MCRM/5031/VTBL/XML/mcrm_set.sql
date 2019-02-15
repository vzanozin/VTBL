update prd_odi_repo.SNP_MTXT set full_txt=regexp_replace(full_txt,'CRMData_vl216852_\d{2}.\d{2}.\d{4}.xsd','CRMData_vl216852_16.07.2018.xsd')  where i_txt=4001;
commit;
