<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link rel="stylesheet" href="resources/css/style.css">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="/">KHmall</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" href="/productlist.do">상품 목록</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/productform.do">상품 등록</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/editproduct.do?edit=update">상품 수정</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/editproduct.do?edit=delete">상품 삭제</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            로그인
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">로그인</a></li>
            <li><a class="dropdown-item" href="#">회원가입</a></li>
          </ul>
        </li>
      </ul>
      <form action="" method="get" class="d-flex">
		<select name="field" class="form-select">
			<option ${(field eq "p_name")?"selected":""} value="p_name">상품명</option>
		    <option ${(field eq "p_category")?"selected":""} value="p_category">분류</option>
		</select>
	    <input type="search" name="kw" value="${kw}" class="form-control me-2">
	    <button type="submit" class="btn btn-outline-success">검색</button>
	  </form>
    </div>
  </div>
</nav>