<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ include file="../layout/header.jsp" %>

<div class="container">
    <form  action="/auth/joinProc" method="post">
      <br />
  <h3><b>회원가입</b></h3>
    <br />
    <div class="form-group">
      <label for="username">Username: </label>
      <input type="text" class="form-control" placeholder="Enter username" id="username" name="username">
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" class="form-control" placeholder="Enter password" id="password" name="password">
    </div>
    <div class="form-group">
      <label for="email">Email Address:</label>
      <input type="email" class="form-control" placeholder="Enter email" id="email" name="email">
    </div>

    <button id="btn-join" type="submit" class="btn btn-primary">JOIN</button>
  </form>
</div>
<br />

<%@ include file="../layout/footer.jsp" %>
