drop program WHS_bulk_updates  go
create program WHS_bulk_updates
 
prompt
	"Output to File/Printer/MINE" = "MINE"
with OUTDEV
 
;insert update scripts here

; CNUM update (non-domain-specific)
update into order_catalog_synonym ocs
set ocs.cki = "MUL.ORD-SYN!351621" ; swap 351621 with your number
, ocs.concept_cki = "MULTUM!351621" ; swap 351621 with your number
, ocs.updt_dt_tm = cnvtdatetime(curdate,curtime3)
, ocs.updt_id = reqinfo->updt_id
, ocs.updt_cnt = ocs.updt_cnt + 1
where ocs.mnemonic = "Slinda 4 mg oral tablet" ; swap "Slinda 4 mg oral tablet" with your target

end
go