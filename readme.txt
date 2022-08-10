**********************************************************************************************************

语法说明：

权重顺序：同一栏目抓取设置的顺序为从小至大。不重要的放在最上面，重要的值放在最下面。

{>} 分隔抓取的栏目
{@} 同等级执行下一步操作
{#} 上一步是抓取内容语句，以@分隔语句，可使用{}命令；#下一名通常是替换的语句，可以有多句，以#分隔。匹配结果里执行下一步操作
{-} 替换语法，与{rep}或{drp}同时使用。a{-}b,即把a替换成b; a{-} 即把a替换成空字符串
{|} 分隔符，在语法字符串里使用。如：{tkw}href="{?}"{|}d">{?}</a>
{||} 嵌套分隔,用在有{|}语句里的{||}
{--} 嵌套替换分隔

	用例：
	{mul}http://sp.jtmhw.com:1661/default.html{|}utf-8
	{>}
	{rep}class="menuhover"{-}class="menuhover-d"
	{@}{rep}<ul class="tuijian_sortlist">{?}</ul>{-}{tkw}href="{?}"{|}">{?}</a>{||}{drp}<a{?}>{--}
	{@}<ul class="tuijian_sortlist">{?}</ul>


线程退出机制：
    lex file 后 结果为 [exit] 字符串时，程序退出当前线程。

一. 一级系统标签（以下标签在exe程序开始时被解析执行 crawle 处）
{--title--}
{--keywords--}
{--description--}
{--site_name--}		当前站点的名称，如:hw
{--site_domain--}	当前站点的URL
{--data_site_domain--} 当前数据domain
{--site_id--}		当前站点对应的ID编码  如：taobao: stdu1 ; tmall :stdu2
{--MenuNav_Id--}	完整的导航条ID字符串。
{--Channel_Nav_Id--} 频道导航条ID
{--channel_id--}
{--nav_url_head--} 页面分页的头地址
{--g_id--}
{--save_file--}		保存的文件名
{--Is_Remote--}		是不是远程抓取
{--show_file--}		显示的文件名1
{--show_file_hot--}	显示的文件名2
{--data_enurl1--}	加密url1
{--data_enurl2--}	加密url2
{--datetime--}		时间
{--data_num--}		数量
{--data_type--}
{--data_file--}		用于获取数据的lex格式文件
{--data_url--}		用于获取数据页面的URl	
{--data_Remote--}
{--data_save_file--}
{--rand5--}			随机5位数字 
{--other_para--}    其它参数
{--exe_threadid--}  当前进程序号
{--exe_lexnum--}    lex文件被执行次数	

二.二级系统标签（在snatch处被解析执行）
[INF]...[INF] 结果集操作：在lex文件中可包含任意文件，如：[INF]/a/b/c.lex[INF]
						    用例：/regs/webpage/cy/jj.lex 内容如下：
							{mul}http://www.taobao.com/go/act/idea/subpage4.php
							[INF]/regs/webpage/cy/template_chn.lex[INF]
							{@}{saf}/cy/jj.html

[$]n,n[$] M层大循环，结果集操作：在任意地方获取指定的结果数组里的值，可在lex文件里的任意地方使用，在{>}环节gotoAgin:环节时处理。
						第一个n：大数组序号；第二个N:具体一个数组里的第几个值，序号从0开始。
                        格式：[$]1,2[$] 即：取第2个大数组里的第3个值
						如：detail_2.lex 里 
						    {@}{rep}<!--detail_left_rel_shop_list-->{-}{cul}http://{--site_domain--}/c/ctrl/get_data_list.aspx?f={--site_name--}/detail_left_rel_shop_list&t={--site_id--}&n={--site_name--}&g=[$]3,0[$]
[=]n[=]  小循环，结果集操作，获取当前记录集里指定的值。替换范围为{@}的当前行语句
         格式：[=]1[=] 即：取当前记录集里的第2个值
		       [=]@[=] 即：取最后的一个值。
		     用例：
		    {sap}http://s.cn.bing.net/az/hprichbg/rb/ToledoSpain_ZH-CN9430759995_1366x768.jpg{||}jpg{||}wallpaper.jpg{|}http://s.cn.bing.net/az/hprichbg/rb/ToledoSpain_ZH-CN9430759995_1366x768.jpg{||}jpg{||}abc.jpg
			{@}
			{sdp}[=]1[=]
			{@}
			{ral}html

[GB2]...[GB2] 把内容转变为gb2312
               格式：[GB2]我是UTF8字符串[GB2]

程序初始化时的事务：
             1.替换系统标签
			      [STG]site_domain[STG] 
			      [STG]datetimeL[STG]   返回格式：yyyy-MM-dd HH:mm:SS
					  [STG]datetimeM[STG]   返回格式：yyyyMMddHHmmSS
					  [STG]datetimeD1[STG]  返回格式：yyyy-MM-dd
					  [STG]datetimeD2[STG]  返回格式：yyyyMMdd
					  [STG]rand5[STG]       返回5位长度的随机数
					  ----以下是常量 在webconfig文件里定义  用于常量的替换----
					  系统标签：[STG]ConstTag1[STG]   lex文件对应的标签：{--ConstTag1--}   值= webconfig->ConstTag1
					  系统标签：[STG]ConstTag2[STG]   lex文件对应的标签：{--ConstTag2--}   值= webconfig->ConstTag2
					  系统标签：[STG]ConstTag3[STG]   lex文件对应的标签：{--ConstTag3--}   值= webconfig->ConstTag3
					  系统标签：[STG]ConstTag4[STG]   lex文件对应的标签：{--ConstTag4--}   值= webconfig->ConstTag4
					  系统标签：[STG]ConstTag5[STG]   lex文件对应的标签：{--ConstTag5--}   值= webconfig->ConstTag5
					  系统标签：[STG]ConstTag6[STG]   lex文件对应的标签：{--ConstTag6--}   值= webconfig->ConstTag6
					  系统标签：[STG]ConstTag7[STG]   lex文件对应的标签：{--ConstTag7--}   值= webconfig->ConstTag7
					  系统标签：[STG]ConstTag8[STG]   lex文件对应的标签：{--ConstTag8--}   值= webconfig->ConstTag8
              2.反标签替换
			          {\>}      替换为  {>}
					  {\@}      替换为  {@}
					  {\|}      替换为  {|}
					  {\|\|}    替换为  {||}
					  {\|\|\|}  替换为  {|||}
					  
系统变量
			[var_res]		    当前抓取页面的内容
----------------------------------------------------------------------------------------------------------

{cal} 结果操作：把固定值或源字符串增加到记录集里。如果为空则把当前源字符串增加到结果集里。 lstRet1.Add(sSubReg);
		格式：{cal}可有值或无值
		用例一：{cal}  当前源字符串增加到结果集里
		用例二：{cal}abc 把abc增加到记录集里
{cap} 结果集操作：lex匹配,结果增加到结果数量里。
      格式：{cap}lex语句{|}格式化字符串
	    用例一：{cap}aaa{?}bbb
        用例二：{cap}aaa{?}bbb{|}123{0}456		
{clp} 字符源操作：lex匹配,并对源字符串做多次匹配（如果结果匹配到多个，把匹配到的值累加并格式化后，再传给下一个lex循环对结果匹配）,并格式化输出,结果替换字符源串。
      格式：{clp}lex语句1{|||}格式化语句,可选项{||}lex语句2{|||}格式化语句,可选项{||}lex语句3{|||}格式化语句,可选项...{|}格式化语句
	    用例一：{clp}aaa{?}bbb{||}bbb{?}ccc{|}1111{0}2222
	    用例二：{clp}aaa{?}bbb
		用例二：{clp}aaa{?}bbb{|||}<b>{0}</b>{||}bbb{?}ccc{|}1111{0}2222
{cfl} 字符源中操作：在服务端直接读取文件内容,并替换现在的源字符串。
      格式: {cfl}文件的相对或绝对地址{|}文件编码（默认utf-8）
      用例一：{cfl}/data/a.lex
      用例二：{cfl}/data/a.lex{|}utf-8
{chk} 判断语句：对字符源或结果集判断。符合条件后运行后面的lex语句，不符合条件时不处理。
				格式：{chk}类型（1:源字符串与指定字符串比较，2：结果集记录数）{||}5条件(<、>、=、>= 、<=、!=){||}比较的值{|}执行的lex语句。
				用例一：{chk}1{||}={||}abc{|}lex语句      当源字符串等于abc时，运行lex语句。
				用例二：{chk}2{||}<={||}1{|}lex语句       当结果集(即：一个{>}内的结果集)的记录数<=1时(说明当前没有抓取到内容)，运行lex语句。
{clk} 数据源操作：把结果转换为指定的结果 目前支持taobao.com.
				格式：{clk}执行选项名{|}源参数
				用例一：{clk}taobao   通过itemid 转化为推广url。
{clh} 结果或字符源集操作：循环记录：清除结果集值或字符源里的html标签。
        格式：{clh}操作类型值。  1或空：结果集操作；2：字符源操作
        用例一：{clh}1 或 {clh} 清除结果集值里的html标签。
        用例二：{chl}2 清除字符源里的html标签。
{clr} 结果集操作：清除结果集里的全部记录 lstret;lstret1。常用于一个{>}里做重复的操作时，需要清空上次的结果集。如demo_监控页面.lex
        格式：{clr}
        用例：{clr}
{cnt} 结果集操作：统计当前记录集里的记录数量，并把值替换为sContent
        格式：{cnt}
        用例：{cnt}
{cpf} 服务器操作：复制文件(目录不存时自动创建)
      格式：{cpd}源目录{|}目的目录
      用例一：{cpd}c:\a\a.txt{|}c:\b\b.txt
{cpd} 服务器操作：复制文件夹(目录不存时自动创建)
      格式：{cpd}源目录{|}目的目录
      用例一：{cpd}c:\a{|}c:\b	
{cul} 字符源中操作：直接从reg文件里用指定或默认的编码抓取指定的页面,并对抓取到的值格式化字符串,并替换现在的源字符串。
				格式：{cul}地址{|}页面编码{|}a{0}b{|}抓取出错时的标识(非必写){|}用于匹配的lex语句{|}对最终的值格式化
				用例一：{cul}http://www.jtmhw.com
			  用例二：{cul}http://www.jtmhw.com{|}utf-8
			  用例三：抓取后对结果字符串格式化后返回：{cul}http://www.jtmhw.com{|}utf-8{|}a{0}b
				用例四：格式化返回后，带抓取错误字符：{cul}http://www.jtmhw.com{|}utf-8{|}a{0}b{|}<!--lex_rse-->
				用例五：在抓取到的结果上再做lex匹配后返回结果：               {@}{rep}<body>{-}{cul}}http://www.jtmhw.com/regs/webpage/comm/head_top_css.lex{|}utf-8{|}a{0}b{|}<!--lex_rse-->{|}aaa{?}bbb
				用例六：在抓取到的结果上再做lex匹配后返回结果，后format返回： {@}{rep}<body>{-}{cul}}http://www.jtmhw.com/regs/webpage/comm/head_top_css.lex{|}utf-8{|}a{0}b{|}<!--lex_rse-->{|}aaa{?}bbb{|}c{0}d

