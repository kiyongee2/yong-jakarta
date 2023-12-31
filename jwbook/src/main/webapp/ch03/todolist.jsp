<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>todo list</title>
<link rel="stylesheet" href="../resources/css/bootstrap.css">
</head>
<body>
	<div class="container bg-warning shadow mx-auto mt-5 p-5 w-75">
		<h2>My ToDo App</h2>
		<hr>
		<div class="input-group">
			<input id="item" type="text" class=form-control placeholder="할일을 입력하세요">
			<button type="button" class="btn btn-primary" onclick="addItem()">할 일 추가</button>
		</div>
		<hr>
		<ul id="todolist" class="list-group"></ul>
	</div>
	
	<script>
		function addItem(){
			let todo = document.getElementById("item");
			let list = document.getElementById("todolist");
			//li 태그 추가
			let listitem = document.createElement("li");
			//listitem에 스타일 넣기
			listitem.className
				= "d-flex list-group-item list-group-item-action list-group-item-warning";
			//'x' 버튼 추가
			let xbtn = document.createElement("button");
			xbtn.className = "btn-close ms-auto";
			
			//x 버튼 누르면 todo 내용 삭제
			xbtn.onclick = function(e){
				//클릭한 대상 <li>를 얻어서 <ul>에서 제거함
				let pnode = e.target.parentNode;
				list.removeChild(pnode);
			}
			listitem.innerText = todo.value;
			//li에 button 붙이기
			listitem.appendChild(xbtn);
			//ul에 li 붙이기
			list.appendChild(listitem);
			
			//입력칸 비우기 및 포커스 이동
			todo.value = "";
			todo.focus();
		}
	</script>
</body>
</html>