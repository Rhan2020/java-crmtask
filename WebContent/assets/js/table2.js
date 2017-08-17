

jQuery(document).ready(function($) {
	//changeBg();
	$(".btn-save").on("click", function(){
		getValue();
	});
	
});
function getValue(){
	var name = $(".customer-name").val();
	var money = $(".money").val();
	var address = $(".address").val();
	var contactMethod = $(".pt").val();
	var remarks = $(".simditor-body p").text();
	
	//转换为json对象
	var json = {"name":$(".customer-name").val(),
				"money":$(".money").val(),
				"address":$(".address").val(),
				"phone":$(".pt").val(),
				"remarks":$(".simditor-body p").text()
		};
	$.ajax({
		url : "customerServlet?method="+encodeURI(encodeURI(json)),
  		type : "post",
  		dataType : "json",
  		success : function(msg){
			alert("保存成功！");
  		}
  				
	});
}


function changeBg(){
	alert("这是改变背景颜色！！！");
	$("#status-list li span").on("click",function(){
		alert("我被点击了！！！！");
	});
	$("#status-list li span").click(function(){
		$(this).attr("value", "isSelect");
	});
	alert($(".rc-calendar-picker .getdate span").val());
	
}