{cug} 结果集操作：url需要登录后才能抓取。lex匹配,结果增加到结果数量里。 
      注意：
		1.字符串中的回车用 [\r\n] 替换。
		2.第一句通常为登录，系统会把cookies保存
		3.有了第一句种的cookies,这句才开始抓取。
		4.{cug}与{cul}相似，不同之处，可以登录，可以用post/get方式抓取。
      格式：{ulg}登录url{|}post data参数{|}ContentType{||}PageEncoding{||}Accept{||}KeepAlive{||}host{||}cookies{||}referer{||}useragentr{||}headers{|}抓取方式post/get
                                  {|}application/x-www-form-urlencoded{||}GB2312{||}gzip, deflate{||}true{||}www.abc.com{||}abc=123{||}{|}post
      参数：登录url             例：www.1bc.com
            post data参数           a=b&c=d
            ContentType             multipart/form-data     application/x-www-form-urlencoded
            PageEncoding            GB2312
            Accept                  textml, application/xhtml+xml, image/jxr, */*          application/xml   
            KeepAlive               true
            host        为可选项    www.abc.com
            cookies     为可选项    多个cookies设置：n1=v1;n2=v2;.....    种cookie时，host必须有值
            referer     为可选项    http://www.abc.com
            useragentr  为可选项    Mozilla/5.0 (Windows NT 10.0; WOW64; Trident/7.0; rv:11.0) like Gecko
            headers     为可选项    Accept-Language=zh-cn; Accept-Encoding=gzip, deflate; Pragma=no-cache
            
	    用例一：功能：登录抓取  第一句是登录，第二句是抓取数据页面。
{@}{cug}http://boss.cqccn.com:8888/aicas/login{|}username=407390&password=SGIxMTExMTEu&service=http%3A%2F%2Fboss.cqccn.com%3A18081%2Fboss_web%2Fboss%2Fso%2Fsoinfomgr%2FuserInfoView.jsp%3FprodInsId%3D17431&ai_param_ip=192.168.0.137&ai_param_hostname=DESKTOP-9ITPOCD&ai_param_mac=64%3A00%3A6A%3A20%3AD6%3AC1{|}application/x-www-form-urlencoded{||}GB2312{||}gzip, deflate{||}false{|}post
{@}{cug}http://boss.cqccn.com:18081/boss_web/dbformrefresh?action=refresh&pk=-1&condition=prodInsId=174312&url_source=XMLHTTP
						{|}<FormInfo formid="detailForm" setname="com.asiainfo.boss.so.instance.base.web.SETInsProd" datamodel="com.ai.appframe2.web.datamodel.MethodModelForService" editable="false" mo="boss.so.soinfomgr.userinfoview.detailForm" operator="view" modealtype="mask" implservice_name="com.asiainfo.boss.so.instance.base.service.interfaces.IUserInfoQuerySV" implservice_querymethod="getBaseUserInfoForDC(String prodInsId)" conditionname="condition" cols="USER_NAME;STATE;SUB_BILL_ID;STB_ID;RES_EQU_NO2;RES_EQU_NO3;USER_PROP;USER_GROUP;BODER_FLAG;SUBSIDY_FLAG;SUBSIDY_PROP;DEGREE_FLAG;TV_NUMBER;CREATE_DATE;PROD_INST_ID;LOGIN_NAME;MAIN_PROD_INST_ID;PROD_SPEC_ID"  >
[\r\n]</FormInfo>
{|}multipart/form-data{||}GB2312{||}gzip, deflate{||}false{|}post

     用例二：（带图片验证码的登录，登录时需要提交cookie）
     {@}{cug}http://www.le806.com/?Action=CheckUserLogin&username=aasdsaaaa&password=bbbbaa&verification=ujtm{|}aa=1{|}application/x-www-form-urlencoded{||}utf-8{||}gzip, deflate{||}false{||}www.le806.com{||}PHPSESSID=2thh4arh1oaip99vke3p833rh0{|}get

{dbr}	读数据库里的数据，并循环执行lex文件或reg语句  （若执行的reg语句，是保持当前的IE状态，如登录的状态，用file方式的则没有，因为执行file是新开的方法，可以file里设置达到相同的效果）
      格式：{fdb}webconfig里连接数据库里的KEY名{|}再替换(解析后的)SQL语句里的标签{|}数据库类型 0：sqlserver 1:mysql
						  注意：第一个参数是连接数据库。Db_MsSql_Conn1
						        第二个参数（即sql参数）Db_MsSql_Sql_W1,当字符串里有“;”时则视为sql语句，不再需要从webconfig里读取。可用标签替换值，并可以做TAG替换
						        第三个参数是指定数据库类型。0:sqlserver 1:mysql
						        第四个参数是Lex文件名或REG代码，并可以做TAG替换    
						            注意：reg代码要有反定义方式如：{\@}{cap}....{\|}...{\|\|}...
						                  做替换时，可用数据库字段名称，如：[B]{-}tm  ，tm 是数据库字段名称。
				用例一：{dbr}Db_MsSql_Conn1{|}Db_MsSql_Sql_W1{||}tag1{-}val1{||}tag2{-}val2..{|}0{|}abcdf.lex{||}tag1{-}val1{||}tag2{-}val2...
			  用例二：{@}{dbr}DB_Conn_200_CqBoss
						        {|}DB_SQL_200_CqBoss_S1{||}[A]{-}0
						        {|}1
						        {|}reg\cqbs_lv2.lex{|||}utf-8{||}[A]{-}id{||}[B]{-}tm
			  用例三：
											  {@}{dbr}DB_Conn_200_CqBoss
								        {|}DB_SQL_200_CqBoss_UserInfo_Slt{||}[Tag]{-}0
								        {|}1
								        {|}{\@}{cug}http://boss.cqccn.com:18081/boss_web/gridturnpage?action=refresh&pk=-1&condition=[cust_id_jm]&tmpPercentWidth=758&localcache=table&url_source=XMLHTTP
														{\|}<TableInfo [\r\n]
								tableid="tblContactInfo" setname="com.asiainfo.boss.customer.cust.web.SETCMCustContactInfo" tablemodel="com.ai.appframe2.web.datamodel.MethodModelForService" implservice_name="com.asiainfo.boss.customer.cust.service.interfaces.ICMCustomerSV" implservice_querymethod="queryCustContactInfoByCustIdEnCode(String custId)" [\r\n]
								multiselect="true" isquerycount="TRUE" width="100%" height="40" pagesize="2" footdisplay="false" >[\r\n]
								<col fieldname='CONT_ID' visible='false' />[\r\n]
								<col fieldname="CONT_NAME" width="150"  />[\r\n]
								<col fieldname="CONT_DFLT_MODE"  />[\r\n]
								<col fieldname="CONT_MOBILE1"  />[\r\n]
								<col fieldname="CONT_MOBILE2"  />[\r\n]
								<col fieldname="CONT_PHONE1"  />[\r\n]
								<col fieldname="CONT_PHONE2"  />[\r\n]
								</TableInfo>
								{\|}multipart/form-data{\|\|}GB2312{\|\|}gzip, deflate{\|\|}false{\|}post
								{\@}{sql}DB_Conn_200_CqBoss{\|}DB_SQL_200_CqBoss_UserTelInfo_Add{\|\|}{a}{-}[cust_id]
								                                                                      {\|\|}{b}{-}[cust_id_jm]
								                                                                      {\|\|}{c}{-}[=]0[=]
								{\@}{clr}


{dfr} 结果集操作：循环记录，把当前值的内容传给子语句或lex文件处理。不改变当前记录值和sContent
      记录集循环执行指令。在当前lex匹配时，反复gotoaction 匹配，直到for停止。
			格式：{for}从一个数{||}另一个数{|}语句1{\@}语句2 注意无论是一句还是多句，此处要用反定义符 如：{\@} {\|} {\|\|}
			      {dfrnextnum} 是当前序号，{dfrcontent} 是当前结果里的内容
			用例一：{for}1{||}[=]0[=]{|}{cug}http://boss.cqccn.com:18081/boss_web/gridturnpage?action=turnpage&pk=[=]1[=]&newpage={fornextnum}{\|}
	                            {\|}multipart/form-data{\|\|}GB2312{\|\|}gzip, deflate{\|\|}false{\|}post{\@}{cal}123
					这里是每次循环执行的二个语句:cug 和 cal。还可以设置多个语句用反定义语句{\@} {\|} {\|\|}等
			用例二：{for}2{||}12{|}{cul}abc.lex{||}a{-}b{|||}c{--}b{|||}c{--}{fornextnum}{\|}uft-8
			用例三：{for}2{||}12{|}{cul}abc.lex{\|}uft-8
	    用例四：{@}{for}1{||}[=]0[=]{|}{cug}http://boss.cqccn.com:18081/boss_web/gridturnpage?action=turnpage&pk=[=]1[=]&newpage={fornextnum}{\|}
                            {\|}multipart/form-data{\|\|}GB2312{\|\|}gzip, deflate{\|\|}false{\|}post
                       {\@}{_shw}[sys_var_res]
                       {\@}{sql}DB_Conn_200_CqBoss{\|}DB_SQL_200_CqBoss{\|\|}{a}{\|\|\|}[sys_var_res]
                                                                      {\|\|}{b}{\|\|\|}2
                                                                      {\|\|}{c}{\|\|\|}0
                                                                      {\|\|}{d}{\|\|\|}[=]1[=]
                                                                      {\|\|}{e}{\|\|\|}[=]0[=]
                                                                      {\|\|}{f}{\|\|\|}{fornextnum}
                                                  {\|}1
      
{dlf} 服务器操作：循环删除文件
	  格式：{dlf}文件1{|}文件2{|}文件3....
      用例一：{dlf}c:\a.txt{|}c:\b.txt	
{dld} 服务器操作：循环删除文夹
      格式：{dld}目录1{|}目录2{|}目录3....
      用例一：{dld}c:\a{|}c:\b	
{drd} 结果集操作：格式化最后一个结果集里的值
      格式：{drd}格式化的语句
      用例一：{drd}abc{0}
{exe} 执行window的程序，把得到的返回值替换字符串源。
        格式：{exe}命令1{||}命令2...   {|}执行类型(exe)可为空{||}执行的应用程序地址或名称。 
		用例一：{exe}www.hjhh.com       可以是任何文件、程序、URL，执行后调系统默认的程序打开。
		用例二：{exe}dir{||}cd c:{|}exe    默认是执行cmd.exe 程序
		用例三：{exe}dir{||}cd c:{|}exe{||}apache.exe   
		用例四：{exe}dir{||}ping 127.0.0.1{|}exe

{end} 系统操作：结束当前事务的操作。程序退出事务，当不是对事程序，程序在下一周期时会继续执行。

{dbt} 结果集操作：从数据库里读取记录,每条记录 format 字符串后，再累加全部记录的字符串，并把整合后的字符串增加到结果集里。
        读sql绑定模板：	 从数据库里读取记录,每条记录 format 字符串后，再累加全部记录的字符串，并返回整合后的字符串。并可实现对指定字段的加密
				格式：{dbt}webconfig里连接数据库里的KEY名{|}读取数据的sql语句{||}tag1{|||}val1...{|}需要循环累加的字符串（取字段的值用{n}表示）{||}tag1{|||}val1...{|}加密的字段序号{||}加密方式名称
			  用例一：{dbt}Db_MsSql_Conn1{|}Db_MsSql_Sql_R1{||}aaa{|||}1{|}<a {0}>{1}_{--tag1--}</a>{||}{--tag1--}{|||}[$]2,{$]
			  用例二：{dbt}aabbcc{-}Db_MsSql_Conn1{|}Db_MsSql_Sql_R1{||}aaa{|||}1{|}<a {0}>{1}_{--tag1--}</a>{||}{--tag1--}{|||}[$]2,{$]{|}0{||}fn3
{dfv} 结果集操作：给记录集的记录为空置默认值。
        格式：{dfv}指定值
        用例：{dfv}abc

{dll} 外接DLL调用
      格式：{dll}路径{|}类名{|}函数名称{|}函数的参数{|}DLL返回多个结果的分隔符
      用例一：{dll}TestDll.dll{|}TestDll.TestA{|}RetInt{|}         没有参数输入，只返回一个结果
      用例二：{dll}TestDll.dll{|}TestDll.TestA{|}RetInt{|}1        一个参数输入，只返回一个结果
      用例二：{dll}TestDll.dll{|}TestDll.TestA{|}RetStr{|}1,b{|};  二个参数输入，返回多个结果的分隔符为;

{dlm} 结果集操作: 循环记录,从结果中按字符长度过虑，过滤掉大于指定长度的值，用新记录集替换原结果集。
        格式：{dlm}长度值
        用例：{dlm}3  即：去掉长度大于3的记录。
{dln} 结果集操作: 循环记录,从结果中按字符长度过虑，过滤掉小于指定长度的值，用新记录集替换原结果集。
        格式：{dln}长度值
        用例：{dln}3  即：去掉长度小于3的记录。
{dls} 结果集操作：循环记录,判断是否包含关键词，有则保留该记录值，用新记录集替换原结果集。
        格式：{dls}字符串1{|}字符串2{|}字符串3  即：从结果中保留含有aaa,bbb,ccc字符串的记录。
        用例：{dls}aaa{|}bbb{|}ccc  即：从结果中保留含有aaa,bbb,ccc字符串的记录。
{dlt} 结果集操作：循环记录,判断是否包含关键词，有则清除掉，用新记录集替换原结果集。 
        格式：{dls}字符串1{|}字符串2{|}字符串3  过滤记录,可为多个条件。
        用例：{dlt}aaa{|}bbb{|}ccc{|}  即：从结果中过滤含有aaa,bbb,ccc字符串的记录。
{drf} 结果集操作：格式化各条记录后替换原记录。（可以用{|}或{0}或两者同时使用）。
        格式：{drf}aaaaaaa{|}bbbbbb;
		      {drf}aaaaaaa{0}bbbbbb;
{drp} 结果集操作：循环记录匹配，并替换原记录的值，支持的命令支持reg,path 。新的结果集结原结果结的记录相同。
				方法一： （默认）：{drp}a{?}b{-}bbb
				方法二：	{reg}: 结果也用lex语句的值，值做格式化后，再替换。
									格式：	{drp}a{?}b{-}{reg}a{?}b{|}hrf="{0}"
				方法三：	{pah}: 把字符串设置为路径字符串
									格式：{rep}<pah_{?}_pah>{-}{pah}切割的字符长度
									用例：{rep}<pah_{?}_pah>{-}{pah}5
{drs}  结果集操作：循环记录,做lex匹配（可能匹配到多条），并把匹配到的值增加到新结果集中，用新结果集替换原结果集。新的结果集结原结果结的记录少/相同/多。
        格式：{drs}aaa{?}bbb
        用例一：{drs}a{?}b  

{esc} 把字符串源当lex语句执行，{sec}需要执行的lex语句  如果无语句则默认是 字符串源
        格式：{esc}需要执行的lex语句
		    用例一：{esc}                如果无语句则默认是 字符串源
		    用例二：{esc}aa{?}bbb        需要执行的lex语句
{eml} 发送邮件。
        格式：{eml}发送人{|}收件人{|}主题{|}正文{|}邮件服务器{|}账号{|}密码
		用例：{eml}abc@mail.com{|}bcd@mail.com;abc@mail.com;....多人用;分隔{|}邮件标题{|}邮件正文{|}smtp.qq.com{|}发送人账号{|}密码
		      {@}{eml}2088728380@qq.com{|}cool_you@sina.com{|}测试邮件{|}<font color="red">测试</font>{|}smtp.qq.com{|}2088728380@qq.com{|}y7yhhgf
			
{fdu} 结果集操作：循环记录，对字符串URL解码，对当前项的值解码后重置值
        格式：{fdu}
        用例：{fdu}
{fen} 结果集操作：字符串加密后,再对字符串url编码，对当前项的值，编码后重置值。 加密的原因是替换传输中容易出错的字符。
        格式：{fdu}
        用例：{fdu}     
{feu} 结果集操作：对字符串URL编码，对当前项的值编码后重置值。  
        格式：{fdu}
        用例：{fdu} 
{fk1} 结果集操作：对系统字符串替换，如 / 和 & 等
        格式：{fk1}
        用例：{fk1} 
{fk2} 结果集操作：对系统字符串还原，如 / 和 & 等        
        格式：{fk2}
        用例：{fk2} 
{fn1} 结果集操作：对结果数组的值，做数字加密，返回double类型
        格式：{fn1}
        用例：{fn1} 
{fn2} 结果集操作：对结果数组的值，做数字解密，返回double类型 
        格式：{fn2}
        用例：{fn2}        
{fn3} 结果集操作：对结果数组的值，数字字符串 加密为 字母字符串
        格式：{fn1}
        用例：{fn1} 
{fn4} 结果集操作：对结果数组的值，字母字符串 解密为 数字字符串
        格式：{fn2}
        用例：{fn2} 
{fns} 调用函数，并把结果存在记录集里   .如果 源字符串 为空，则取当前源字符串 scontent
        格式：{fns}命令字符{|}源字符串 
              支付的命令有：md5  md5加密
                            len  取长度
       用例一：{fns}md5{|}abc
       用例二：{fns}len{|}abc
{fug} 结果集操作：unicode转gb2312，对当前项的值，编码后重置值。
        格式：{fug}
        用例：{fug}                  
{gre} 结果集操作：循环记录，得到对应的lex文件，并执行lex匹配，并用新得到的值替换原值；如果{gre}后lex语句时，直接执行lex匹配，并用新得到的值替换原值。
        对结果数组的值，对当前项做替换，不增加数组。对当前项做lex匹配，返回lex匹配后最后一个数组的最后一个值,并可传{|}的参数到lex文件里。 
			  格式：{gre}_id {|}{--aaa--}{-}bbb{||}{--ccc--}{-}ddd
			  用例一：数组的值是URL :匹配出主域名（如taobao.com）,再组合成lex文件名（如：taobao.com_id），最后执行这个lex文件返回最后一个值。
						例：href="{?}"
						    {@}{gre}_id{|}{--aaa--}{-}bbb{||}{--ccc--}{-}ddd  以 获取到lex文件内容后，以后面的{||}为多组字符串分隔，以{-}为字符串分隔，替换字符串。
			  用例二：{gre}hw/abc.lex{|}{--aaa--}{-}bbb{||}{--ccc--}{-}ddd
				用例三：{gre}aa{?}bb  直接循环记录执行lex匹配，并用新得到的值替换原值。数组的值是非url,即是正则表达式，则直接匹配出结果，并取匹配到的最后一个值。
			  
{ifc} if判断语句	符合条件后运行后面的lex语句.
        格式：{ifc}比较值1{||}5个条件(<、>、=、>= 、<=、in、><){||}比较值2-1{|||}比较值2-2{|||}比较值n{|}比对为真：执行的lex语句{|}比对为假：执行的lex语句。
								     当“= 或 !=”比较时：    为两个字符串的比较
									 当不是“= 或 !=”比较时：会把比较的2个值，转换为double类型比较。
									 比较值2:在比较判断时，只要有一个条件成立，就跳出比较操作。
									 >< 含义：大于什么小于什么。
						  支持反定义多句。
						       in 时可用正则表达式，见用例五。
			  用例一：如：{ifc}a{||}={||}b{|}真：lex语句或lex文件{|}假：lex语句或lex文件   比较字符串 a=c 如果相等则运行lex语句
		    用例二：如：{ifc}[$]0,0[$]{||}in{||}abc{|||}error
                                {|}{cul}http://www.ydqxt.com:8080/sendsms.asp?username=HJHH&password=6yhn7ujm&mobile=13996126359&message=%A1%BE%BA%C3%BD%E8%BA%C3%BB%B9%A1%BF%BC%E0%BF%D8-%CA%D7%D2%B3%D3%D0%B1%E4%BB%AF%A1%A3
								                {|}{---}
				用例三：如：{ifc}[$]1,0[$]{||}><{||}2,5    判断值是不是大于2小于5的。
			  用例四：{ifc}[$]0,0[$]{||}in{||}abc{|||}error
                                {|}{cul}http...{\@}{cap}sdf{?}df{\@}sdfs{\|}sdfsd{\|\|}ssdf
								                {|}{---}
				用例五：{@}{ifc}[sys_var_res]{||}in{||}4\d%{|||}42%
								        {|}{shw}error
								        {|}{shw}nothing
{jsr} 执行javascript	并把结果追加到记录集里。
       格式：{jsr}js文件或js语句{||}文件编码{|}脚本语言(1:JScript,2:VBscript:3:JavaScript){|}执行函数名{||}函数的参数
       用例一：{jsr}js/abc.js{||}utf-8{|}javascript{|}strEnc{|}1884067,"qiu7Wx",null,null
       用例二：{jsr}function add(a){return a+1;} function test();{}{||}utf-8
                    {|}javascript
                    {|}add{||}3     
       用例三：{@}{jsr}des.js{||}utf-8{|}1{|}strEnc{||}1884067,qiu7Wx,,   
        
{for} for循环执行指令。在当前lex匹配时，反复gotoaction 匹配，直到for停止。
		格式：{for}从一个数{||}另一个数{||}循环类型 0：普通FOR循环 1：获取记录集的总记录数{|}语句1{\@}语句2 注意无论是一句还是多句，此处要用反定义符 如：{\@} {\|} {\|\|}
		      {foridx}：当前循环序号  {forres} 当前记录集里的值
                            {\|}multipart/form-data{\|\|}GB2312{\|\|}gzip, deflate{\|\|}false{\|}post{\@}{cal}123
				这里是每次循环执行的二个语句:cug 和 cal。还可以设置多个语句用反定义语句{\@} {\|} {\|\|}等
		用例二：{for}2{||}12{|}{cul}abc.lex{||}a{-}b{|||}c{--}b{|||}c{--}{fornextnum}{\|}uft-8
		用例三：{for}2{||}12{|}{cul}abc.lex{\|}uft-8
    用例四：{@}{for}1{||}[=]0[=]{|}{cug}http://boss.cqccn.com:18081/boss_web/gridturnpage?action=turnpage&pk=[=]1[=]&newpage=[foridx]{\|}
                            {\|}multipart/form-data{\|\|}GB2312{\|\|}gzip, deflate{\|\|}false{\|}post
                       {\@}{_shw}[sys_var_res]
                       {\@}{sql}DB_Conn_200_CqBoss{\|}DB_SQL_200_CqBoss{\|\|}{a}{-}[sys_var_res]
                                                                      {\|\|}{b}{-}2
                                                                      {\|\|}{c}{-}0
                                                                      {\|\|}{d}{-}[=]1[=]
                                                                      {\|\|}{e}{-}[=]0[=]
                                                                      {\|\|}{f}{-}[foridx]
                                                                      {\|\|}{g}{-}[forres]
                                                  {\|}1
    用例五：{for}2{||}12{||}1{|}{cul}abc.lex{\|}uft-8
		
{lex} 字符源中操作： 运行指定的lex语句或lex文件，得到结果后，替换源字符串 sContent
        格式：{lex}lex文件{||}需要替换标签1{--}标签1的值{|||}需要替换标签2{--}标签2的值...{|}文件编码格式
		    用例一：{lex}/tbtop/chn_cat_data.lex{||}fact{-}{0}{|||}aaa{-}bbb{|}utf-8
		          与{gre}区别:{gre}是对当前项做替换，不增加数组。{lex}是替换源字符串 sContent
				
		          
{num} 源字符串操作：计数器  运行次数计数器，每次数字累加1 ；或重置为0。并把数值替换源字符串；
        格式：{num}文件名{||}重写的值（可不写）  从计数文件里读取数字后，累加1，然后再保存。如果有{||}则把重写的值写到文件里。
				用例一 累加数字：{num}/reg/{--exe_threadid--}.num
				用例二 写固定的值：{num}/reg/{--exe_threadid--}.num{||}0  				
{pic}	价格图片URL转数字。匹配到价格图片
			  格式：{pic}src="{?}"
			  
{ral} 源字符源中操作：用指定的字符串替换源字符串sPageHtml。与{cul}的区别是，{ral}只能增加静态的代码。
		格式: {ral}字符串
        用例：{ral}abc 
        
{rep} 字符源中操作：对源字符串做替换操作。
        用例一：（默认）从根源串里匹配 语法：{rep}aaaaaaa{-}bbbbbb
		用例二：{cul}: 抓取url页面内容替换目标字符串。
									语法：{rep}aaaaaaa{-}{cul}bbbbbb
									即抓取指定URL的内容进行替换，如：{@}{rep}<div class="v6show_rows01" id="col1">{?}<span class="blank15"></span>{-}{cul}http://sp.jtmhw.com:1661/run.aspx?c=cul&f=snap_taobao_top{|}utf-8
									返回字符串 无格式化方式：{@}{rep}<!--abc-->{-}{cul}http://www.jtmhw.com/regs/webpage/comm/head_top_css.lex
									返回字符串 带格式化方式：{@}{rep}<body>{-}{cul}http://www.jtmhw.com/regs/webpage/comm/head_top.css{|}{|}<body>{0}
															 {@}{rep}<body>{-}{cul}http://www.jtmhw.com/regs/webpage/comm/head_top.css{|}utf-8{|}<body>{0}
									抓取错误时返回错误标识： {@}{rep}<body>{-}{cul}http://www.jtmhw.com/regs/webpage/comm/head_top.css{|}utf-8{|}<body>{0}{|}<!--lex_rse-->
									在抓取到的结果上再做lex匹配后返回结果： {@}{rep}<body>{-}{cul}http://www.jtmhw.com/regs/webpage/comm/head_top.css{|}utf-8{|}<body>{0}{|}<!--lex_rse-->{|}aaa{?}bbb{|}
									在抓取到的结果上再做lex匹配后返回结果，后format返回： {@}{rep}<body>{-}{cul}http://www.jtmhw.com/regs/webpage/comm/head_top.css{|}utf-8{|}<body>{0}{|}<!--lex_rse-->{|}aaa{?}bbb{|}{0}
	    用例三：{tkw}:淘宝关键词批量替换。把指定批量链接替换成淘宝的clickurl，返回：替换后的源串。语法：{tkw}链接{|}关键词（后台转化为taobao click url），使用如：{tkw}href="{?}"{|}d">{?}</a>
									批量替换指定区域的淘宝点击链接：完整语法：{rep}<ul class="tuijian_menu">{?}</ul>{-}{tkw}href="{?}"{|}d">{?}</a>
									例：{@}{rep}<ul class="tuijian_sortlist">{?}</ul>{-}{tkw}href="{?}"{|}">{?}</a>{||}{drp}<a{?}>{--}
		用例四：{sir}：对字符串加密批量替换。
									例：{@}{rep}<ul class="tuijian_sortlist">{?}</ul>{-}{sir}href="{?}"{|}href="/hw/s/sdfsd/srh.htm?=u{?}"
	    用例五：{rrn}:
									通过lex文件规从指定的url里抓取数据，并对数组的最后一项做指定数量的字符累加操作，得到值后替换源字符串。 {rrn}http://.....{|}lex文件{|}返回数量{|}网站名称{|}备用参数{|}页面编码，
									用例：{@}{rep}<!--data1-->{-}{rrn}http://s8.taobao.com/search?q=装备+swat&commend=all&unid=30&pid=mm_32305426_0_0&style=grid&s=0{|}hw/template_default_1{|}4{|}hw{|}class="Mr"{|}utf-8
									用例：{@}{rep}<!--data_s1_0-->{-}{rrn}{--site_name--}/template_default_0{|}{--data_url_in--}{--}http://s.taobao.com/search?spm=a230r.1.8.44.j0gY1t&q=%e6%88%b7%e5%a4%96%e6%9c%8d%e8%a3%85&promote=0&tab=shopping&newpre=0&fs=1&app=api&m=get_shopping_auction{||}{--site_name_in--}{--}{--site_name--}{||}{--data_num_in--}{--}1
		用例六：{cfl}: 读取指定的文件并格式化后替换目标字符串。
									返回字符串 无格式化方式：{@}{rep}<!--abc-->{-}{cfl}/regs/webpage/comm/head_top.css
									返回字符串 带格式化方式：{@}{rep}<body>{-}{cfl}/regs/webpage/comm/head_top.css{|}{|}<body>{0}
															 {@}{rep}<body>{-}{cfl}/regs/webpage/comm/head_top.css{|}utf-8{|}<body>{0}
		用例七：{clk}: 批量转换lex文件处理后的值（如：商品的点击链接，更换成本站的商品详细页面链接）。格式：
									读取URL:  {@}{rep}<ul class="tuijian_sortlist">{?}</ul>{-}{clk}href="{?}"{|}/regs/comm/url_clk/{|}<a href="{0}">           //此种情况设置设置LEX文件所在目录即可，具体的LEX文件名是“URL的域名.lex”。
		用例八：{rtf}: 批量转换lex文件(或lex语句)处理后的值（如：商品的点击链接，更换成本站的商品详细页面链接）。格式：
									格式一 用lex文件：{@}{rep}<ul class="tuijian_sortlist">{?}</ul>{-}{rtf}AAA"{?}"BB{|}/regs/comm/curl.lex{|}<a href="{0}">  //此种情况则直接指出LEX文件的路径。
									格式二 用lex语句：{@}{rep}<ol id="related1">{?}</ol>{-}{rtf}href={?}a>{|}>{?}<{|}/<!--site_name_en-->/k/s/s.htm?searchMsg={0}">{0}</
									格式三 手工指定url需要排除的key ，可以是多个。
										   用例：{@}{rep}</head>{?}</body>{-}{rtf}href="{?}"{|}/regs/webpage/comm/taobao/trun_any_url.lex{||}/aaaa/{|||}/bbbb/{|}{0}
		用例九：{eur}: urlencode 对内容进行url格式的编码。
									如：{@}{rep}服装{-}{eul}服装 
		用例十：{eht}: htmlencode 对内容进行html格式的编码。
									如：{@}{rep}服装{-}{eht}服装 
	    用例十一：{reg}: 结果也用lex语句的值，值做格式化后，再替换。
									格式一：{rep}a{?}b{-}{reg}a{?}b{|}href="{0}"
									格式二：{rep}a{?}b{-}{reg}正则表达式{|}href="{0}"     
		用例十二：{lex}: 运行lex文件得到结果（可以指定替换lex内容里的标签），再替换目标内容。  用这种方式可以替换上面的方式一 {cul} ，比它更灵活
									格式：{rep}需要替换的内容{-}lex的文件路径{||}标签名1{|||}标签值1....
									用例一：{rep}a{?}b{-}/a/b/c.lex{||}tag1{|||}val1{||}tag2{|||}val2....
									用例二：{rep}<!--data_s0-->{-}{lex}/regs/r_webdata/df/default.lex{||}{--datafile--}{|||}/hwyd/default.html
		用例十三：{dbt} 读sql绑定模板：	 从数据库里读取记录,每条记录 format 字符串后，再累加全部记录的字符串，并返回整合后的字符串。并可以实现指定字段的加密
									 格式：{rep}需要替换的内容{-}{dbt}webconfig里连接数据库里的KEY名{|}读取数据的sql语句{||}tag1{||}val1...{|}需要循环累加的字符串（取字段的值用{n}表示）{||}tag1{||}val1...{|}需要加密的字段序号{||}密码方式名称
									 如：{dbt}aabbcc{-}Db_MsSql_Conn1{|}Db_MsSql_Sql_R1{||}aaa{|||}1{|}<a {0}>{1}_{--tag1--}</a>{||}{--tag1--}{|||}[$]2,{$]
									     {dbt}aabbcc{-}Db_MsSql_Conn1{|}Db_MsSql_Sql_R1{||}aaa{|||}1{|}<a {0}>{1}_{--tag1--}</a>{||}{--tag1--}{|||}[$]2,{$]{|}0{||}fn3
{ret} 字符源中操作：对最原始的串匹配，并设置新的匹配资源。
                    重置匹配源，即原始的页面内容，此语句以下的匹配都以这新的源为准。
        格式：{ret}lex语句
        用例：{ret}abc{0}bbb
{rnd} 产生随机数，并增加到结果集里。 通过指定的格式产生指定的随机数。
				格式：{rnk}种类（0：数字；1：字符；2：数字和字符）{|}长度
				用例一：{rnk}1{|}5  生产长度为5的数字随机数。
				用例二：{rnk}2{|}5  产生长度为5的字母随机数。

{rth} 结果值操作：把各条记录值格式化后累加，并增加到记录集中
        格式：{rth}格式化语句
        格式：{rth}a{0}b  
{rsc} 字符源操作：字符串格式化字符源。  原来的:{ssc}
        格式：{rsc}aaaaaaa{0}bbbbbb
{rst} 字符源操作： 临时字符源操作： 源字符串格式化后，累加到临时字符源里（临时字符源累加操作）,无格式化字符串则是清空临时字符源串。 sContentSaveTmp。
      格式：{rst}格式化字符串或为空
      用例一：{rst}aaa{0}bbbb    格式化后累加到临时字符源中
	  用例二：{rst}aaa           aaa直接累加到临时字符源中
	  用例三：{rst}              值为空则是清空临时字符源。
{rsl} 字符源操作：把结果里的所有记录字符串格式化后累加后替换字符源。 原来的 {ssl}
      格式：{rsl}格式化的字符串
	  用例：{rsl}abc{0}bbb
{rsr} 字符源操作：用"临时源字符串"格式化后 与 正式的源字符串 替换内容。
      格式：{rsr}格式化字符串,可为空，可为常量。
	  用例一：{rsr}aaa{0}bbb  临时格式化后和正式值互换。
	  用例三：{rsr}aaaa       临时换为正式值，正式值为值定值=aaaa
	  用例二：{rsr}           临时直接和正式值互换。
{saf} 字符源中操作：把当前源字符串保存至文件
        格式：{saf}保存的文件名{|}格式化字符串{|}是字符长度，小于或等于此长度不生成文件{|}当有这些关键词是不生成文件 关键词1{||}关键词2...
        如下：
        方式一:{saf}/vancel/home/default.html{|}aa{0}{bbb}{|}100{|}张三{||}李四      把当前内存中匹配源的html代码保存到文件/vancel/home/default.html,若内容长度小于100个字符，或内容里有“张三，李四”则不生成文件
				方式二:{saf}/vancel/home/default.html{|}aa{0}{bbb}{|}100                     把当前内存中匹配源的html代码保存到文件/vancel/home/default.html,若内容长度小于100个字符则不生成文件
				方式三:{saf}c:\a\b.html  或 {saf}c:/a/b.html                                 直接保存
{sap} 保存图片 保存url指定的图片到本地,，结果增加到记录集里。
        格式：{sap}远程图片地址1{||}图片格式{||}保存的文件名1{|}远程图片地址1{||}图片格式{||}保存的文件名1{|}...
        用例：{sap}http://s.cn.bing.net/az/hprichbg/rb/ToledoSpain_ZH-CN9430759995_1366x768.jpg{||}jpg{||}wallpaper.jpg{|}http://s.cn.bing.net/abc.jpg{||}jpg{||}abc.jpg
{sdp} 设置桌面背景
        格式：{sdp}文件路径{|}展示方式[1,2,3]默认为2。
        用例一：{sdp}wallpaper.jpg{|}2
			  用例二：{sdp}C:\lex\programme\info\Code\Info.Crawle\bin\Release\abc.jpg

{sql} 执行sql语句。无返回值。
				格式：{sql}webconfig里连接数据库里的KEY名{|}再替换(解析后的)SQL语句里的标签{|}数据库类型 0：sqlserver 1:mysql{|}需要检查不为空的值
						  注意：第一个参数是连接数据库。Db_MsSql_Conn1
						        第二个参数（即sql参数）Db_MsSql_Sql_W1,当字符串里有“;”时则视为sql语句，不再需要从webconfig里读取。
						        第三个参数是指定数据库类型。0:sqlserver 1:mysql
						        第四个参数是可选项，可有或无。如有此项，为空时则不执行{sql}里的语句。通常用于检查字段是否有值 ，有值后才执行sql语句。
				用例一：{sql}Db_MsSql_Conn1{|}Db_MsSql_Sql_W1{|}0
				用例二：{sql}Db_MsSql_Conn1{|}Db_MsSql_Sql_W1{|}tag1{|||}val1{||}tag2{|||}val2...{|}0
			  用例三：{sql}Db_MsSql_Conn1{|}select tag1,tag2 from tba;{||}tag1{|||}val1{||}tag2{|||}val2...{|}1
			  用例三：{sql}Db_MsSql_Conn1{|}select tag1,tag2 from tba;{||}tag1{|||}val1{||}tag2{|||}val2...{|}1{|}[var_res]
{stg} 结果集操作：替换系统标签
					替换的内容与 [STG] 相同。			

{sfp} linux上传或下载文件 
        格式：{shf}上传类型（上传=up，下载=down）{|}主机IP{||}端口号{||}用户名{||}密码{|}本地文件路径{||}远程文件路径（可为空，默认为本地的文件名。）
		用例一：{sfp}up{|}127.0.0.1{||}22{||}root{||}123123{|}c:/a.txt{||}/home/b.txt
		用例二：{sfp}up{|}127.0.0.1{||}22{||}root{||}123123{|}a.txt{||}b.txt
		用例三：{sfp}up{|}127.0.0.1{||}22{||}root{||}123123{|}a.txt{|||}b.tzt     目标文件与本地文件同名
		用例四：{sfp}up{|}127.0.0.1{||}22{||}root{||}123123{|}a.txt{|||}aa.txt{||}b.txt   目标文件第一个文件由aa.txt存储为b.txt，第二个与本地文件同名。
        
		用例五：{sfp}down{|}127.0.0.1{||}22{||}root{||}123123{|}c:/a.txt{||}/home/b.txt
		用例六：{sfp}down{|}127.0.0.1{||}22{||}root{||}123123{|}a.txt{||}b.txt
		用例七：{sfp}down{|}127.0.0.1{||}22{||}root{||}123123{|}a.txt{|||}b.tzt     目标文件与本地文件同名
		用例八：{sfp}down{|}127.0.0.1{||}22{||}root{||}123123{|}a.txt{|||}aa.txt{||}b.txt   目标文件第一个文件由aa.txt存储为b.txt，第二个与本地文件同名。
{ssh} 连接Linux 并批量执行命令     2015-03-25 更新 
         格式：{ssh}主机IP{||}端口号{||}用户名{||}密码{||}是否完整返回执行结果 true:全部返回，false:返回最后一个执行命令的结果{|}语句1{||}语句2{||}
         用例一：{ssh}127.0.0.1{||}22{||}root{||}123123{|}ls{||}cd /{||}mkdir /test
		     用例二：{ssh}127.0.0.1{||}22{||}root{||}123123{||}true{|}ls{||}cd /{||}mkdir /test  
{stg} 结果集操作：替换系统标签
           {--site_domain--}	WebFactory.Common.RequestWeb.GetHost()
					 {--date1--}		    DateTime.Now.ToString("yyyy-MM-dd")
					 {--date2--}		    DateTime.Now.ToString("yyyyMMdd")
					 {--time1--}		    DateTime.Now.ToString("HH:mm:ss")
					 {--time2--}		    DateTime.Now.ToString("yyyyMMddhhmmss")
					 {--datetime--}		  DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")
					 {--rand5--}		    WebFactory.Common.Random_Plus.GetRandom5() 
					 {--ConstTag1--}    值= webconfig->ConstTag1
					 {--ConstTag2--}    值= webconfig->ConstTag2
					 {--ConstTag3--}    值= webconfig->ConstTag3
					 {--ConstTag4--}    值= webconfig->ConstTag4
					 {--ConstTag5--}    值= webconfig->ConstTag5
					 {--ConstTag6--}    值= webconfig->ConstTag6
					 {--ConstTag7--}    值= webconfig->ConstTag7
					 {--ConstTag8--}    值= webconfig->ConstTag8
					 
{shw} 字符源操作 显示指定的字符源
        格式：{shw}参数，可以为空或指定的内容
        用例一：{show}[res]    :为[res]是显示字符源内容
        用例二：{show}[=]1[=]  :显示指定变量的值。
        用例二：{show}abc :显示abc字符。

{trl} 结果集操作 - 循环记录：对字符串做 reg 匹配，并把匹配到的对象 做Lex替换，即用lex运行后的值替换原字符串。可用在还原或转换taobao click url。
			  用例一：{fns}md5{|}taobao.clkurl{|}lex文件路径      注：lex文件路径字符串可为空，或文件内容为空；当为空时不做最后一步（即：对源始地址的加工）操作。


				用例一：{trl}taobao.clkurl{|}href="{?}"{-}c:\a.lex 把源字符串带有淘宝click的商品加url，更换成原始的商品url,再对原始地址加工后，替换源字符串里的url。
				参照：C:\lex\programme\Info\app\Step2_GetUrlDetail\regs\info\run.lex 里的内容：
					  {trl}taobao.clkurl{|}{-@}href="{?}"{-@}href='{?}'{-}C:\lex\programme\Info\app\Step2_GetUrlDetail\regs\taobao\GetItemClkUrl.lex
				用例二：{trl}anystr{|}href="{?}"{-}c:\a.lex
				用例三：{trl}{|}href="{?}"{-}c:\a.lex

				注意：源字符串的类似功能替换用{rep}
				用例：{rep}<!--data_s0-->{-}{lex}/regs/r_webdata/df/default.lex{||}{--datafile--}{|||}/hwyd/default.html

{ulc} 字符源操作：通过lex语法匹配到url后，并抓取该url的内容，最后赋值给源字符串。
        格式：{ulc}data-reviewApi="{?}"

{wtm} 等待休息功能。
       格式：{wtm}毫秒时间
       用例：{wtm}1000    等待一秒。

系统标签
{--title--}
{--keywords--}
{--description--}
{--site_name--}		当前站点的名称，如:hw
{--site_domain--}	当前站点的URL
{--data_site_domain--} 当前数据domain
{--site_id--}		当前站点对应的ID编码  如：taobao: stdu1 ; tmall :stdu2
{--MenuNav_Id--}	完整的导航条ID字符串。
{--Channel_Nav_Id--} 频道导航条ID
{--channel_id--}
{--nav_url_head--} 页面分页的头地址
{--g_id--}
{--save_file--}		保存的文件名
{--Is_Remote--}		是不是远程抓取
{--show_file--}		显示的文件名1
{--show_file_hot--}	显示的文件名2
{--data_enurl1--}	加密url1
{--data_enurl2--}	加密url2
{--datetime--}		时间
{--data_num--}		数量
{--data_type--}
{--data_file--}		用于获取数据的lex格式文件
{--data_url--}		用于获取数据页面的URl	
{--data_Remote--}
{--data_save_file--}
{--rand5--}			随机5位数字 
{--other_para--}    其它参数

----------------------------------------------------------------------------

{mlc} 结果集操作：循环记录，从结果中过滤掉指定（>,<,<>,=）长度的记录，可同时多个数据同步操作。
        格式：{mcl}数组序号1{||}数组序号1{|}>{||}2{|}字符串1{-}替换串1{||}字符串2{-}替换串2...
        用例：{mlc}0{|}<{||}10{|}aaa{-}bbb{||}ccc{-}ddd
{msc} 结果集操作：循环记录，从结果中过滤掉含有指定（<>,=）关键字符的记录，可同时多个数据同步操作。
        格式：{mcl}数组序号1{||}数组序号1{|}in{||}张三{|||}李四{|}字符串1{-}替换串1{||}字符串2{-}替换串2...
        用例一：{mlc}0{|}<>{||}张三{|||}李四{|}aaa{-}bbb{||}ccc{-}ddd
        用例二  {mlc}0{||}1{|}={||}target{|||}虎{|}aaa{-}bbb{||}ccc{-}ddd
{msa} 结果集操作，不增加记录集，把源字符串替换为现在的结果：
				格式化结果集，并累加为一个字符串，再把源字符串替换为这为新的字符串。并支持子语句。
				格式：格式化的字符串{|}以第几个数组循环（以指定数组的子项总数为循环因子，循环累加结果字符串）{|}过滤长度数值（过滤小于此长度的数值）
				{>}
				{msa}<a href="{1}">{2}</a>{|}1{|}1
				{@}
				{saf}abc.txt