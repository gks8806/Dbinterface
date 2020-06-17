<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
<style>
table {border:1px solid black;}
tr, th, td {border:1px solid black;}
</style>
</head>
<body>
	<h1>Hello world!</h1>
	
	<P>The time on the server is ${serverTime}.</P>
	<table class="bbsListTbl"  summary="회원정보리스트">
		<caption class="hdd">회원정보 목록:제작자-${jspMaker}<!-- 컨트롤러에서가져옴--></caption>

<div class="content">
    <div class="col-md-12">
            <!-- general form elements disabled -->
            <div class="card card-warning">
              <div class="card-header">
                <h3 class="card-title">회원가입</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <form role="form" action="/admin/member/create"method="post">
                  <div class="row">
                    <div class="col-sm-6">
                      <!-- text input -->
                      <div class="form-group">
                        <label>아이디</label>
                        <input name="userid" type="text" class="form-control" placeholder="Enter ...">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label>암호</label>
                        <input name="userpw" type="text" class="form-control" placeholder="Enter ..." >
                      </div>
                    </div>
                  </div><!-- endrow -->
                  <div class="row">
                    <div class="col-sm-6">
                      <!-- text input -->
                      <div class="form-group">
                        <label>이름</label>
                        <input name="username" type="text" class="form-control" placeholder="Enter ...">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label>이메일</label>
                        <input name="email" type="text" class="form-control" placeholder="Enter ..." >
                      </div>
                    </div>
                  </div><!-- endrow -->
                 <button type="submit" class="btn btn-primary btn-lg btn-block">회원가입</button>

                
                
                </form>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
    </div>
    
    
	
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">사용자ID</th>
				<th scope="col">사용자암호</th>
				<th scope="col">사용자이름</th>
				<th scope="col">사용자이메일</th>
				<th scope="col">사용자등록일</th>
				<th scope="col">사용자수정일</th>
				<th scope="col">삭제</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${memberList}" var="memberVO" varStatus="status">
   <tr>
    <td>${status.count}</td>
    <td>${memberVO.userid}</td>
    <td>${memberVO.userpw}</td>
    <td>${memberVO.username}</td>
    <td>${memberVO.email}</td>
    <td>${memberVO.regdate}</td>
    <td>${memberVO.updatedate}</td>
    <td>
    <form action="/admin/member/delete" method="post">
    <input type="text" value="${memberVO.userid}" name="userid">
    <input type="submit" value="삭제">
    </form>
    </td>
  	</tr>
   
  </c:forEach>
		</tbody>
	</table>
	

</body>
</html>
