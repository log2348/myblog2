<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ include file="../layout/header.jsp" %>

<div class="container">
  <form action="/auth/loginProc" methd="post">
    <br />
    <div class="form-group">
      <label for="username">Username:</label>
      <input type="text" class="form-control" placeholder="Enter username" id="username" />
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" class="form-control" placeholder="Enter password" id="password" />
    </div>
    <button type="submit" id="btn-login" class="btn btn-primary">LOGIN</button>
  </form>
</div>
<br />

<%@ include file="../layout/footer.jsp" %>
