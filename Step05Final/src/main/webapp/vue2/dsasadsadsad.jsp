<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<div id="app">
       
        <ul>
            <li v-for="item in nums" @click="clicked">{{item}}</li>
        </ul>
    </div>
   <script>
   
        let app=new Vue({
            el:"#app",
            data:{
                nums:[10, 20, 30, 40, 50]
            },
            methods:{
                clicked(e){
                    alert(e.target.innerText);
                }
            }
        });
        </script>
</body>
</html>