功能：登录，并抓取多页
{@}{cug}http://boss.cqccn.com:8888/aicas/login{|}username=407390&password=56CC3FAA8DC8D4D4A13DC1F212E1DEE596797BD66E370AC5&service=http%3A%2F%2Fboss.cqccn.com%3A18081%2Fboss_web%2Fwebframe%2Fshdesktopui%2Fimages%2Ficon_login.png&ai_param_ip=192.168.0.23&ai_param_hostname=DESKTOD&ai_param_mac=64%3ABB%4B6A%3A2B%3AD3%3AA2{|}application/x-www-form-urlencoded{||}GB2312{||}gzip, deflate{||}false{|}post{|}reg/boss_step/cqboss_cookie
{@}{ifc}[var_res]{||}={||}{|}{shw}服务器连接不成功，退出程序,等待下次周期执行。{\@}{end}{|}{shw}已成功登录...
{@}{-shw}[tagid].开始处理【[title]】[dbtitle1] - UserContact...
{@}{ifc}[dbtitle1]{||}={||}{|}{shw}数据库名为空，跳过此任务。{\@}{end}
                           {|}{\@}{sql}DB_Conn_CqBoss_online{\|}SET FOREIGN_KEY_CHECKS=0;
                                                               CREATE TABLE IF NOT EXISTS `usercontact[dbtitle1]`(
																																							  `CUST_ADDR_ID` varchar(255) DEFAULT NULL,
																																							  `STD_ADDR_ID` varchar(255) DEFAULT NULL,
																																							  `CUST_ID` int(11) NOT NULL,
																																							  `CUST_ID_JM` varchar(255) DEFAULT NULL,
																																							  `HOST_CUST_ID` varchar(255) DEFAULT NULL,
																																							  `OWN_ORG_ID` varchar(255) DEFAULT NULL,
																																							  `OWN_CORP_ORG_ID` varchar(255) DEFAULT NULL,
																																							  `TRANSFER_STATUS` varchar(255) DEFAULT NULL,
																																							  `STD_ADDR_NAME` varchar(255) DEFAULT NULL,
																																							  `DOOR_NAME` varchar(255) DEFAULT NULL,
																																							  `AUDIT_FLAG` varchar(255) DEFAULT NULL,
																																							  `CUST_STATUS` varchar(255) DEFAULT NULL,
																																							  `CUST_CODE` varchar(255) DEFAULT NULL,
																																							  `CUST_NAME` varchar(255) DEFAULT NULL,
																																							  `CUST_LEVEL` varchar(255) DEFAULT NULL,
																																							  `CUST_TYPE` varchar(255) DEFAULT NULL,
																																							  `CUST_CERT_TYPE` varchar(255) DEFAULT NULL,
																																							  `CUST_CERT_NO` varchar(255) DEFAULT NULL,
																																							  `IS_HOST` varchar(255) DEFAULT NULL,
																																							  `TagId` int(11) DEFAULT NULL,
																																							  `Done` tinyint(4) DEFAULT '0',
																																							  `DoneTel` tinyint(4) DEFAULT '0',
																																							  `DoneCard` tinyint(4) DEFAULT '0',
																																							  `DoneMoney` tinyint(4) DEFAULT '0',
																																							  `InTime` int(11) DEFAULT NULL,
																																							  PRIMARY KEY (`CUST_ID`),
																																							  KEY `InTime` (`InTime`) USING BTREE,
																																							  KEY `Done` (`Done`) USING BTREE,
																																							  KEY `DoneTel` (`DoneTel`) USING BTREE,
																																							  KEY `DoneCard` (`DoneCard`) USING BTREE,
																																							  KEY `DoneMoney` (`DoneMoney`) USING BTREE
																																							)ENGINE=InnoDB DEFAULT CHARSET=utf8;
																																CREATE TABLE IF NOT EXISTS `usertel[dbtitle1]`(
																																						  `CUST_ID` int(11) NOT NULL,
																																						  `CUST_ADDR_ID` int(11) NOT NULL,
																																						  `I_ID` int(11) NOT NULL,
																																						  `CONT_ID` int(11) DEFAULT NULL,
																																						  `CONT_NAME` varchar(255) DEFAULT NULL,
																																						  `CONT_DFLT_MODE` varchar(255) DEFAULT NULL,
																																						  `CONT_MOBILE1` varchar(255) DEFAULT NULL,
																																						  `CONT_MOBILE2` varchar(255) DEFAULT NULL,
																																						  `CONT_PHONE1` varchar(255) DEFAULT NULL,
																																						  `CONT_PHONE2` varchar(255) DEFAULT NULL,
																																						  `GetStatus` varchar(5) DEFAULT NULL,
																																						  `TagId` int(11) DEFAULT NULL,
																																						  `Done` tinyint(4) DEFAULT '0',
																																						  `InTime` int(11) DEFAULT NULL,
																																						  PRIMARY KEY (`I_ID`,`CUST_ID`),
																																						  KEY `InTime` (`InTime`) USING BTREE,
																																						  KEY `Cust_Id` (`CUST_ADDR_ID`),
																																						  KEY `I` (`I_ID`),
																																						  KEY `Done` (`Done`)
																																						) ENGINE=InnoDB DEFAULT CHARSET=utf8;	
																																CREATE TABLE IF NOT EXISTS `usercard[dbtitle1]` (
																																					  `Cust_Id` int(11) DEFAULT NULL,
																																					  `CUST_ADDR_ID` int(11) NOT NULL,
																																					  `I` int(11) DEFAULT NULL,
																																					  `KEY_NUM_TYPE_CODE` varchar(255) DEFAULT NULL,
																																					  `KEY_NUM` varchar(255) DEFAULT NULL,
																																					  `REGION_ID` int(255) DEFAULT NULL,
																																					  `CORP_ORG_ID` int(11) DEFAULT NULL,
																																					  `PRODUCT_INSTANCE_ID` varchar(64) NOT NULL,
																																					  `KEY_NUM_TYPE_CODE_DESC` varchar(100) DEFAULT NULL,
																																					  `IF_IS_MAIN` varchar(100) DEFAULT NULL,
																																					  `ACC_NBR` varchar(100) DEFAULT NULL,
																																					  `TOTALBLCAMOUNT` double DEFAULT NULL,
																																					  `TOTALBILLAMOUNT` double(10,0) DEFAULT NULL,
																																					  `PRODUCT_INSTANCE_STATE` varchar(100) DEFAULT NULL,
																																					  `STATE_DATE` varchar(100) DEFAULT NULL,
																																					  `Acct_Id` int(11) DEFAULT NULL,
																																					  `TagId` int(11) DEFAULT NULL,
																																					  `Done` tinyint(4) DEFAULT '0',
																																					  `InTime` int(11) DEFAULT NULL,
																																					  PRIMARY KEY (`PRODUCT_INSTANCE_ID`,`CUST_ADDR_ID`),
																																					  KEY `ACC_NBR` (`ACC_NBR`),
																																					  KEY `PRODUCT_INSTANCE_STATE` (`PRODUCT_INSTANCE_STATE`),
																																					  KEY `STATE_DATE` (`STATE_DATE`),
																																					  KEY `IF_IS_MAIN` (`IF_IS_MAIN`),
																																					  KEY `Cust_Id` (`Cust_Id`),
																																					  KEY `CUST_ADDR_ID` (`CUST_ADDR_ID`),
																																					  KEY `I` (`I`),
																																					  KEY `KEY_NUM_TYPE_CODE` (`KEY_NUM_TYPE_CODE`),
																																					  KEY `Done` (`Done`)
																																					) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;	
																																	CREATE TABLE IF NOT EXISTS `usercardorder[dbtitle1]` (
																																				  `Cust_Id` int(11) DEFAULT NULL,
																																				  `Acct_Id` int(11) DEFAULT NULL,
																																				  `CUST_ADDR_ID` int(11) DEFAULT NULL,
																																				  `PRODUCT_INSTANCE_ID` int(11) DEFAULT NULL,
																																				  `SRVPKG_INST_ID` int(11) NOT NULL,
																																				  `OPER_STATE` tinyint(4) DEFAULT NULL,
																																				  `OFFER_INST_TITLE` varchar(100) NOT NULL,
																																				  `OFFER_INST_ID` int(11) DEFAULT NULL,
																																				  `SRVPKG_TITLE` varchar(100) DEFAULT NULL,
																																				  `SRVPKG_ID` int(11) DEFAULT NULL,
																																				  `VALID_DATE` varchar(20) DEFAULT NULL,
																																				  `EXPIRE_DATE` varchar(20) DEFAULT NULL,
																																				  `STATE_TITLE` varchar(100) DEFAULT NULL,
																																				  `STATE_ID` int(11) DEFAULT NULL,
																																				  `ORG_TITLE` varchar(64) DEFAULT NULL,
																																				  `ORG_ID` int(11) DEFAULT NULL,
																																				  `OP_TITLE` varchar(100) DEFAULT NULL,
																																				  `OP_ID` int(11) DEFAULT NULL,
																																				  `VALID_TYPE_TITLE` varchar(100) DEFAULT NULL,
																																				  `VALID_TYPE_ID` int(11) DEFAULT NULL,
																																				  `CREATE_DATE` varchar(20) DEFAULT NULL,
																																				  `OS_STATUS` varchar(60) DEFAULT NULL,
																																				  `DESCRIPTION` varchar(100) DEFAULT NULL,
																																				  `TagId` int(11) DEFAULT NULL,
																																				  `Done` tinyint(4) DEFAULT '0',
																																				  `InTime` int(11) DEFAULT NULL,
																																				  PRIMARY KEY (`SRVPKG_INST_ID`),
																																				  KEY `Cust_Id` (`Cust_Id`),
																																				  KEY `Acct_Id` (`Acct_Id`),
																																				  KEY `CUST_ADDR_ID` (`CUST_ADDR_ID`),
																																				  KEY `OPER_STATE` (`OPER_STATE`),
																																				  KEY `OFFER_INST_ID` (`OFFER_INST_TITLE`),
																																				  KEY `Done` (`Done`),
																																				  KEY `STATE_ID` (`STATE_ID`)
																																				  ) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;
																														      CREATE TABLE IF NOT EXISTS `tasktel` (
																																				  `id` int(11) NOT NULL AUTO_INCREMENT,
																																				  `dbtitle` varchar(64) NOT NULL,
																																				  `cust_id` int(11) NOT NULL,
																																				  `cust_id_jm` varchar(255) NOT NULL,
																																				  `cust_addr_id` int(11) NOT NULL,
																																				  `product_instance_id` int(11) DEFAULT NULL,
																																				  `own_corp_org_id` int(11) DEFAULT NULL,
																																				  `acct_id` int(11) DEFAULT NULL,
																																				  `tagid` int(11) NOT NULL,
																																				  `done` tinyint(4) DEFAULT '0',
																																				  PRIMARY KEY (`id`)
																																				) ENGINE=MyISAM DEFAULT CHARSET=utf8;
																																  CREATE TABLE IF NOT EXISTS `taskcard` (		
																																					`id` int(11) NOT NULL AUTO_INCREMENT,	
																																				  `dbtitle` varchar(64) NOT NULL,
																																				  `cust_id` int(11) NOT NULL,
																																				  `cust_id_jm` varchar(255) NOT NULL,
																																				  `cust_addr_id` int(11) NOT NULL,
																																				  `product_instance_id` int(11) DEFAULT NULL,
																																				  `own_corp_org_id` int(11) DEFAULT NULL,
																																				  `acct_id` int(11) DEFAULT NULL,
																																				  `tagid` int(11) NOT NULL,
																																				  `done` tinyint(4) DEFAULT '0',
																																				  PRIMARY KEY (`id`)
																																				) ENGINE=MyISAM DEFAULT CHARSET=utf8;
																																  CREATE TABLE IF NOT EXISTS `taskcardorder` (
																																					`id` int(11) NOT NULL AUTO_INCREMENT,
																																				  `dbtitle` varchar(64) NOT NULL,
																																				  `cust_id` int(11) NOT NULL,
																																				  `cust_id_jm` varchar(255) NOT NULL,
																																				  `cust_addr_id` int(11) NOT NULL,
																																				  `product_instance_id` int(11) DEFAULT NULL,
																																				  `own_corp_org_id` int(11) DEFAULT NULL,
																																				  `acct_id` int(11) DEFAULT NULL,
																																				  `tagid` int(11) NOT NULL,
																																				  `done` tinyint(4) DEFAULT '0',
																																				  PRIMARY KEY (`id`)
																																				) ENGINE=MyISAM DEFAULT CHARSET=utf8;
																															  CREATE TABLE IF NOT EXISTS `taskmoney` (
																															  					`id` int(11) NOT NULL AUTO_INCREMENT,
																																				  `dbtitle` varchar(64) NOT NULL,
																																				  `cust_id` int(11) NOT NULL,
																																				  `cust_id_jm` varchar(255) NOT NULL,
																																				  `cust_addr_id` int(11) NOT NULL,
																																				  `product_instance_id` int(11) DEFAULT NULL,
																																				  `own_corp_org_id` int(11) DEFAULT NULL,
																																				  `acct_id` int(11) DEFAULT NULL,
																																				  `tagid` int(11) NOT NULL,
																																				  `done` tinyint(4) DEFAULT '0',
																																				  PRIMARY KEY (`id`),
																																				  UNIQUE KEY `acct_id` (`acct_id`)
																																				) ENGINE=MyISAM DEFAULT CHARSET=utf8;
														    {\|}1{\|}[dbtitle1]
{@}{-shw}=============EncTagTitle=============
{@}{jsr}reg/comm/des.js{||}utf-8{|}javascript{|}strEnc{||}%[title],qiu7Wx,,
{@}{-shw}enc key word：[=]0[=]
{@}{cfl}reg/boss_step/cqboss_cookie
{@}登录BOSS
{@}{cug}http://boss.cqccn.com:18081/boss_web/gridturnpage?action=refresh&pk=-1&condition=operId%3D49EAE914365ED2D47FAFEA671042BB18%26opLoginOrganizeId%3D559E2E0B06635FF361E25C3ED4FEAF8B%26stdAddrId%3D%26doorName%3D[=]0[=]%26oldCustCode%3D%26custCode%3D%26custName%3D%26custId%3D%26custCertTypeId%3D4894363E67A6FB0D%26custCertNo%3D%26contName%3D%26contPhone1%3D%26contMobile1%3D%26jstMobile%3D%26acctName%3D%26vipProp%3D%26userName%3D%26resEquNo1%3D%26resEquNo2%3D%26resEquNo3%3D%26resEquNo4%3D%26resEquNo5%3D%26resEquNo6%3D%26status%3D%26isHost%3D%26isTenant%3D%26ownOrgId%3D%26custTypeTemp%3D4894363E67A6FB0D%26loginName%3D&localcache=table&url_source=XMLHTTP
	     {|}<TableInfo [\r\n]
