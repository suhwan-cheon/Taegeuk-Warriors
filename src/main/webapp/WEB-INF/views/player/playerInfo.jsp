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
        .col-container {
            width: 100%;
            height: 100%;
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: center;
        }
        .box{
            width: 300px;
            height: 100px;
            border: 1px solid black;
            text-align: center;
        }

        input {
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
<h2>선수 정보</h2>
<div class="container">
    <h2>이름 : ${player.name}</h2>
    <h2>종목 : ${player.sport.name}</h2>
    <h2>나이 : ${player.age}</h2>
    <h2>성별 : ${player.sex}</h2>
    <h2>신체 : ${player.height}cm, ${player.weight}kg</h2>

</div>
</body>
</html>