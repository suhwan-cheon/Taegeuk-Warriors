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
            <li class="nav-item"> <a href="/player/new">?????? ??????</a></li>
            <li class="nav-item"> <a href="/sports">????????? ?????? ??????</a></li>
            <li class="nav-item"> <a href="/medal">?????? ??????</a></li>
        </ul>
    </nav>
</header>
<div class="container">
    <h2>???????????? ?????? ??????</h2>
    <div class="col-container">
        <button>???</button>
        <button>???</button>
        <button>???</button>
    </div>
    <form role="form" action="player/new" method="post">
        <div class="form-group">
            <label>?????????</label><br/>
            <input type="text">
        </div>
        <div class="form-group">
            <label>??????</label><br/>
            <input type="text">
        </div>
        <div class="form-group">
            <label>??????</label><br/>
            <input type="text">
        </div>
        <div class="form-group">
            <label>??????</label><br/>
            <input type="text">
        </div>
        <div class="form-group">
            <label>???</label><br/>
            <input type="text">
        </div>
        <div class="form-group">
            <label>?????????</label><br/>
            <input type="text">
        </div>
        <button class="form-btn" type="submit">?????? ????????????</button>
    </form>
</div>
</body>
</html>