tableid='tblCustomer' setname='com.asiainfo.boss.customer.cust.web.CMCustomer' tablemodel='com.ai.appframe2.web.datamodel.MethodModelForService' implservice_name='com.asiainfo.boss.customer.cust.service.interfaces.ICMCustomerSV' implservice_querymethod='queryCommonCust(String operId,String opLoginOrganizeId,String stdAddrId, String doorName,[\r\n]
			String oldCustCode,String custCode, String custName,String custId,String custCertTypeId,String custCertNo,[\r\n]
			String contName, String contPhone1,String contMobile1,String jstMobile,[\r\n]
			String acctName,[\r\n]
			String vipProp,String userName,[\r\n]
			String resEquNo1,String resEquNo2,String resEquNo3,String resEquNo4,String resEquNo5,String resEquNo6,int $STARTROWINDEX,int $ENDROWINDEX,String status,String isHost,String isTenant,String ownOrgId,String custTypeTemp,String loginName)' implservice_countmethod='queryCommonCustCount(String operId,String opLoginOrganizeId,String stdAddrId, String doorName,[\r\n]
			String oldCustCode,String custCode, String custName,String custId,String custCertTypeId,String custCertNo,[\r\n]
			String contName, String contPhone1,String contMobile1,String jstMobile,[\r\n]
			String acctName,[\r\n]
			String vipProp,String userName,[\r\n]
			String resEquNo1,String resEquNo2,String resEquNo3,String resEquNo4,String resEquNo5,String resEquNo6,[\r\n]
			String status,String isHost,String isTenant,String ownOrgId,String custTypeTemp ,String loginName)' [\r\n]
