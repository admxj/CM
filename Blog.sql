DROP DATABASE IF EXISTS Blog;
create database Blog DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
use Blog;

-- 用户类型表
drop table IF EXISTS userType;
create table userType(
	Id int auto_increment primary key,	-- 类型ID
	Name varchar(50) not null,				-- 类型名称
	Descript	varchar(100)							-- 类型描述
);
-- 用户表
drop table IF EXISTS users;
create table users(
	Id int primary key auto_increment,
	RealName	varchar(20)		not null,
	LoginName	varchar(20)		not null,
	Password	varchar(20)		not null default '123',
	LoginIcon	varchar(200)	default 'images/system/none.png',
	userType	int		  not null,
	RegDate		date			not null,
	Email		varchar(200),
	FOREIGN KEY(userType) REFERENCES userType(Id) on delete cascade on update cascade
);
-- 文章类型表
drop table IF EXISTS articleType;
create table articleType(
	Id int	auto_increment primary key,
	Name		varchar(20)		not null,
	Descript	varchar(50)
);

-- 文章表
drop table IF EXISTS artcile;
create table article(
	Id int auto_increment primary key,
	articleType	int	default 0,
	Author int not null,
	Date date			not null,
	title		text			not null,
	content		text,
	FOREIGN KEY(articleType) REFERENCES articleType(Id) on DELETE CASCADE on UPDATE CASCADE,
	FOREIGN KEY(Author) REFERENCES users(Id) on DELETE CASCADE on UPDATE CASCADE
);
-- 评论表
drop table IF EXISTS comment;
create table comment(
	Id int auto_increment primary key,
	article		int	NOT NULL,
	commenter	int default 3,
	content		text not null,
	Date		date,
	FOREIGN KEY(article) REFERENCES article(Id) on DELETE CASCADE on UPDATE CASCADE,
	FOREIGN KEY(commenter) REFERENCES users(Id) on DELETE CASCADE on UPDATE CASCADE
);