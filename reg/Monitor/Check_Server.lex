功能：监测服务的情况 monitortoo@sina.com
{@}{ssh}[host]{||}[port]{||}[user]{||}[pwd]{||}[status]{|}
				df -h
{@}{ifc}[var_res]{||}in{||}主机没有反应
        {|}{shw}[no].[servername]服务器（[host]） 无法连接，发送报告邮件...{\@}{lex}/reg/comm/SendMail.lex{\|\|}
																									  	  [title_s]{-}[servername]服务器连接失败{\|\|\|}
																										    [msg_s]{-}[no].[servername]服务器（[host]）无法连接,可能VPN断线 或 服务器出现问题无法连接。
																									   {\|}utf-8
																					     {\@}{end}
																					     
				{|}{shw}[no].[servername]服务器（[host]）连接正常,开始检查磁盘空间...
{@}{shw}[no].[servername]服务器（[host]） [var_res]	
{@}{ifc}[=]0[=]{||}in{||}8\d%{|||}80%
        {|}{shw}[no].警告：[servername]服务器（[host]） 磁盘空间占用超过80%。{\@}{lex}/reg/comm/SendMail.lex{\|\|}
																									  	  [title_s]{-}[servername]服务器磁盘空间占用超过80%{\|\|\|}
																										      [msg_s]{-}[no].[servername]服务器（[host]）磁盘空间占用超过80%。
																										    					  [=]0[=]
																									   {\|}utf-8
        {|}{shw}[no].[servername]服务器（[host]） 服务器正常
          
{@}{ifc}[=]0[=]{||}in{||}9\d%{|||}90%
        {|}{shw}[no].[servername]服务器（[host]）开始执行服务硬盘空间清理工作{\@}{lex}/reg/comm/cleardisk.lex{\|\|}[host_s]{-}[host]{\|\|\|}
        																																				  [port_s]{-}[port]{\|\|\|}
        																																				  [user_s]{-}[user]{\|\|\|}
        																																		        [pwd_s]{-}[pwd]{\|\|\|}
        																																		  [status_s]{-}[status]{\|\|\|}
        																												     [title_c]{-}[servername]服务器自动清理报告{\|\|\|}
        																 [msg_c]{-}[no].[servername]服务器（[host]）的磁盘空间达到90%以上。现已完成硬盘清理工作。
        																				     {\|}utf-8
        {|}服务器正常，不做清理。
{@}{shw}---------------------------------------------------------------------