multiselect='false' isquerycount='TRUE' width='740px' height='160' pagesize='1000' >[\r\n]
<col fieldname='CUST_ADDR_ID' visible='false' />[\r\n]
<col fieldname='STD_ADDR_ID' visible='false' />[\r\n]
<col fieldname='CUST_ID' visible='false' />[\r\n]
<col fieldname='HOST_CUST_ID' visible='false' />[\r\n]
<col fieldname='OWN_ORG_ID' visible='false' />[\r\n]
<col fieldname='OWN_CORP_ORG_ID' visible='false' />[\r\n]
<col fieldname='TRANSFER_STATUS' visible='false' />[\r\n]
<col fieldname='STD_ADDR_NAME' width='200'  />[\r\n]
<col fieldname='DOOR_NAME' width='90'  />[\r\n]
<col fieldname='AUDIT_FLAG' width='90'  />[\r\n]
<col fieldname='CUST_STATUS'  />[\r\n]
<col fieldname='CUST_CODE'  />[\r\n]
<col fieldname='CUST_NAME'  />[\r\n]
<col fieldname='CUST_LEVEL'  />[\r\n]
<col fieldname='CUST_TYPE'  />[\r\n]
<col fieldname='CUST_CERT_TYPE'  />[\r\n]
<col fieldname='CUST_CERT_NO' width='140'  />[\r\n]
<col fieldname='IS_HOST' width='140'  />[\r\n]
</TableInfo>
{|}multipart/form-data{||}GB2312{||}gzip, deflate{||}false{||}boss.cqccn.com{||}[var_res]{|}post
{@}{clr}
{@}{-shw}[var_res]
{@}{cap}共 {?} 页
{@}{cap}newGridPK='{?}'
{@}{shw}  总页数：[=]0[=]  ;   PK值：[=]1[=]
{@}{lex}reg/boss_step/UserContact_Analyze.lex{||}[tr_data]{-}[var_res]{|||}[tr_idx]{-}1{|||}[tagid2]{-}[tagid]{|||}[tr_title]{-}[title]{|||}[dbtitle2]{-}[dbtitle1]{|}utf-8{|}
{@}{shw}[tagid].save usercontact page no.1 ok.
{@}{-shw} step-1 : waite 30 sec.
{@}{-wtm}30000
                                          
{@}{for}2{||}[=]0[=]{|}{cug}http://boss.cqccn.com:18081/boss_web/gridturnpage?action=turnpage&pk=[=]1[=]&newpage=[foridx]{\|}
                            {\|}multipart/form-data{\|\|}GB2312{\|\|}gzip, deflate{\|\|}false{\|}post
                       {\@}{lex}reg/boss_step/UserContact_Analyze.lex{\|\|}[tr_data]{-}[var_res]{\|\|\|}[tr_idx]{-}[foridx]{\|\|\|}[tagid2]{-}[tagid]{\|\|\|}[tr_title]{-}[title]{\|\|\|}[dbtitle2]{-}[dbtitle1]{\|}utf-8
                       {\@}{shw}[tagid].save usercontact page no.[foridx] ok.
                       {\@}{-shw} step-1 : waite 30 sec.
                       {\@}{-wtm}3000

{@}{sql}DB_Conn_CqBoss_online{|}update task set Done=1, InTime=NOW() where id=[tagid];{|}1{|}[tagid]
{@}{shw}[tagid].[t4_title] save contact ok.
{@}{clr}