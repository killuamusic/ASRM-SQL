SELECT r.resource_value,r.resource_status,pool.RRP_POOL_DESC,att5.resource_attr_value as MNP_IND,
att.resource_attr_value as donor_operator, att2.resource_attr_value as donor_zone,
att3.resource_attr_value as rcp_operator, att4.resource_attr_value as rcp_zone
FROM rm1_resource r, rm_resource_tp_attr atp, rm1_resource_attributes att,
rm1_resource_attributes att2, rm1_resource_attributes att3,
rm1_resource_attributes att4,rm1_resource_attributes att5,rm_resource_pool pool
WHERE r.resource_value like '080201%'
AND r.RESOURCE_POOL_ID = pool.RRP_ID
AND r.resource_id = att.resource_value_id
AND r.resource_id = att5.resource_value_id
AND r.resource_id = att4.resource_value_id
AND r.resource_id = att3.resource_value_id
AND r.resource_id = att2.resource_value_id
AND att.resource_attribute_id = atp.rtat_id
AND att.resource_attribute_id = 13
AND att2.resource_attribute_id = 12
AND att3.resource_attribute_id = 15
AND att4.resource_attribute_id = 14
AND att5.resource_attribute_id = 11
;

SELECT COUNT(*)
FROM rm1_resource r, rm_resource_tp_attr atp, rm1_resource_attributes att
WHERE r.resource_id = att.resource_value_id
AND att.resource_attribute_id = atp.rtat_id
AND att.resource_attribute_id = 11
AND SUBSTR(r.resource_value,1,6) NOT IN (
'080201','080925','082547','090275','091076','095141','095385','095608','095830','096719','096941','097163','099629','063905','064127','064349','064604','064826','080906','082528','090257','091058','094132','095363','095589','095812','096701','096923','097145','099610','063885','064108','064330','064584','064807','080308','082032','082657','090962','091802','095262','095493','095716','095938','096827','097049','097271','063790','064013','064235','064489','064712','065805','065871','064079','064302','064556','064778','065867','097116','097338','063857','096893','097226','080261','080985','082609','090905','091754','095215','095447','095669','095891','096780','097003','097225','063743','063965','064187','064443','064664','064886','080369','082092','090221','091023','091861','095328','095553','095775','096664','096886','097109','097331','063850','064072','064294','064549','064771','065864','080267','080991','082615','090910','091760','095220','095452','095674','095896','096785','097008','097230','063749','063971','064193','064448','064670','064892','080374','082097','090227','091028','091867','095334','095559','095781','096670','096892','080219','080943','082565','090294','091713','095169','095405','095627','095849','096738','096960','097182','099783','063924','064146','064402','064623','064845','080326','082050','082676','090980','091819','095280','095512','095734','095956','096845','097067','097289','063808','064030','064252','064507','064729','065823','080296','082021','082646','090951','091790','095251','095482','095705','095927','096816','097038','097260','063779','064002','064224','064478','064701','064923','065890','064097','064320','064574','064796','097135','097357','063875','096913','090223','080257','080981','082604','090901','091750','095210','095442','095664','095886','096775','096997','097220','063739','063961','064183','064439','064660','064882','080364','082087','090217','091018','091857','095324','095549','095771','096660','096882','097105','097327','063846','064068','064290','064545','064767','065860','080295','082020','082645','090950','091789','095250','095481','095704','095926','096815','097037','097259','063778','064001','064223','064476','064698','064921','080905','082527','090256','091057','094131','095362','095587','095810','096698','080262',
'080202','080926','082548','090276','091078','095142','095386','095609','095831','096720','096942','097164','099630','063906','064128','064350','064605','064827','080907','082529','090258','091059','094149','095364','095590','095813','096702','096924','097146','099612','063886','064109','064331','064585','064808','080309','082034','082658','090963','091803','095263','095494','095717','095939','096828','097050','097272','063791','064014','064236','064490','064713','065806','065872','064080','064303','064557','064779','065868','097117','097339','063858','096894','095670','080231','080956','082578','090323','091725','095181','095417','095639','095861','096750','096972','097194','063714','063936','064158','064414','064635','064857','080339','082062','088922','090992','091831','095292','095524','095746','096635','096857','097079','097302','063820','064042','064264','064519','064741','065835','080270','080994','082618','090914','091763','095224','095456','095678','095901','096789','097012','097234','063752','063974','064196','064451','064673','064895','080378','082502','090230','091031','091870','095337','095562','095784','096673','097113','080220','080945','082567','090295','091714','095170','095406','095628','095850','096739','096961','097183','061009','063925','064147','064403','064624','064846','080327','082051','082678','090981','091820','095281','095513','095735','095957','096846','097068','097290','063809','064031','064253','064508','064730','065824','080297','082023','082647','090952','091791','095252','095483','095706','095928','096817','097039','097261','063780','064003','064225','064479','064702','064924','065891','064098','064321','064575','064797','097136','097358','063876','096914','063851','080258','080982','082605','090902','091751','095212','095443','095665','095887','096776','096998','097221','063740','063962','064184','064440','064661','064883','080365','082089','090218','091019','091858','095325','095550','095772','096661','096883','097106','097328','063847','064069','064291','064546','064768','065861','080263','080987','082612','090907','091757','095217','095449','095671','095893','096782','097005','097227','063746','063968','064190','064445','064667','064889','080371','082094','090224','091025','091863','095330','095556','095778','096667','096889',
'080203','080927','082549','090278','091079','095143','095387','095610','095832','096721','096943','097165','099631','063907','064129','064351','064606','064828','080908','082530','090259','091060','094178','095365','095591','095814','096703','096925','097147','099613','063887','064110','064332','064586','064809','080310','082035','082659','090964','091804','095264','095495','095718','095940','096829','097051','097273','063792','064015','064237','064491','064714','065807','065873','064081','064304','064558','064780','065869','097118','097340','063859','096895','063967','080232','080957','082579','090324','091726','095182','095418','095640','095862','096751','096973','097195','063715','063937','064159','064415','064636','064858','080340','082063','088933','090993','091832','095293','095525','095747','096636','096858','097080','097303','063821','064043','064265','064520','064742','065836','080271','080995','082619','090915','091764','095225','095457','095679','095902','096790','097013','097235','063753','063975','064197','064452','064674','064896','080379','082503','090231','091032','091871','095338','095563','095785','096674','097114','080221','080946','082568','090296','091715','095171','095407','095629','095851','096740','096962','097184','061010','063926','064148','064404','064625','064847','080328','082052','082679','090982','091821','095282','095514','095736','095958','096847','097069','097291','063810','064032','064254','064509','064731','065825','080298','082024','082648','090953','091792','095253','095484','095707','095929','096818','097040','097262','063781','064004','064226','064480','064703','064925','065892','064101','064323','064576','064798','097137','097359','063878','096915','064189','080259','080983','082607','090903','091752','095213','095445','095667','095889','096778','097001','097223','063741','063963','064185','064441','064662','064884','080367','082090','090219','091020','091859','095326','095551','095773','096662','096884','097107','097329','063848','064070','064292','064547','064769','065862','080264','080989','082613','090908','091758','095218','095450','095672','095894','096783','097006','097228','063747','063969','064191','064446','064668','064890','080372','082095','090225','091026','091864','095331','095557','095779','096668','096890',
'080204','080928','082550','090279','091696','095145','095389','095612','095834','096723','096945','097167','099632','063908','064130','064352','064607','064829','080909','082531','090260','091061','094179','095367','095592','095815','096704','096926','097148','099614','063889','064112','064334','064587','064810','080312','082036','082660','090965','091805','095265','095496','095719','095941','096830','097052','097274','063793','064016','064238','064492','064715','065808','065874','064082','064305','064559','064781','065870','097119','097341','063860','096896','095554','080234','080958','082580','090325','091727','095183','095419','095641','095863','096752','096974','097196','063716','063938','064160','064416','064637','064859','080341','082064','088935','090994','091834','095294','095526','095748','096637','096859','097081','097304','063823','064045','064267','064521','064743','065837','080272','080996','082620','090916','091765','095226','095458','095680','095903','096791','097014','097236','063754','063976','064198','064453','064675','064897','080380','082504','090232','091034','091872','095339','095564','095786','096675','097115','080223','080947','082569','090297','091716','095172','095408','095630','095852','096741','096963','097185','061012','063927','064149','064405','064626','064848','080329','082053','082900','090983','091823','095283','095515','095737','095959','096848','097070','097292','063812','064034','064256','064510','064732','065826','080301','082025','082649','090954','091793','095254','095485','095708','095930','096819','097041','097263','063782','064005','064227','064481','064704','064926','065893','064102','064324','064578','064801','097138','097360','063879','096916','097332','080260','080984','082608','090904','091753','095214','095446','095668','095890','096779','097002','097224','063742','063964','064186','064442','064663','064885','080368','082091','090220','091021','091860','095327','095552','095774','096663','096885','097108','097330','063849','064071','064293','064548','064770','065863','080265','080990','082614','090909','091759','095219','095451','095673','095895','096784','097007','097229','063748','063970','064192','064447','064669','064891','080373','082096','090226','091027','091865','095332','095558','095780','096669','096891',
'080205','080929','082551','090280','091697','095146','095390','095613','095835','096724','096946','097168','099634','063909','064131','064353','064608','064830','080910','082532','090261','091062','094186','095368','095593','095816','096705','096927','097149','099615','063890','064113','064335','064589','064812','080313','082037','082661','090967','091806','095267','095497','095720','095942','096831','097053','097275','063794','064017','064239','064493','064716','065809','065875','064083','064306','064560','064782','064773','097120','097342','063861','096897','064772','080235','080959','082581','090326','091728','095184','095420','095642','095864','096753','096975','097197','063717','063939','064161','064417','064638','064860','080342','082065','088936','090995','091835','095295','095527','095749','096638','096860','097082','097305','063824','064046','064268','064523','064745','065838','080273','080997','082621','090917','091767','095227','095459','095681','095904','096792','097015','097237','063756','063978','064201','064454','064676','064898','080381','082505','090234','091035','091873','095340','095565','095787','096676','095776','080224','080948','082570','090298','091717','095173','095409','095631','095853','096742','096964','097186','061013','063928','064150','064406','064627','064849','080330','082054','082914','090984','091824','095284','095516','095738','095960','096849','097071','097293','063813','064035','064257','064512','064734','065827','080302','082026','082650','090956','091794','095256','095486','095709','095931','096820','097042','097264','063783','064006','064228','064482','064705','064927','065894','064103','064325','064579','064802','097139','097361','063880','096917','095329','080245','080969','082591','090887','091738','095194','095430','095652','095874','096763','096985','097208','063727','063949','064171','064427','064648','064870','080352','082075','088991','091006','091845','095312','095537','095759','096648','096870','097092','097315','063834','064056','064278','064532','064754','065848','080283','082008','082631','090927','091776','095237','095469','095691','095914','096803','097025','097247','063765','063987','064210','064464','064686','064909','080391','082515','090243','091045','091883','095350','095575','095797','096686','097004',
'080206','080930','082552','090281','091698','095147','095391','095614','095836','096725','096947','097169','099635','063910','064132','064354','064609','064831','080912','082534','090262','091063','094187','095369','095594','095817','096706','096928','097150','099616','063891','064114','064336','064590','064813','080314','082038','082662','090968','091807','095268','095498','095721','095943','096832','097054','097276','063795','064018','064240','064494','064717','065810','065876','064084','064307','064561','064783','064774','097121','097343','063862','096898','080370','080236','080960','082582','090327','091729','095185','095421','095643','095865','096754','096976','097198','063718','063940','064162','064418','064639','064861','080343','082067','088937','090996','091836','095296','095528','095750','096639','096861','097083','097306','063825','064047','064269','064524','064746','065839','080274','080998','082623','090918','091768','095228','095460','095682','095905','096793','097016','097238','063757','063979','064202','064456','064678','064901','080382','082506','090235','091036','091874','095341','095567','095789','096678','065865','080225','080949','082571','090316','091718','095174','095410','095632','095854','096743','096965','097187','061014','063929','064151','064407','064628','064850','080331','082056','082916','090985','091825','095285','095517','095739','095961','096850','097072','097294','063814','064036','064258','064513','064735','065828','080303','082027','082651','090957','091795','095257','095487','095710','095932','096821','097043','097265','063784','064007','064229','064483','064706','064928','065895','064104','064326','064580','064803','097140','099606','063881','096918','064550','080246','080970','082592','090889','091739','095195','095431','095653','095875','096764','096986','097209','063728','063950','064172','064428','064649','064871','080353','082076','088992','091007','091846','095313','095538','095760','096649','096871','097093','097316','063835','064057','064279','064534','064756','065849','080284','082009','082632','090928','091778','095238','095470','095692','095915','096804','097026','097248','063767','063989','064212','064465','064687','064910','080392','082516','090245','091046','091884','095351','095576','095798','096687','095448',
'080207','080931','082553','090282','091701','095148','095392','095615','095837','096726','096948','097170','099701','063912','064134','064356','064610','064832','080913','082535','090263','091064','094197','095370','095595','095818','096707','096929','097151','099617','063892','064115','064337','064591','064814','080315','082039','082663','090969','091808','095269','095501','095723','095945','096834','097056','097278','063796','064019','064241','064495','064718','065812','065878','064085','064308','064562','064784','064775','097123','097345','063863','096901','063745','080237','080961','082583','090328','091730','095186','095423','095645','095867','096756','096978','097201','063719','063941','064163','064419','064640','064862','080345','082068','088938','090997','091837','095297','095529','095751','096640','096862','097084','097307','063826','064048','064270','064525','064747','065840','080275','082001','082624','090919','091769','095229','095461','095683','095906','096794','097017','097239','063758','063980','064203','064457','064679','064902','080383','082507','090236','091037','091875','095342','095568','095790','096679','082093','080226','080950','082572','090317','091719','095175','095412','095634','095856','096745','096967','097189','061015','063930','064152','064408','064629','064851','080332','082057','082917','090986','091826','095286','095518','095740','095962','096851','097073','097295','063815','064037','064259','064514','064736','065829','080304','082028','082652','090958','091796','095258','095489','095712','095934','096823','097045','097267','063785','064008','064230','064484','064707','064929','065896','064105','064327','064581','064804','097141','099607','063882','096919','064887','080247','080971','082593','090890','091740','095196','095432','095654','095876','096765','096987','097210','063729','063951','064173','064429','064650','064872','080354','082078','088993','091008','091847','095314','095539','095761','096650','096872','097094','097317','063836','064058','064280','064535','064757','065850','080285','082010','082634','090929','091779','095239','095471','095693','095916','096805','097027','097249','063768','063990','064213','064467','064689','064912','080393','082517','090246','091047','091885','095352','095578','095801','096689','064075',
'080208','080932','082554','090283','091702','095158','095393','095616','095838','096727','096949','097171','099702','063913','064135','064357','064612','064834','080914','082536','090264','091065','094198','095371','095596','095819','096708','096930','097152','099618','063893','064116','064338','064592','064815','080316','082040','082664','090970','091809','095270','095502','095724','095946','096835','097057','097279','063797','064020','064242','064496','064719','065813','065879','064086','064309','064563','064785','064776','097124','097346','063864','096902','096781','080238','080962','082584','090329','091731','095187','095424','095646','095868','096757','096979','097202','063720','063942','064164','064420','064641','064863','080346','082069','088939','090998','091838','095298','095530','095752','096641','096863','097085','097308','063827','064049','064271','064526','064748','065841','080276','082002','082625','090920','091770','095230','095462','095684','095907','096795','097018','097240','063759','063981','064204','064458','064680','064903','080384','082508','090237','091038','091876','095343','095569','095791','096680','097334','080227','080951','082573','090318','091720','095176','095413','095635','095857','096746','096968','097190','061016','063931','064153','064409','064630','064852','080334','082058','082918','090987','091827','095287','095519','095741','095963','096852','097074','097296','063816','064038','064260','064515','064737','065830','080305','082029','082653','090959','091797','095259','095490','095713','095935','096824','097046','097268','063786','064009','064231','064485','064708','065802','065897','064106','064328','064582','064805','097142','099608','063883','096920','064073','080248','080972','082594','090891','091741','095197','095434','095656','095878','096767','096989','097212','063730','063952','064174','064430','064651','064873','080356','082079','090201','091009','091848','095315','095540','095762','096651','096873','097095','097318','063837','064059','064281','064536','064758','065851','080286','082012','082635','090930','091780','095240','095472','095694','095917','096806','097028','097250','063769','063991','064214','064468','064690','064913','080394','082518','090247','091048','091886','095353','095579','095802','096690','064076',
'080209','080934','082556','090284','091703','095159','095394','095617','095839','096728','096950','097172','099712','063914','064136','064358','064613','064835','080915','082537','090265','091067','094209','095372','095597','095820','096709','096931','097153','099619','063894','064117','064339','064593','064816','080317','082041','082665','090971','091810','095271','095503','095725','095947','096836','097058','097280','063798','064021','064243','064497','064720','065814','065880','064087','064310','064564','064786','064551','097125','097347','063865','096903','095892','080239','080963','082585','090330','091732','095189','095425','095647','095869','096758','096980','097203','063721','063943','064165','064421','064642','064864','080347','082070','088944','091001','091839','095306','095531','095753','096642','096864','097086','097309','063828','064050','064272','064527','064749','065842','080278','082003','082626','090921','091771','095231','095463','095685','095908','096796','097019','097241','063760','063982','064205','064459','064681','064904','080385','082509','090238','091039','091878','095345','095570','095792','096681','097335','080228','080952','082574','090319','091721','095178','095414','095636','095858','096747','096969','097191','061017','063932','064154','064410','064631','064853','080335','082059','082920','090989','091828','095289','095520','095742','095964','096853','097075','097297','063817','064039','064261','064516','064738','065831','080306','082030','082654','090960','091798','095260','095491','095714','095936','096825','097047','097269','063787','064010','064232','064486','064709','065803','065898','064107','064329','064583','064806','097143','099609','063884','096921','064444','080249','080973','082595','090892','091742','095198','095435','095657','095879','096768','096990','097213','063731','063953','064175','064431','064652','064874','080357','082080','090209','091010','091849','095316','095541','095763','096652','096874','097096','097319','063838','064060','064282','064537','064759','065852','080287','082013','082636','090931','091781','095241','095473','095695','095918','096807','097029','097251','063770','063992','064215','064469','064691','064914','080395','082519','090248','091049','091887','095354','095580','095803','096691','064078',
'080210','080935','082557','090285','091704','095160','095395','095618','095840','096729','096951','097173','099713','063915','064137','064359','064614','064836','080916','082538','090267','091068','094210','095373','095598','095821','096710','096932','097154','099620','063895','064118','064340','064594','064817','080318','082042','082669','090972','091812','095272','095504','095726','095948','096837','097059','097281','063801','064023','064245','064498','064721','065815','065881','064089','064312','064565','064787','064552','097126','097348','063867','096904','091756','080240','080964','082586','090331','091734','095190','095426','095648','095870','096759','096981','097204','063723','063945','064167','064423','064643','064865','080348','082071','088955','091002','091840','095307','095532','095754','096643','096865','097087','097310','063829','064051','064273','064528','064750','065843','080279','082004','082627','090923','091772','095232','095464','095686','095909','096797','097020','097242','063761','063983','064206','064460','064682','064905','080386','082510','090239','091040','091879','095346','095571','095793','096682','097336','080229','080953','082575','090320','091723','095179','095415','095637','095859','096748','096970','097192','063712','063934','064156','064412','064632','064854','080336','082060','082933','090990','091829','095290','095521','095743','096632','096854','097076','097298','063818','064040','064262','064517','064739','065832','080268','080992','082616','090912','091761','095221','095453','095675','095897','096786','097009','097231','063750','063972','064194','064449','064671','064893','080375','082098','090228','091029','091868','095335','095560','095782','096671','091024','080242','080967','082589','090885','091736','095192','095428','095650','095872','096761','096983','097206','063725','063947','064169','064425','064646','064868','080350','082073','088977','091004','091842','095309','095535','095757','096646','096868','097090','097313','063831','064053','064275','064530','064752','065846','080281','082006','082629','090925','091774','095235','095467','095689','095912','096801','097023','097245','063763','063985','064208','064462','064684','064907','080389','082513','090241','091042','091881','095348','095573','095795','096684','096887',
'080212','080936','082558','090286','091705','095161','095396','095619','095841','096730','096952','097174','099734','063916','064138','064360','064615','064837','080917','082539','090268','091069','095134','095374','095601','095823','096712','096934','097156','099621','063896','064119','064341','064595','064818','080319','082043','082670','090973','091813','095273','095505','095727','095949','096838','097060','097282','063802','064024','064246','064501','064723','065816','065882','064090','064313','064567','064789','064553','097127','097349','063868','096905','082610','080241','080965','082587','090332','091735','095191','095427','095649','095871','096760','096982','097205','063724','063946','064168','064424','064645','064867','080349','082072','088966','091003','091841','095308','095534','095756','096645','096867','097089','097312','063830','064052','064274','064529','064751','065845','080280','082005','082628','090924','091773','095234','095465','095687','095910','096798','097021','097243','063762','063984','064207','064461','064683','064906','080387','082512','090240','091041','091880','095347','095572','095794','096683','097337','080216','080940','082562','090291','091709','095165','095402','095624','095846','096735','096957','097179','099756','063920','064142','064397','064619','064841','080921','082543','090272','091073','095138','095382','095605','095827','096716','096938','097160','099626','063902','064124','064346','064601','064823','080324','082048','082674','090978','091817','095278','095509','095731','095953','096842','097064','097286','063806','064028','064250','064505','064727','065820','065886','064094','064317','064571','064793','064298','097131','097353','063872','096909','064295','080253','080978','082601','090896','091747','095207','095439','095661','095883','096772','096994','097217','063736','063958','064180','064436','064657','064879','080361','082084','090214','091015','091853','095320','095546','095768','096657','096879','097102','097324','063842','064064','064286','064541','064763','065857','080292','082017','082641','090947','091785','095247','095478','095701','095923','096812','097034','097256','063774','063996','064219','064473','064695','064918','080902','082524','090252','091053','093808','095359','095584','095807','096695','063856',
'080213','080937','082559','090287','091706','095162','095397','095620','095842','096731','096953','097175','099735','063917','064139','064361','064616','064838','080918','082540','090269','091070','095135','095375','095602','095824','096713','096935','097157','099623','063897','064120','064342','064596','064819','080320','082045','082671','090974','091814','095274','095506','095728','095950','096839','097061','097283','063803','064025','064247','064502','064724','065817','065883','064091','064314','064568','064790','064554','097128','097350','063869','096906','095216','080250','080974','082596','090893','091743','095204','095436','095658','095880','096769','096991','097214','063732','063954','064176','064432','064653','064875','080358','082081','090210','091012','091850','095317','095542','095764','096653','096875','097097','097320','063839','064061','064283','064538','064760','065853','080289','082014','082637','090932','091782','095242','095474','095696','095919','096808','097030','097252','063771','063993','064216','064470','064692','064915','080396','082520','090249','091050','091889','095356','095581','095804','096692','063852','080217','080941','082563','090292','091710','095167','095403','095625','095847','096736','096958','097180','099757','063921','064143','064398','064620','064842','080923','082545','090273','091074','095139','095383','095606','095828','096717','096939','097161','099627','063903','064125','064347','064602','064824','080325','082049','082675','090979','091818','095279','095510','095732','095954','096843','097065','097287','063807','064029','064251','064506','064728','065821','065887','064095','064318','064572','064794','064301','097132','097354','063873','096910','064665','080254','080979','082602','090897','091748','095208','095440','095662','095884','096773','096995','097218','063737','063959','064181','064437','064658','064880','080362','082085','090215','091016','091854','095321','095547','095769','096658','096880','097103','097325','063843','064065','064287','064542','064764','065858','080293','082018','082642','090948','091786','095248','095479','095702','095924','096813','097035','097257','063775','063997','064220','064474','064696','064919','080903','082525','090253','091054','094129','095360','095585','095808','096696','090906',
'080214','080938','082560','090289','091707','095163','095398','095621','095843','096732','096954','097176','099745','063918','064140','064362','064617','064839','080919','082541','090270','091071','095136','095376','095603','095825','096714','096936','097158','099624','063898','064121','064343','064597','064820','080321','082046','082672','090975','091815','095275','095507','095729','095951','096840','097062','097284','063804','064026','064248','064503','064725','065818','065884','064092','064315','064569','064791','064296','097129','097351','063870','096907','097110','080251','080975','082597','090894','091745','095205','095437','095659','095881','096770','096992','097215','063734','063956','064178','064434','064654','064876','080359','082082','090212','091013','091851','095318','095543','095765','096654','096876','097098','097321','063840','064062','064284','064539','064761','065854','080290','082015','082639','090945','091783','095243','095475','095697','095920','096809','097031','097253','063772','063994','064217','064471','064693','064916','080397','082521','090250','091051','091890','095357','095582','095805','096693','063853','080218','080942','082564','090293','091712','095168','095404','095626','095848','096737','096959','097181','099782','063923','064145','064401','064621','064843','080924','082546','090274','091075','095140','095384','095607','095829','096718','096940','097162','099628','063904','064126','064348','064603','064825','080307','082031','082656','090961','091801','095261','095492','095715','095937','096826','097048','097270','063789','064012','064234','064487','064710','065804','065889','064096','064319','064573','064795','064074','097134','097356','063874','096912','096665','080256','080980','082603','090898','091749','095209','095441','095663','095885','096774','096996','097219','063738','063960','064182','064438','064659','064881','080363','082086','090216','091017','091856','095323','095548','095770','096659','096881','097104','097326','063845','064067','064289','064543','064765','065859','080294','082019','082643','090949','091787','095249','095480','095703','095925','096814','097036','097258','063776','063998','064221','064475','064697','064920','080904','082526','090254','091056','094130','095361','095586','095809','096697','080986',
'080215','080939','082561','090290','091708','095164','095401','095623','095845','096734','096956','097178','099746','063919','064141','064396','064618','064840','080920','082542','090271','091072','095137','095381','095604','095826','096715','096937','097159','099625','063901','064123','064345','064598','064821','080323','082047','082673','090976','091816','095276','095508','095730','095952','096841','097063','097285','063805','064027','064249','064504','064726','065819','065885','064093','064316','064570','064792','064297','097130','097352','063871','096908','091862','080252','080976','082598','090895','091746','095206','095438','095660','095882','096771','096993','097216','063735','063957','064179','064435','064656','064878','080360','082083','090213','091014','091852','095319','095545','095767','096656','096878','097101','097323','063841','064063','064285','064540','064762','065856','080291','082016','082640','090946','091784','095246','095476','095698','095921','096810','097032','097254','063773','063995','064218','064472','064694','064917','080901','082523','090251','091052','093807','095358','095583','095806','096694','063854','080230','080954','082576','090321','091724','095180','095416','095638','095860','096749','096971','097193','063713','063935','064157','064413','064634','064856','080338','082061','088911','090991','091830','095291','095523','095745','096634','096856','097078','097301','063819','064041','064263','064518','064740','065834','080269','080993','082617','090913','091762','095223','095454','095676','095898','096787','097010','097232','063751','063973','064195','064450','064672','064894','080376','082501','090229','091030','091869','095336','095561','095783','096672','097112','080243','080968','082590','090886','091737','095193','095429','095651','095873','096762','096984','097207','063726','063948','064170','064426','064647','064869','080351','082074','088988','091005','091843','095310','095536','095758','096647','096869','097091','097314','063832','064054','064276','064531','064753','065847','080282','082007','082630','090926','091775','095236','095468','095690','095913','096802','097024','097246','063764','063986','064209','064463','064685','064908','080390','082514','090242','091043','091882','095349','095574','095796','096685',
);