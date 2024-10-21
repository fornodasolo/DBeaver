


SELECT flag_ft_via_mail, --X33
flag_ft_via_fax,         --X34
flag_ft_via_postel,      --X35
flag_ft_via_stampa,      --X36
flag_ft_via_edi,         --X37
flag_doc_comm_via_mail,  --X39
flag_doc_comm_via_fax,   --X40
flag_doc_comm_via_stampa, --X41
flag_doc_comm_via_edi,    --X42
flag_doc_log_via_mail,    --LL1
flag_doc_log_via_fax,      --LL2
flag_doc_log_via_stampa,   --LL3
flag_doc_log_via_edi,       --LL4
flag_doc_xab_comodato_via_maiL, --LL6
flag_doc_xab_comodato_via_fax, --LL7
flag_doc_xab_comodato_via_stampa,  --LL8
flag_doc_xab_comodato_via_edi,  --LL9
flag_doc_conf_ordine_via_mail,  --LLB
flag_doc_conf_ordine_via_fax,   --LLC
flag_doc_conf_ordine_via_stampa,  --LLD
flag_doc_conf_ordine_via_edi,   --LLE
flag_doc_packing_list_via_mail,  --LLG
flag_doc_packing_list_via_fax,  --LLH
flag_doc_packing_list_via_stampa,  --LLI
flag_doc_packing_list_via_edi,  --LLL
flag_doc_comodato_via_mail,     --LLN
flag_doc_comodato_via_fax,      --LLO
flag_doc_comodato_via_stampa,   --LLP
flag_doc_comodato_via_edi,      --LLQ
stampa_art_62,                  --X47
trasferito_a_docf,              --X48
escludi_da_docf,                --X53
fattura_immediata 
select *  
FROM [Edo_ESTR_CLIENTI_SMEUP] 
where  cod_cliente=''
WHERE [fattura_immediata]<>''