<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
<meta name="renderer" content="webkit">
<title>客户信息 - 伙伴云表格</title>
<link rel="icon" href="assets/img/favicon.ico">
<link type="text/css" rel="stylesheet" media="all"
	href="https://o1aqprei7.qnssl.com/assets/css/hb_style.css?d63f0748b8f3671ac113">
<style id="customStyle">
.hb_wrap .hb_workspaces {
	top: -316px;
}

.hb_wrap_bg {
	height: 782px;
}

.hb_wrap_workspaces .hb_wrap .hb_workspaces {
	top: 0px;
	max-height: 782px;
}

.hb_wrap_workspaces .hb_wrap .switch_notice {
	top: 342px;
}

.hb_wrap_workspaces .hb_wrap .hb_header {
	top: 316px;
}

.hb_wrap_workspaces .hb_wrap .hb_main {
	margin-top: 396px;
}

.hb_wrap_workspaces .hb_wrap .hb_app {
	top: 396px;
}

.hb_wrap .hb_app {
	min-height: 702px;
}

.hb_nav_setting .hb_wrap_workspaces .hb_wrap .hb_setting {
	margin-top: 396px;
}

.hb_wrap .hb_setting {
	height: auto !important;
	height: 702px;
	min-height: 702px;
}

.mod_custom .custom_options .scroll {
	height: 682px;
}

.mod_custom .custom_specific .scroll {
	height: 594px;
}

.hb_item_side .side_content {
	height: 590px;
}

.hb_item_side.h_reply .side_content {
	height: 442px;
}

.hb_item_side.h_comment .side_content {
	height: 467px;
}

.hb_item_side.h_disable .side_content {
	height: 642px;
}

.hb_doc_scroll, .container_scroll {
	height: 694px;
}

.hb_market .market_main, .hb_market .market_side, .hb_market .market_appitem,
	.hb_market .market_body {
	height: 637px;
}

.popover.in {
	display: block;
	width: 190px;
	height: auto;
	left: 780px;
	top: 24px;
}

.orderBy {
	display: none;
	width: 190px;
	height: auto;
	left: 920px;
	top: 24px;
}

.btn_orderBy {
	cursor: pointer;
}

.mod_bulkoperation {
	display: none;
}

.tbl_height {
	width: 100%;
	height: 582px;
	overflow: scroll;
}

.tbl, .tbl th, .tbl td {
	border: 1px solid #eeecec;
}

.tbl th, .tbl td {
	padding: 0.5%;
	text-align: center;
}

.tbl {
	width: 1600px;
	border-left: none;
	border-right: none;
	font-size: 12px;
}

.tbl tr:hover, .tbl tr:nth-child (2n ):hover {
	cursor: pointer;
	background-color: #f2f6ff;
}

.tbl tr:nth-child (2n ){
	background-color: #f6f7f8;
}
.tbl tr th:first-child, .tbl tr td:first-child {
	border-left: none;
}

.tbl tr th:first-child, .tbl tr td:last-child {
	border-right: none;
}
</style>
</head>

