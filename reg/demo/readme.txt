1.tim  格式 ：检测的周期（秒）|月|日|小时：分钟
参数1 （检测周期）：以秒为单位 
参数2 （月）：<!--每月的触发日, 0或空表示每天-->
参数3 （日）：<!--每周的触发日（多周用“;”分隔如：1;2;3）, 0表示周日，星期为空时不执行。日期与星期都不为空时，以星期为准-->
参数4 （时）：<!--每天的触发时间(多点用“;”分隔如：1:32;3:12;5:26)（此时系统自动更改App_Task_ChkTime=60）, 0或空表示不限时间（此时周期以 App_Task_ChkTime 为准）-->

**********************************************************************************************************

语法说明：

权重顺序：同一栏目抓取设置的顺序为从小至大。不重要的放在最上面，重要的值放在最下面。

{>} 分隔抓取的栏目
{@} 同等级执行下一步操作
{#} 上一步是抓取内容语句，以@分隔语句，可使用{}命令；#下一名通常是替换的语句，可以有多句，以#分隔。匹配结果里执行下一步操作
{-} 替换语法，与{rep}或{drp}同时使用。a{-}b,即把a替换成b; a{-} 即把a替换成空字符串
{--} 嵌套替换分隔
{|} 分隔符，在语法字符串里使用。如：{tkw}href="{?}"{|}d">{?}</a>
{||} 嵌套分隔,用在有{|}语句里的{||}


[$]n,n[$] 配置到的结果：在任意地方获取指定的结果数组里的值，可在lex文件里的任意地方使用，在{>}环节gotoAgin:环节时处理。
						第一个n：大数组序号；第二个N:具体一个数组里的第几个值，序号从0开始。
                        格式：[$]1,2[$] 即：取第2个大数组里的第3个值
						如：detail_2.lex 里 
						    {@}{rep}<!--detail_left_rel_shop_list-->{-}{cul}http://{--site_domain--}/c/ctrl/get_data_list.aspx?f={--site_name--}/detail_left_rel_shop_list&t={--site_id--}&n={--site_name--}&g=[$]3,0[$]
[GB2]...[GB2] 把内容转变为gb2312
               格式：[GB2]我是UTF8字符串[GB2]


程序初始化时的事务：
             1.替换系统标签
			      [STG]site_domain[STG] 
			      [STG]datetimeL[STG]    返回格式：yyyy-MM-dd HH:mm:SS
					  [STG]datetimeM[STG]    返回格式：MM
					  [STG]datetimeD[STG]    返回格式：dd
					  [STG]datetimeD1[STG]   返回格式：MMdd
					  [STG]rand5[STG]        返回5位长度的随机数


	用例：
	{mul}http://sp.163.com:1661/default.html{|}utf-8
	{>}
	{rep}class="menuhover"{-}class="menuhover-d"
	{@}{rep}<ul class="tuijian_sortlist">{?}</ul>{-}{tkw}href="{?}"{|}">{?}</a>{||}{drp}<a{?}>{--}
	{@}<ul class="tuijian_sortlist">{?}</ul>
	
一. 一级系统标签
{--rand5--}			随机5位数字 
{--datetime--}  ddhhmmss

二.二级系统标签
{set} 字符源中操作：修改匹配的源内容，此语句以下的匹配都以这新的源为准。
{ret} 字符源中操作：重置匹配源，即原始的页面内容，此语句以下的匹配都以这新的源为准。
{rep} 字符源中操作：方法一（默认）：从根源串里匹配 语法：{rep}aaaaaaa{-}bbbbbb
					  方法二：{cul}: 抓取url页面内容替换目标字符串。
									语法：{rep}aaaaaaa{-}{cul}bbbbbb
									即抓取指定URL的内容进行替换，如：{@}{rep}<div class="v6show_rows01" id="col1">{?}<span class="blank15"></span>{-}{cul}http://sp.163.com:1661/run.aspx?c=cul&f=snap_taobao_top{|}utf-8
									返回字符串 无格式化方式：{@}{rep}<!--abc-->{-}{cul}http://www.163.com/regs/webpage/comm/head_top_css.lex
									返回字符串 带格式化方式：{@}{rep}<body>{-}{cul}http://www.163.com/regs/webpage/comm/head_top.css{|}{|}<body>{0}
															 {@}{rep}<body>{-}{cul}http://www.163.com/regs/webpage/comm/head_top.css{|}utf-8{|}<body>{0}
									抓取错误时返回错误标识： {@}{rep}<body>{-}{cul}http://www.163.com/regs/webpage/comm/head_top.css{|}utf-8{|}<body>{0}{|}<!--lex_rse-->
									在抓取到的结果上再做lex匹配后返回结果： {@}{rep}<body>{-}{cul}http://www.163.com/regs/webpage/comm/head_top.css{|}utf-8{|}<body>{0}{|}<!--lex_rse-->{|}aaa{?}bbb{|}
									在抓取到的结果上再做lex匹配后返回结果，后format返回： {@}{rep}<body>{-}{cul}http://www.163.com/regs/webpage/comm/head_top.css{|}utf-8{|}<body>{0}{|}<!--lex_rse-->{|}aaa{?}bbb{|}{0}
					  方法三：{tkw}:淘宝关键词批量替换。把指定批量链接替换成淘宝的clickurl，返回：替换后的源串。语法：{tkw}链接{|}关键词（后台转化为taobao click url），使用如：{tkw}href="{?}"{|}d">{?}</a>
									批量替换指定区域的淘宝点击链接：完整语法：{rep}<ul class="tuijian_menu">{?}</ul>{-}{tkw}href="{?}"{|}d">{?}</a>
									例：{@}{rep}<ul class="tuijian_sortlist">{?}</ul>{-}{tkw}href="{?}"{|}">{?}</a>{||}{drp}<a{?}>{--}
					  方法四：{sir}：对字符串加密批量替换。
									例：{@}{rep}<ul class="tuijian_sortlist">{?}</ul>{-}{sir}href="{?}"{|}href="/hw/s/sdfsd/srh.htm?=u{?}"
					  方法五：{rrn}:
									通过lex文件规从指定的url里抓取数据，并对数组的最后一项做指定数量的字符累加操作，得到值后替换源字符串。 {rrn}http://.....{|}lex文件{|}返回数量{|}网站名称{|}备用参数{|}页面编码，
									用例：{@}{rep}<!--data1-->{-}{rrn}http://s8.taobao.com/search?q=装备+swat&commend=all&unid=30&pid=mm_32305426_0_0&style=grid&s=0{|}hw/template_default_1{|}4{|}hw{|}class="Mr"{|}utf-8
									用例：{@}{rep}<!--data_s1_0-->{-}{rrn}{--site_name--}/template_default_0{|}{--data_url_in--}{--}http://s.taobao.com/search?spm=a230r.1.8.44.j0gY1t&q=%e6%88%b7%e5%a4%96%e6%9c%8d%e8%a3%85&promote=0&tab=shopping&newpre=0&fs=1&app=api&m=get_shopping_auction{||}{--site_name_in--}{--}{--site_name--}{||}{--data_num_in--}{--}1
					  方法六：{cfl}: 读取指定的文件并格式化后替换目标字符串。
									返回字符串 无格式化方式：{@}{rep}<!--abc-->{-}{cfl}/regs/webpage/comm/head_top.css
									返回字符串 带格式化方式：{@}{rep}<body>{-}{cfl}/regs/webpage/comm/head_top.css{|}{|}<body>{0}
															 {@}{rep}<body>{-}{cfl}/regs/webpage/comm/head_top.css{|}utf-8{|}<body>{0}
					  方法七：{clk}: 批量转换lex文件处理后的值（如：商品的点击链接，更换成本站的商品详细页面链接）。格式：
									读取URL:  {@}{rep}<ul class="tuijian_sortlist">{?}</ul>{-}{clk}href="{?}"{|}/regs/comm/url_clk/{|}<a href="{0}">           //此种情况设置设置LEX文件所在目录即可，具体的LEX文件名是“URL的域名.lex”。
					  方法八：{rtf}: 批量转换lex文件(或lex语句)处理后的值（如：商品的点击链接，更换成本站的商品详细页面链接）。格式：
									格式一 用lex文件：{@}{rep}<ul class="tuijian_sortlist">{?}</ul>{-}{rtf}AAA"{?}"BB{|}/regs/comm/curl.lex{|}<a href="{0}">  //此种情况则直接指出LEX文件的路径。
									格式二 用lex语句：{@}{rep}<ol id="related1">{?}</ol>{-}{rtf}href={?}a>{|}>{?}<{|}/<!--site_name_en-->/k/s/s.htm?searchMsg={0}">{0}</
									格式三 手工指定url需要排除的key ，可以是多个。
										   用例：{@}{rep}</head>{?}</body>{-}{rtf}href="{?}"{|}/regs/webpage/comm/taobao/trun_any_url.lex{||}/aaaa/{|||}/bbbb/{|}{0}
					  方法九：{eur}: urlencode 对内容进行url格式的编码。
									如：{@}{rep}服装{-}{eul}服装 
					  方法十：{eht}: htmlencode 对内容进行html格式的编码。
									如：{@}{rep}服装{-}{eht}服装 
					方法十一：{reg}: 结果也用lex语句的值，值做格式化后，再替换。
									格式一：{rep}a{?}b{-}{reg}a{?}b{|}href="{0}"
									格式二：{rep}a{?}b{-}{reg}正则表达式{|}href="{0}"     
					方法十二：{lex}: 运行lex文件得到结果（可以指定替换lex内容里的标签），再替换目标内容。  用这种方式可以替换上面的方式一 {cul} ，比它更灵活
									格式：{rep}需要替换的内容{-}lex的文件路径{||}标签名1{|||}标签值1....
									用例一：{rep}a{?}b{-}/a/b/c.lex{||}tag1{|||}val1{||}tag2{|||}val2....
									用例二：{rep}<!--data_s0-->{-}{lex}/regs/r_webdata/df/default.lex{||}{--datafile--}{|||}/hwyd/default.html
					方法十三：{dbt} 读sql绑定模板：	 从数据库里读取记录,每条记录 format 字符串后，再累加全部记录的字符串，并返回整合后的字符串。并可以实现指定字段的加密
									 格式：{rep}需要替换的内容{-}{dbt}webconfig里连接数据库里的KEY名{|}读取数据的sql语句{||}tag1{||}val1...{|}需要循环累加的字符串（取字段的值用{n}表示）{||}tag1{||}val1...{|}需要加密的字段序号{||}密码方式名称
									 如：{dbt}aabbcc{-}Db_MsSql_Conn1{|}Db_MsSql_Sql_R1{||}aaa{|||}1{|}<a {0}>{1}_{--tag1--}</a>{||}{--tag1--}{|||}[$]2,{$]
									     {dbt}aabbcc{-}Db_MsSql_Conn1{|}Db_MsSql_Sql_R1{||}aaa{|||}1{|}<a {0}>{1}_{--tag1--}</a>{||}{--tag1--}{|||}[$]2,{$]{|}0{||}fn3

{drp} 配置到的结果：在匹配到的结果里替换     
					 方法一：		（默认）：{drp}a{?}b{-}bbb
					 方法二：	{reg}: 结果也用lex语句的值，值做格式化后，再替换。
									格式：	{drp}a{?}b{-}{reg}a{?}b{|}hrf="{0}"
					 方法三：	{pah}: 把字符串设置为路径字符串
									格式：{rep}<pah_{?}_pah>{-}{pah}切割的字符长度
									用例：{rep}<pah_{?}_pah>{-}{pah}5
									
{url} 字符源中操作：抓取匹配到的一个url对应的页面,并替换现在的源字符串。格式：{url}data-reviewApi="{?}"
{cfl} 字符源中操作：在服务端直接读取文件内容,并替换现在的源字符串。格式如{cfl}/data/a.lex或 {cfl}c:/data/a.lex{|}utf-8
{ral} 字符源中操作：替换数据源    sPageHtml 内容。与{cul}的区别是，{ral}只能增加静态的代码。				
{cal} 配置到的结果：把静态的源字符串，增加到结果数组里。
{sse} 配置到的结果：在匹配到的结果首和尾增加指定字符串（可以用{|}或{0}或两者同时使用）。格式如：{sse}aaaaaaa{|}bbbbbb;{sse}aaaaaaa{0}bbbbbb;
{ssc} 字符源中操作：字符串格式化字符源。格式如：{ssc}aaaaaaa{0}bbbbbb
{saf} 字符源中操作：把当前源字符串保存至文件，参数用{|}分隔，有二种格式，如下：
					  默认：{saf}/vancel/home/default.html 把当前内存中匹配源的html代码保存到文件/vancel/home/default.html 
					  方式二:{saf}/vancel/home/default.html{||}aa{0}{bbb} 把当前内存中匹配源的html代码保存到文件/vancel/home/default.html 
					  方式三:{saf}http://star.vancl.com{|}/vancel/home/default.html{|}utf-8 用utf-8编码抓取star.vancl.com并保存到文件/vancel/home/default.html   
					  方式四:{saf} 不带任何无参数，即把当前源字符串，增加到数组里，此时数组会多一个值。
					  方式五:{saf}http://star.vancl.com{|}/vancel/home/default.html{|}utf-8 {|}<!--lex_rse-->  增加写文件时是否有错误标签的判断，如果有则生成.err的文件，且不覆盖原文件。
					  方式六:{saf}c:\a\b.html  或 {saf}c:/a/b.html
{fug} 配置到的结果：unicode转gb2312，对当前项的值，编码后重置值。
{fen} 配置到的结果：字符串加密后,再对字符串url编码，对当前项的值，编码后重置值。
{feu} 配置到的结果：对字符串URL编码，对当前项的值编码后重置值。
{fdu} 配置到的结果：对字符串URL解码，对当前项的值解码后重置值
{fk1} 配置到的结果：对系统字符串替换，如 / 和 & 等
{fk2} 配置到的结果：对系统字符串还原，如 / 和 & 等
{rts} 配置到的结果：把源字符，增加到结果数组里。
{rth} 配置到的结果：把结果格式做累加后，增加到结果数组里
					格式：{rth}a{0}b
{clr} 配置到的结果：清除HTML标签。
{fn1} 配置到的结果：对结果数组的值，做数字加密，返回double类型
{fn2} 配置到的结果：对结果数组的值，做数字解密，返回double类型
{dlt} 配置到的结果： 过滤记录,可为多个条件。格式： {dlt}aaa{|}bbb{|}ccc{|}  即：从结果中过滤含有aaa,bbb,ccc字符串的记录。
{dls} 配置到的结果： 保留记录,可为多个条件。格式： {dlt}aaa{|}bbb{|}ccc{|}  即：从结果中保留含有aaa,bbb,ccc字符串的记录。
{dln} 配置到的结果： 过滤指定长度的记录。格式：{dln}3  即：去掉长度小于3的记录。
{dlm} 配置到的结果： 过滤指定长度的记录。格式：{dlm}3  即：去掉长度大于3的记录。
{cap} 默认的匹配语句 
      格式一,默认：aaa{?}bbb
	    格式二，返回错误标签：aaa{?}bbb{|}<!--lex_rse-->
{num} 计数器  运行次数计数器，每次数字累加1 ,数值增加到记住集里
                格式：{num}文件名  从计数文件里读取数字后，累加1，然后再保存。
				用例一：{num}/reg/{--exe_threadid--}.num
{---} 注释语句。	