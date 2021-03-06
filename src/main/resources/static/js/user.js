let index = {
	
	init: function() {
		$("#btn-join").bind("click", () => {
			this.save();
		})
		
		$("#btn-login").bind("click", () => {
			this.login();
		})
		
		$("#btn-update").bind("click", () => {
			this.update();
		})
	},
	/*
	 * 전통적인 로그인 방식
	save: function() {
		let data = {
			username:$("#username").val(),
			password:$("#password").val(),
			email:$("#email").val()
		}
		console.log(data);
		
		$.ajax({
			type: "POST",
			url: "/api/user",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(data, textStatus, xhr) {
			// 통신 성공
			console.log("xhr : " + xhr); // XMLHttpRequest 객체
			console.log(xhr);
			console.log("textStatus : " + textStatus);
			console.log("data : " + data);
			alert("회원가입이 완료되었습니다.");
			location.href = "/";
		}).fail(function(error) {
			// 통신 실패
			console.log(error);
			alert("회원가입에 실패하였습니다.");
		})
	},
	
	login: function() {
		
		let data = {
			username: $("#username").val(),
			password: $("#password").val()
		}
		
		$.ajax({
			type: "POST",
			url: "/api/user/login",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(data, textStatus, xhr) {
			// 통신 성공
			alert("로그인 완료")
			console.log(data);
			location.href="/"
		}).fail(function(error) {
			// 통신 실패
			alert("로그인 실패")
			console.log(error)
		});
	},
	*/
	
	update: function() {
		let data = {
			id: $("#id").val(),
			username: $("#username").val(),
			password: $("#password").val(),
			email: $("#email").val()
		}
		
		$.ajax({
			type: "PUT",
			url: "/user/update",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		})
		.done(function(data) {
			if(data.status) {
				alert("회원정보 수정이 완료되었습니다.");
				location.href = "/";
			}
		})
		.fail(function(error) {
			alert("회원정보 수정에 실패하였습니다.");
			console.log(error);
			console.log(data);
		})
	}
}

index.init();