<body class="hb_nav_app">
	<div id="root">

		<div class="hb_wrap">
			<div>
				<div>
					<div class="hb_workspaces">
						<div class="workspaces_h">
							<span>工作区</span>
							<p>和小伙伴一起共享数据的地方</p>
						</div>
						<div class="workspaces_c cl">
							<ul class="mod_workspaces cl">
								<li>
									<div class="mod_cover c_business"
										style="background-color: #79BEAF;">
										<span class="bl"></span><span class="br"></span>
										<h3 class=""
											style="color: #FFFFFF; background-color: #79BEAF;">
											大脑瓜子泽拉图的工作区</h3>
										<img
											src="https://oss-cn-hangzhou.aliyuncs.com/hb-v4-public/space_cover/1045757/0"
											class="photo">
									</div>
									<noscript></noscript>
								</li>
								<li class="workspace_add">
									<div>
										<i></i><span>创建工作区</span>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<div class="switch_workspaces undefined">
						<i title="选择工作区"></i>
					</div>
					<div class="hb_header undefined">
						<div class="set cl">
							<em class="pipe"></em><span class="mod_avatar avt_small"
								title="大脑瓜子泽拉图"><img
								src="https://oss-cn-hangzhou.aliyuncs.com/hb-v4-public/user_avatar/1311437/32"
								class="avatar" draggable="false"><span>大脑瓜子泽拉图</span> </span><a
								href="###" style="display: none;">hidden</a><a href="###"
								style="display: none;">hidden</a><a href="###"
								style="display: none;">hidden</a><a href="###"
								style="display: none;">解绑</a><a href="###"
								style="display: none;">解绑</a><a href="###"
								style="display: none;">解绑</a>
						</div>
						<div class="nav nav_second nav_back">
							<noscript></noscript>
							<h1>
								<span><cite>大脑瓜子泽拉图的工作区</cite> </span>
							</h1>
							<h3>返回</h3>
							<h2>
								<span><cite>客户信息</cite> </span>
							</h2>
						</div>
					</div>
				</div>
				<div>
					<div class="hb_app">
						<div class="hb_frame cl">
							<div class="hb_row cl ">
								<div class="col_2">
									<div class="fixed_custom">
										<div class="mod_custom hb_condition">
											<div class="custom_options">
												<div class="scroll">
													<div class="item_view" id="jump">
														<div class="view_mark jump">
															<i></i><b>设置表格及权限</b><cite><i></i> </cite><span
																class="guidepoint gp_install_app_setting"
																data-tip="在这里调整表格结构和数据的展现形式"><span></span> </span>
														</div>
													</div>
													<div class="item_view">
														<div class="view_mark">
															<a href="###" class="add_view"><i data-tip="添加新筛选"></i>
															</a><i></i><b>公共筛选</b>
															<noscript></noscript>
														</div>
														<ul class="ul-list">
															<li class="selected"><b id="status">全部</b></li>
															<li class="search-4"><b id="status0">取得联系</b><cite><i></i>
															</cite></li>
															<li class="search-5"><b id="status1">客户拜访</b><cite><i></i>
															</cite></li>
															<li class="search-6"><b id="status2">商务谈判</b><cite><i></i>
															</cite></li>
															<li class="search-7"><b id="status3">合同签订</b><cite><i></i>
															</cite></li>
															<li class="search-8"><b id="status4">付款完成</b><cite><i></i>
															</cite></li>
															<li class="search-9"><b id="status5">本案结束</b><cite><i></i>
															</cite></li>
															<li class="search-10"><b id="status6">本案失败</b><cite><i></i>
															</cite></li>
														</ul>
													</div>
													<div class="item_view" id="jump">
														<div class="view_mark jump">
															<i></i><b>自定义筛选</b><cite><i></i> </cite>
														</div>
													</div>
													<div class="item_view" id="jump">
														<div class="view_mark jump">
															<i></i><b>我的共享</b><cite><i></i> </cite>
														</div>
													</div>
												</div>
											</div>
											<div class="custom_specific"></div>
										</div>
									</div>
								</div>
								<div class="col_10">
									<div class="hb_itemlist">
										<div class="mod_operations">
											<a href="tb2.jsp" class="pn pn_add y"><i></i><span>客户</span>
											</a> <span>共 3 条</span>
											<div class="operation ">
												<span href="#" class="btn_orderBy"> <i data-tip="排序"></i>
													<div class="popover bottom orderBy ">
														<div class="popover-content">
															<div class="pop_menu cl">
																<div class="pop_tips">选择排序字段</div>
																<ul class="pop_select pop_sequence cl">
																	<li class=""><a href="###" title="创建人，升序">创建人，升序</a>
																	</li>
																	<li class=""><a href="###" title="创建人，降序">创建人，降序</a>
																	</li>
																	<li class=""><a href="###" title="创建时间，最旧的排前">创建时间，最旧的排前</a>
																	</li>
																	<li class="current"><a href="###"
																		title="创建时间，最新的排前">创建时间，最新的排前</a></li>
																	<li class=""><a href="###" title="修改人，升序">修改人，升序</a>
																	</li>
																	<li class=""><a href="###" title="修改人，降序">修改人，降序</a>
																	</li>
																	<li class=""><a href="###" title="修改时间，最旧的排前">修改时间，最旧的排前</a>
																	</li>
																	<li class=""><a href="###" title="修改时间，最新的排前">修改时间，最新的排前</a>
																	</li>
																	<li class=""><a href="###" title="最后活动时间，最旧的排前">最后活动时间，最旧的排前</a>
																	</li>
																	<li class=""><a href="###" title="最后活动时间，最新的排前">最后活动时间，最新的排前</a>
																	</li>
																</ul>
															</div>
														</div>
													</div>
												</span> <a href="#" class="th_sel"> <i></i>
													<div class="popover last_pop bottom"
														style="left: 941px; top: 22px; width: auto; max-height: 440px; overflow: auto;">
														<div class="popover-content">
															<div class="pop_menu cl">
																<div class="pop_tips">
																	<span>选择显示字段</span> <label style="float: right;"
																		onclick="cancelCheck(event)"> <input
																		class="sel_all all_del" type="checkbox"
																		checked="checked" /> <span>全选</span>
																	</label>
																</div>
																<ul class="pop_select pop_catlist cl">

																</ul>
															</div>
														</div>
													</div>
												</a> <cite> <a data-tip="从Excel新增或更新数据" class=""
													href="tb3.jsp"> <i></i> <span>导入</span>
												</a> <a data-tip="将数据导出为Excel" class="outexcle" href="###"><i></i><span>导出</span>
												</a>
												</cite> <cite> <span class="pn_switch pn_switch_off"><span
														class="checkbox"></span><em class="on">表格对外服务</em><em
														class="off">表格对外服务</em> </span>
												</cite>
											</div>
											<div class="item_search cl">
												<em class="drop"></em> <i data-tip="搜索" id="name_search"></i>
												<input type="text" class="s_input" placeholder="在结果中搜索"
													id="search-input">
												<div class="popover bottom">
													<div class="popover-content">
														<div class="pop_menu cl">
															<div class="pop_tips">
																<span>在以下字段中搜索</span> <label style="float: right;"
																	onclick="cancelCheck(event)"> <input
																	class="sel_all" type="checkbox" checked="checked" /> <span>全选</span>
																</label>
															</div>
															<ul class="pop_select pop_catlist cl">
																<li class="current"><span class="mod_category"><a
																		href="#">客户名称</a> </span></li>
																<li class="current"><span class="mod_category"><a
																		href="#">预计金额</a> </span></li>
																<li class="current"><span class="mod_category"><a
																		href="#">公司地址</a> </span></li>
																<li class="current"><span class="mod_category"><a
																		href="#">联系方式</a> </span></li>
																<li class="current"><span class="mod_category"><a
																		href="#">备注</a> </span></li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="mod_bulkoperation">
											<cite class="cancal_btn"><i></i><span>取消</span> </cite><span
												class="info"><span>已选择</span><strong>1</strong><em><span>/</span><span>1</span>
											</em><span>条数据</span> </span><a href="###" class="btn btn_del">删除</a>
										</div>
										<div class="mod_itemlist" style="min-height: 150px;">
											<noscript></noscript>
											<noscript></noscript>
											<div
												class="tbl_height fixedDataTableLayout_main public_fixedDataTable_main">

												<!-- 这才是你大哥我写的 -->

												<table class="tbl">
													<caption></caption>
													<colgroup>
														<col width="*">
														<col width="*">
														<col width="*">
														<col width="*">
														<col width="*">
														<col width="*">
														<col width="*">
														<col width="*">
														<col width="*">
														<col width="*">
														<col width="*">
														<col width="*">
													</colgroup>
													<thead>
														<tr>
															<th><input type="checkbox"></th>
															<th>客户名称</th>
															<th>客户来源</th>
															<th>销售状态</th>
															<th>销售人员</th>
															<th>联络时间</th>
															<th>预计签约时间</th>
															<th>预计金额</th>
															<th>公司地址</th>
															<th>联系方式</th>
															<th>备注</th>
															<th>附件</th>
														</tr>
													</thead>
													<tbody id="tb">
													</tbody>
												</table>

												<!-- 这才是你大哥我写的 -->

											</div>
										</div>
									</div>
								</div>
								<div class="hb_item_footer cl">
									<a href="###" class="switch_filter" data-tip="隐藏侧边栏"><i></i>
									</a><a href="###" data-tip="偏好" class="table_styles"><i></i> </a>
									<div class="mod_page" style="margin-left: -200px;">
										<div class="page">
											<a href="#" class="cur">1</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	</div>
	<script src="assets/js/jquery.min.js">
		
	</script>
	<script src="assets/js/amazeui.min.js">
		
	</script>
	<script>
