<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <style type="text/css">
        body, html {
            margin: 0;
            /*height: calc(100vh - 80px);*/
        }
        header {
            display: flex;
            height: 80px;
        }

        header h1 {
            display: inline-block;
            color: white;
            vertical-align: middle;
            flex-grow: 1;
            padding-left: 20px;
        }

        nav {
            display: inline-block;
            vertical-align: middle;
        }
        body {
            margin: 0;
        }

        .nav-container {
            display: inline-block;
            display: flex;
            flex-direction: row;
            width: 100%;
            margin: 0;
            padding: 0;
            background-color: black;
            list-style-type: none;
            float: right;
        }

        .nav-item {
            display: inline-block;
            cursor: pointer;
            padding: 15px 30px 15px 15px;
        }

        a {
            text-align: center;
            text-decoration: none;
            color: white;
        }
        .container{
            width: 100%;
            height: 80%;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        .box{
            width: 300px;
            height: 100px;
            border: 1px solid black;
            text-align: center;
        }

        .input-text {
            width: 500px;
            height: 40px;
            border-radius: 20px;
            border: 1px solid #e9ecef;
            background-color: #e9ecef;
        }

        .form-btn {
            margin-top: 20px;
            width: 500px;
            height: 40px;
            border-radius: 20px;
            background-color: #87cefa;
            border: 1px solid #87cefa;
        }

        .form-group {
            margin-top: 10px;
        }

    </style>
    <meta charset="UTF-8">
    <title>Tgw</title>
</head>
<body>
<header class="nav-container">
    <h1> <a href="/"> Tgw </a></h1>
    <nav>
        <ul>
            <li class="nav-item"> <a href="/player/new">선수 등록</a></li>
            <li class="nav-item"> <a href="/sports">종목별 선수 보기</a></li>
            <li class="nav-item"> <a href="/medal">메달 현황</a></li>
        </ul>
    </nav>
</header>
<div class="container">
    <h2>선수 등록하기</h2>
    <form role="form" action="/player/new" method="post">
        <div class="form-group">
            <label>선수명</label><br/>
            <input class="input-text" type="text" name="name"><br/>
        </div>
        <div class="form-group">
            <label>종목</label><br/>
            <input class="input-text" type="text" name="sport"><br/>
        </div>
        <div class="form-group">
            <label>나이</label><br/>
            <input class="input-text" type="text" name="age"><br/>
        </div>
        <div class="form-group">
            <label>성별</label><br/>
            <input class="input-text" type="text" name="sex"><br/>
        </div>
        <div class="form-group">
            <label>키</label><br/>
            <input class="input-text" type="text" name="height"><br/>
        </div>
        <div class="form-group">
            <label>몸무게</label><br/>
            <input class="input-text" type="text" name="weight"><br/>
        </div>
        <h3>사진 업로드</h3>
        <input type="file" name="img" id="img"><br/>
        <button class="form-btn" type="submit">선수 등록하기</button>
    </form>
</div>
</body>
</html>