<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta charset="utf-8">
	<meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<title>学生平时成绩</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/layer/theme/default/layer.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reponse.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom-pagination.min.css" /><!-- 1.引入css -->
	<style type="text/css">
		.alertceng{
			background: #FFFFFF;
			padding: 10px;
			display: none;
		}
		.alertceng span.title{
			margin-right: 10px;
		}
	</style>
</head>

<body>
	<div class="layui-fluid layadmin-homepage-fluid" style="background: #fff;width:90%;margin:0 auto;">
		<div id="page">
			<div class="btn-container">
				<button class="layui-btn" onclick="addtr();">新增一行</button>
				<button class="layui-btn" onclick="reloadtable();">刷新table表格</button>
				<button class="layui-btn" onclick="coldata();">获取某一列的数据</button>
			</div>
			<table id="table" class="reponsetable" ></table>
			<script type="text/html" id="editer">
				<a class="layui-btn layui-btn-xs" onclick="edittr(this)">编辑</a>
				<a class="layui-btn layui-btn-xs" onclick="deletetr(this)">删除</a>
				<a class="layui-btn layui-btn-xs" onclick="uptr(this)">上移</a>
				<a class="layui-btn layui-btn-xs" onclick="downtr(this)">下移</a>
		  </script>
		</div>
	</div>
	<div id="editcontent" class="alertceng">
			<p><span class="title">姓名:</span><input type="text" id="Name"/></p>
			<p><span class="title">学号:</span><input type="text" id="sno"/></p>
			<p><span class="title">学校:</span><input type="text" id="school"/></p>
			<p><span class="title">院系:</span><input type="text" id="department"/></p>
			<p><span class="title">专业:</span><input type="text" id="major"/></p>
			<p><span class="title">班级:</span><input type="text" id="class"/></p>
			<p><span class="title">分数:</span><input type="text" id="score"/></p>
			<p><span class="title">时间:</span><input type="text" id="time"/></p>
	</div>
	<div id="page1" class="page"></div><!-- 2.创建一个页码容器，设定宽度 -->

	<script type="text/javascript" src="${pageContext.request.contextPath}/js/custom-pagination.min.js"></script>
	<script type="text/javascript">
		// 4.调用插件
		var box = new CustomPagination('#page1', {
			total: ${page.totalPage},//总页数
			changePage: function (pageNum) {//切换页码成功回调
				console.log('当前页码：'+pageNum)
			}
		});
	</script>
</body>
<script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.basictable.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/reponsetable.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/layer/layer.js"></script>
<script type="text/javascript">
	$(function(){
		$('#table').basictable({
			breakpoint: 768
		});
		$("#table").reponsetable({
			"id":"table",
			"operation": "editer",
			"type":"numbers",
			"colum": [
				{"field": "Name","title": "姓名"},
				{"field": "sno","title": "学号"},
				{"field": "school","title": "学校"},
				{"field": "department","title": "院系"},
				{"field": "major","title": "专业"},
				{"field": "class","title": "班级"},
				{"field": "score","title": "分数"},
				{"field": "time","title": "时间"}
			],
			"data":[
				// {"Name":"1"}
				<c:forEach items="${score}" var="i">
				{"Name": "${i.name}","sno": "${i.sno}","school": "${i.school}","department": "${i.department}","major": "${i.major}","class": "${i.class1}","score": ${i.score},"time":" ${i.commit_time}"},
				<%--{"sno":${i.id}}--%>
				</c:forEach>
			]
		});

	})
	function addtr() {
		layer.open({
		  type: 1,
		  title: '编辑人员信息',
		  closeBtn: 1,
		  area: '516px',
		  skin: '#fff', //没有背景色
		  shadeClose: true,
		  content: $('#editcontent'),
		  btn:["保存","关闭"],
		  btn1:function(index,layero){
			  var Name=$("#Name").val();
			  var Age=$("#Age").val();
			  var Gender=$("#Gender").val();
			  var Height=$("#Height").val();
			  var Province=$("#Province").val();
			  var Sport=$("#Sport").val();
			  var obj = {
				"Name":Name,
			  	"Age": Age,
			  	"Gender": Gender,
			  	"Height": Height,
			  	"Province": Province,
				"Sport":Sport
			  };
			  reponse.addtr(obj, "table");
			  //reponse.editsavetr(obj, "table");
			  layer.close(index);
		  },btn2:function(index,layero){
			  layer.close(index);
		  }
		});
	};
	function uptr(btn, e) {
		var tr = $(btn).parent().parent();
		reponse.moveuptr(tr, "table");
	}
	function downtr(btn, e) {
		var tr = $(btn).parent().parent();
		reponse.moveDown(tr, "table");
	}
	function ExportExcel() {
		var tableobj=$("#table").data("tableObj");
		reponse.JSONToCSVConvertor(tableobj, true,"人员表格");
	}
	function reloadtable(){
		var data=[
			{"Name": "1111","Age": 15,"Gender": "1","Height": 189,"Province": "1","Sport": "1"},
			{"Name": "2222","Age": 15,"Gender": "2","Height": 2,"Province": "2","Sport": "2"},
			{"Name": "3333","Age": 15,"Gender": "4","Height": 189,"Province": "3","Sport": "3"}
		]
		reponse.reloadtable(data,"table");
	}
	function edittr(a, e) {
		var tr = $(a).parent().parent();
		reponse.resiverowdata(tr, "table");
		var rowdata=$("#table").data("rowdata");
		//alert(JSON.stringify(rowdata));
		//页面层-佟丽娅
		
		layer.open({
		  type: 1,
		  title: '编辑人员信息',
		  closeBtn: 1,
		  area: '516px',
		  skin: '#fff', //没有背景色
		  shadeClose: true,
		  content: $('#editcontent'),
		  btn:["保存","关闭"],
		  btn1:function(index,layero){
			  var Name=$("#Name").val();
			  var Age=$("#Age").val();
			  var Gender=$("#Gender").val();
			  var Height=$("#Height").val();
			  var Province=$("#Province").val();
			  var Sport=$("#Sport").val();
			  var obj = {
				"Name":Name,
			  	"Age": Age,
			  	"Gender": Gender,
			  	"Height": Height,
			  	"Province": Province,
				"Sport":Sport
			  };
			  reponse.editsavetr(obj, "table");
			  layer.close(index);
		  },btn2:function(index,layero){
			  layer.close(index);
		  }
		});
	}
	function deletetr(a, e) {
		var tr = $(a).parent().parent();
		reponse.deletetr(tr, e);
	}
	function coldata(){
		var pp=reponse.Columndata("Name","table");
		alert(pp);
	}
</script>
</html>