<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ include file="../layout/header.jsp" %>

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

<div class="container justify-content-center" style="margin-top: 30px">
  <h3><b>게시판</b></h3>
  <br />
  <div class="row">
    <c:forEach var="board" items="${pageable.content}">
      <div class="card m-2 col-sm-12">
        <div class="card-body">
          <h2>${board.title}</h2>
          <h6>${board.createDate}</h6>
          <h8 type="text" class="multiLine">${board.content}</h8>
          <a href="/board/${board.id}" class="btn btn-primary float-right">Detail</a>
          <br />
        </div>
      </div>
    </c:forEach>
  </div>
  <br />
  <a type="button" href="/board/save_post_form" class="btn btn-outline-secondary">글쓰기</a>

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
</div>

<script src="/js/board.js"></script>
<%@ include file="../layout/footer.jsp" %>
