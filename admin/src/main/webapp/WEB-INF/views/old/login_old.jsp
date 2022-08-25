<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            outline: none;
             border: none;
            text-decoration: none;
        }

        body {
            background-color: #f5f5f9;
        }

        .loginSection {
            position: absolute;
            /*border: 1px solid gray;*/
            background-color: #fff;
            box-shadow: 0 2px 6px 0 rgba(67, 89, 113, 0.12);
            border-radius: 20px;
            width: 500px;
            min-height: 500px;
            display: flex;
            flex-direction: column;
            /* justify-content: center; */
            align-items: center;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
        }
        .loginSection > .heading {
            font-size: 50px;
            margin: 50px 0px 20px;
            /*border: 1px solid blue;*/
        }
        .loginSection > #command {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
            height: 100%;
            width: 100%;
            /*border: 1px solid red;*/
        }
        .loginSection > #command * {
            padding: 10px;
            width: 100%;
            /*border: 1px solid red;*/
        }
        .loginSection > #command label{
            margin: 10px 0px;
            padding-bottom: 0px;
            font-size: 25px;
        }
        .loginSection > #command input{
            padding-bottom: 5px;
            font-size: 20px;
            border-bottom: 1px solid black;
        }
        .loginSection > #command .err{
            margin: 0px;
            padding: 0px 10px;
            font-style: italic;
            color: red;
            border: none;
        }

        .loginSection > #command button{
            width: 50%;
            margin-top: 30px;
            font-size: 20px;
            color: #fff;
            background-color: #696cff;
            border-color: #696cff;
            box-shadow: 0px 1px 1px 0px rgba(105, 108, 255, 0.4);
                /*    #696cff  호버 후 #5f61e6; */
        }
        .loginSection > #command button:hover{
            background-color: #5f61e6;
            border-color: #5f61e6;
            transform: translateY(-1px);
            transition: 0.5s;
            /*    #696cff  호버 후 #5f61e6; */
        }
    </style>
</head>
<body style="font-family: 'MapoPeacefull'">
<section class="loginSection">
    <div class="heading">LOGIN</div>
    <form:form action="<c:url value='/login'/>">
        <input type="text" class="err" name="errMsg" value="<c:out value='${param.msg}'/>" readonly>
        <label for="id">아이디</label>
        <input id="id" class="id" type="text" name="id" placeholder="8~12자리">
        <input type="text" class="err" name="errId" value="ㅁㅁㅇtest1" readonly>
        <label for="pwd">비밀번호</label>
        <input id="pwd" class="pwd" type="password" name="pwd" placeholder="8~12자리">
        <input type="text" class="err" name="errpwd" value="ㅁㅁㄴtest2" readonly>
        <button class="loginBtn">로그인</button>
    </form:form>
</section>

</body>
</html>