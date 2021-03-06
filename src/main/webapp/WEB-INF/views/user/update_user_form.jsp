<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp" %>

<br/><br/>
<div class="container">
<h3>회원정보</h3>
<br/>
<form action="#" class="was-validated">
  <div class="form-group">
  	<input type="hidden" id="id" value="${principal.user.id}">
    <label for="username">Username:</label>
    <input type="text" class="form-control" id="username" value="${principal.user.username}" name="username" readonly="readonly">
  </div>
  <div class="form-group">
    <label for="password">Password:</label>
    <input type="password" class="form-control" id="password" placeholder="Enter password" name="password" required>
    <div class="invalid-feedback">필수 항목입니다.</div>
  </div>
    <div class="form-group">
    <label for="email">Email:</label>
    <input type="email" class="form-control" id="email" value="${principal.user.email}" placeholder="Enter email" name="email" required>
    <div class="invalid-feedback">필수 항목입니다.</div>
  </div>
	<br/>
  <button type="button" id="btn-update" class="btn btn-primary">MODIFY</button>
</form>
</div>
<br/><br/>

<script src="/js/user.js"></script>
<%@ include file="../layout/footer.jsp" %>