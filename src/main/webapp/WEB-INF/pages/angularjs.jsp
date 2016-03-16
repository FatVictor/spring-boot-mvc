<%-- 
    Document   : angularjs
    Created on : Mar 16, 2016, 3:47:06 PM
    Author     : Victor Nguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML">

<html ng-app="todoApp">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>JSP Page</title>
        <script src="../../resources/js/angular.min.js"></script>
        <script src="../../resources/js/app.js"></script>
        <link rel="stylesheet" href="../../resources/css/app.css">
    </head>
    <body>
        <h1>Hello AngularJS</h1>
        <input type="text" ng-model="mname" placeholder="Pls type in your name">
        <hr>
        <h2>Hello {{mname}}</h2>
        <div ng-controller="TodoController as todoList">
            <span>{{todoList.remaining()}} of {{todoList.todos.length}}</span>
            <a href="#" ng-click="todoList.archive()">Archive</a>
            <ul class="todo-list">
                <li ng-repeat="todo in todoList.todos">
                    <label class="lblDone">
                        <input type="checkbox" ng-model="todo.done">
                        <span class="done-{{todo.done}}">{{todo.text}}</span>
                    </label>
                </li>
            </ul>
            <form ng-submit="todoList.addTodo()">
                <input type="text" ng-model="todoList.todoText" size="30" placeholder="New todo here">
                <input class="btn-primary" type="submit" value="Add">
            </form>
            
        </div>
    </body>
</html>
