Final-Assignment
================

MovieAdmin

电影放映管理系统 May-24-2014

本系统面向:

院线的最高管理者（12281121）

院线的管理者（testupper）

放映员（testlower）

测试登录密码统一：123456


系统架构：

入口：public_html/home.php

功能：
	  - public_html/records.php  //放映记录管理
- - records-delete.php //删除放映记录
- - records-insert.php //添加放映记录
- - records-search.php //搜索放映记录
- - records-update.php //编辑放映记录
	   - public_html/user-management.php //人员管理
- - user-management-insert.php //添加人员
- - user-management-delete.php //删除人员
- - user-management-update.php //编辑人员
	   - public_html/movie-management.php  //电影及院线管理
- - movie-management-chain.php //院线管理
- --- movie-management-chain-delete.php //删除院线
- --- movie-management-chain-insert.php //添加院线
-  --- movie-management-chain-update.php //编辑院线
	   - movie-management-film.php //电影管理
- --- movie-management-film-delete.php //删除电影
- --- movie-management-film-insert.php //添加电影
- --- movie-management-film-update.php //编辑电影

- navbar.php  //导航栏
- sidebar.php  //侧边栏

需求：

院线的最高管理者（12281121）:

可操作对象：

public_html/records.php  //放映记录管理及打印

public_html/user-management.php //人员管理
	  
public_html/movie-management.php  //电影及院线管理

院线的管理者（testupper）：

可操作对象：

public_html/records.php  //放映记录管理及打印

public_html/user-management.php //人员管理
	  
public_html/movie-management.php  //电影及院线管理

放映员（testlower）：

可操作对象：

public_html/records.php  //放映记录管理
