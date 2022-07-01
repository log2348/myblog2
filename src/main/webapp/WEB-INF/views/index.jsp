<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ include file="layout/header.jsp" %>

<style>
  .multiLine {
    width: 250px;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 1;
    -webkit-box-orient: vertical;
  }
</style>

<div class="container" style="margin-top: 30px">
  <img class="card-img-top" src="/image/dog.png" />
  <div class="card-body">
    <c:if test="${not empty principal}">
      <h4 class="card-title">${principal.user.username} 님</h4>
      <a href="/user/update_user_form" class="badge badge-info">MY INFO</a>
    </c:if>
  </div>
</div>

<div class="container" style="margin-top: 30px">
  <div class="row">
    <c:forEach var="board" items="${pageable.content}">
      <div class="card m-2 col-sm-10">
        <div class="card-body">
          <h2>${board.title}</h2>
          <h6>Date : ${board.createDate}</h6>
          <h8 type="text" class="multiLine">${board.content}</h8>
          <a href="/board/${board.id}" class="btn btn-primary float-right">Detail</a>
          <br />
        </div>
      </div>
    </c:forEach>
  </div>
</div>
<br />

<ul class="pagination justify-content-center">
  <c:set var="isDisabled" value="disabled"></c:set>
  <c:set var="isAbled" value=""></c:set>

  <li class="page-item ${pageable.first ? isDisabled : isAbled}">
    <a class="page-link" href="/board/search?q=${searchTitle}&page=${pageable.number - 1}">Prev</a>
  </li>

  <c:forEach var="num" items="${pageNumbers}">
    <c:choose>
      <c:when test="${pageable.number + 1 eq num}">
        <li class="page-item active">
          <a class="page-link" href="/board/search?q=${searchTitle}&page=${num - 1}">${num}</a>
        </li>
      </c:when>
      <c:otherwise>
        <li class="page-item">
          <a class="page-link" href="/board/search?q=${searchTitle}&page=${num - 1}">${num}</a>
        </li>
      </c:otherwise>
    </c:choose>
  </c:forEach>

  <li class="page-item ${pageable.last ? isDisabled : isAbled}">
    <a class="page-link" href="/board/search?q=${searchTitle}&page=${pageable.number + 1}">Next</a>
  </li>
</ul>

<%@ include file="layout/footer.jsp" %>