jQuery(document).ready(function($) {//页面加载显示所有记录
	function getStr(n,value){
		for(var i=0;i<7;i++){
			if(value.status==i){
				value.status=document.getElementById('status'+i).innerHTML;
			}
		}
		if(value.source==0){
			value.source="推广活动";
		}
		if(value.source==1){
			value.source="媒体广告";
		}
		if(value.source==2){
			value.source="电话咨询";
		}
		if(value.source==3){
			value.source="熟人推荐";
		}
		if(value.source==4){
			value.source="其他";
		}
		 
		value.remarks=value.file="无";
		
		var trs = "";//加id
		trs = '<tr id="'+ value.id +'"><td>'
				+ (n + 1)
				+ '</td><td class="showLine">'
				+ value.name
				+ '</td><td class="showLine">'
				+ value.source
				+ '</td><td class="showLine"><span class="mod_category catcolor_o color_e" title="'
				+ value.status
				+ '" cid="'
				+ value.id
				+ '">'
				+ value.status
				+ '</span></td>	<td class="showLine">'
				+ value.straffName
				+ '</td><td class="showLine">'
				+ value.contactTime
				+ '</td><td class="showLine">'
				+ value.signTime
				+ '</td><td class="showLine">'
				+ value.money
				+ '元</td><td class="showLine">'
				+ value.address
				+ '</td><td class="showLine">电话：'
				+ value.phone
				+ '</td><td class="showLine">'
				+ value.remarks
				+ '</td><td class="showLine">'
				+ value.file
				+ '</td></tr>';
		return trs;
	}
	
	
	selectAll();//查询所有
	function selectAll() {
		$.ajax({
				url : "customer/showAll",
				type : "post",
				asyns : false,
				dataType : "json",
				success : function(msg) {
					$("#tb").html("");
					$.each(msg,function(n,value) {
							var trs=getStr(n,value);
							$("#tb").append(trs); //添加，不清空  
					});
					$("#tb tr .showLine").each(function(index,el) {
						$(this).hover(
							function(){
							  $(this).css('cursor','pointer');
							},
							function(){
							}
						);
						$(this).click(function(event) {
							if (confirm("是否更改客户信息")) {
									//取得id
									var getId = $(this).parent().attr("id");
									location.href="customer/updateStepOne?m="+getId
							}
						});
					});
				},
				error : function() {
					$("#tb").html("获取内容失败");
				}
		});
	}
	
	


	//通过name查询 键盘事件
	$(".s_input").keydown(function() {//alert("键盘事件");
		if (event.keyCode == 13) {
			var nameString=$(".s_input").val();
			var db={'name':nameString}
			
			$.ajax({
				url : "customer/showByName",
				type : "post",
				dataType : "json",
				data: db,
				success : function(msg) {
					$("#tb").html("");
					$.each(msg,function(n,value) {
							var trs=getStr(n,value);
							$("#tb").append(trs); //添加，不清空  
					});
					$("#tb tr .showLine").each(function(index,el) {
						$(this).hover(
							function(){
							  $(this).css('cursor','pointer');
							},
							function(){
							}
						);
						$(this).click(function(event) {
							if (confirm("是否更改客户信息")) {
									//取得id
									var getId = $(this).parent().attr("id");
									location.href = "customer/update?m="+ getId;//location.href实现客户端页面的跳转  
							}
						});
					});
				},
				error : function() {
					$("#tb").html("获取内容失败");
				}
		});
		}

	});

		//通过status查询

		$(".ul-list li").find(' b').each(function(index, el) {
			$(this).click(function(event) {
				if($(this).attr("id")=='status'){
					selectAll();
				}else{
					searchClick($(this).attr("id"));
				}
			});
		});
		
		//点击查询
		function searchClick(getValue) {
			var statu=getValue.substring(6)
			var statusValue={'status':statu}
			$.ajax({
					url : "customer/showByStatus",
					type : "post",
					dataType : "json",
					data:statusValue ,
					success : function(msg) {
					$("#tb").html("");
					$.each(msg,function(n,value) {
							var trs=getStr(n,value);
							$("#tb").append(trs); //添加，不清空  
					});
					$("#tb tr .showLine").each(function(index,el) {
						$(this).hover(
							function(){
							  $(this).css('cursor','pointer');
							},
							function(){
							}
						);
						$(this).click(function(event) {
							if (confirm("是否更改客户信息")) {
									//取得id
									var getId = $(this).parent().attr("id");
									location.href = "customer/update?m="+ getId;//location.href实现客户端页面的跳转  
							}
						});
					});
				},
				error : function() {
					$("#tb").html("获取内容失败");
				}
			});
		}

		$(".item_search").on("click",function(e) {
			
			
			$(this).addClass('s_focus');
			$(".orderBy").hide();
			
			$(".drop").click(function(event) {
				$('.s_focus').find(".popover").addClass('in');
			});
			
			
			$(document).one("click",function() {
				$(".item_search").removeClass('s_focus');
				$('.item_search').find(".popover").removeClass('in');
			});

			e.stopPropagation();
		});

		$(".s_focus").on("click", function(e) {
			e.stopPropagation();
		});
		$(".sel_all").click(function(event) {
			if ($(this).prop('checked')) {
				
				$(this).parents(".pop_tips").next(".pop_select").find('li').each(function(index,el) {
					$(this).addClass('current').find('span').addClass('mod_category')
				});
				
			} else {
				
				$(this).parents(".pop_tips").next(".pop_select").find('li').each(function(index,el) {
					$(this).removeClass('current').find('span').removeClass('mod_category');
				});
			}
		});
		
		
		$(".all_del").click(function(event) {if ($(this).prop('checked')) {
			
			$(".tbl").find('th,td').each(function(index, el) {
				$(this).show();
			});
		} else {
				$(".tbl").find('th,td').each(function(index, el) {
					$(this).hide();
				});
		}
		});
		
		
		$(".pop_select").find('li').each(function(index, el) {
				$(this).on("click",function(event) {
					$(this).toggleClass('current').find('span').toggleClass('mod_category')
					$(this).parents(".pop_select").siblings(".pop_tips").find(".sel_all").prop('checked',false)
				});
		});
		
		
		
		$(".btn_orderBy").click(function(e) {
			$(".orderBy").show();
			$(".last_pop").hide();
			$('.item_search').find(".popover").removeClass('in');
			$(".item_search").removeClass('s_focus');
			$(document).one("click", function() {
				$(".orderBy").hide();
			});
			e.stopPropagation();
		});

		$(".btn_orderBy").on("click", function(e) {
			e.stopPropagation();
		});

		var lith = "";
		var ullist = "";
		var thnum = 0;
		$(".th_sel").click(function(e) {
			$(".last_pop").show();
			$(".orderBy").hide();
			$('.item_search').find(".popover").removeClass('in')
			$(".item_search").removeClass('s_focus');
			$(document).one("click",function() {
				$(".last_pop").hide();
			});

			var _this = $(this)
			if (thnum == 0) {
				$(".tbl").find('th').each(function(index,el) {
									ullist = lith += "<li class='current'><span class='mod_category'>"+ $(this).text()+ "</span></li>"
									_this.find(".pop_select").html(ullist)
									_this.find(".pop_select").find('li:first-child').remove();
				});
				thnum = 1
				
				$(this).find(".pop_select").find('li').each(function(index,el) {
					$(this).on("click",function(event) {
						$(this).toggleClass('current').find('span').toggleClass('mod_category')
						$(this).parents(".pop_select").siblings(".pop_tips").find(".sel_all").prop('checked',false)
						if ($(this).not('.current')) {
							var num = index + 2;
							$(".tbl").find("th:nth-child("+ num+ ")").toggle();
							$(".tbl").find('tr').find("td:nth-child("+ num+ ")").each(function(index,el) {
								$(this).toggle();
							});
						}
					});
				});
			}

			e.preventDefault();
			e.stopPropagation();
		});

		$(".th_sel").on("click", function(e) {
			e.stopPropagation();
		});
		
		
		// 表格操作
		$(".tbl").find('tr').each(function(index, el) {
			$(this).find('td').first().html(index)
		});
		$(".tbl").find('th').first().find('input[type=checkbox]').click(function(event) {
			
			if ($(this).prop('checked')) {
				$(".mod_bulkoperation").show()
				$(".tbl").find('tr').each(function(index,el) {
					var checkinp = "<input type='checkbox'   id='checkboxselect ' value='"+$(this).attr('id')+"' />"
					$(this).find('td').first().html(checkinp)
				});
			} else {
				$(".tbl").find('tr').each(function(index,el) {
					var checkinp = "<input type='checkbox' id='checkboxselect ' value='"+$(this).attr('id')+"' />"
					$(this).find('td').first().html(checkinp)
				});
			}
		});
		
		
		$(".cancal_btn").click(function(event) {
			$(".mod_bulkoperation").hide()
			$(".tbl").find('tr').each(function(index, el) {
				$(this).find('td').first().html(index);
			});
		});
		
		
		//删除
		//复选删除数据
		$(".btn_del").click(function(event) {
			if (confirm("是否删除所选用户")) {
				var allid="";
				var $input = $('#tb input:checked');
				$input.each(function(){
					
					allid+=$(this).val()+",";
					
				});
				
				$.ajax({
					url : "customer/delete",
					type: "POST",         
	                data:{'m':allid}, 
	                dataType:'json',
					success : function(msg){
						if(msg.success){
							alert("删除成功！");
							location.href = "tb1.jsp"
						}else{
							alert("删除失败，请重新执行该操作！");
						}
					},
					error: function() {
						alert("返回值错误！");
					}
				});
				
			}
			selectAll();
			$(".mod_bulkoperation").hide()
		});
		$(".outexcle").click(function(event) {
			if (confirm("是否导出当前数据")) {
				var idarray =new Array();
				$(".tbl").find('tr').each(function(index,el) {
					idarray[index-1]=$(this).attr('id');
				});
				
				 $.ajax({
					url : "customer/outExcel",
					type: "POST",         
	                data:{'m':idarray.toString()}, 
	                dataType:'json',
					success : function(msg){
						var filename=msg.success+".xls";
						location.href="http://localhost:8080/crm/upload/"+filename;
					},
					error: function() {
						alert("返回值错误！");
					}
				}); 
				
			}
			selectAll();
			$(".mod_bulkoperation").hide()
		});
	
		$('#tb tr').each()
		function cancelCheck(e) {
			//取消冒泡
			e.cancelBubble = true;
		}
		

});
		
		
		
		
		
		// function cantne (e) {

		// 	$(this).toggleClass('current').find('span').toggleClass('mod_category') 
		// 	$(this).parents(".pop_select").siblings(".pop_tips").find(".sel_all").prop('checked',false)
		// }
		
	</script>
</body>
</html>