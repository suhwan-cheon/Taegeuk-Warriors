<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <style type="text/css">
        body, html {
            margin: 0;
            height: calc(100vh - 80px);
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
            height: 100%;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        .form-btn {
            height: 100%;
            border-radius: 20px;
            background-color: #87cefa;
            border: 1px solid #87cefa;
        }

        .search {
            width: 100%;
            display: flex;
            flex-direction: row;
            align-items: center;
            justify-content: center;
        }

        input {
            width: 500px;
            height: 40px;
            border-radius: 20px;
            border: 1px solid #e9ecef;
            background-color: #e9ecef;
        }

        img {
            width: 300px;
            height: 150px;
            object-fit: cover;
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
    <h1>Taegeuk Warriors</h1>
    <h2>2020 도쿄 올림픽 대한민국 선수 정보 알리미</h2>
    <div class="search">
        <form role="form" action="/player/find" method="post">
        <input type="text" placeholder="   선수 이름을 입력해주세요" name="name">
            <button class="form-btn" type="submit">검색</button>
        </form>
    </div>
    <img src="img.png" alt="Olympic">
</div>
</body>
</html>