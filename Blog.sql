use master
go
if exists(select * from sysdatabases where name='Blog')
drop database Blog
go
create database Blog
go
use Blog
go
-- �û����ͱ�
if exists(select * from sysobjects where name='userType')
drop table userType;
create table userType(
	Id			int				identity(1,1) primary key,	-- ����ID
	Name		varchar(50)		not null,				-- ��������
	Descript	varchar(100)							-- ��������
);
-- �û���
if exists(select * from sysobjects where name='users')
drop table users;
create table users(
	Id			int				identity(1,1) primary key,
	RealName	varchar(20)		not null,
	LoginName	varchar(20)		not null,
	Password	varchar(20)		not null default '123',
	LoginIcon	varchar(200)	default 'images/system/none.png',
	userType	int				references userType(Id) not null,
	RegDate		date			not null,
	Email		varchar(200)		
);
-- �������ͱ�
if exists (select * from sysobjects where name='articleType')
drop table articleType;
create table articleType(
	Id			int				identity(1,1) primary key,
	Name		varchar(20)		not null,
	Descript	varchar(50)		,
);

-- ���±�
if exists (select * from sysobjects where name='article')
drop table artcile;
create table article(
	Id			int				identity(1,1) primary key,
	articleType	int				references articleType(Id) default 0,
	Author		int				references users(Id) not null,
	Date		date			not null,
	title		text			not null,
	content		text			,
);
-- ���۱�
if exists (select * from sysobjects where name='comment')
drop table comment;
create table comment(
	Id			int				identity(1,1) primary key,
	article		int				references article(Id),
	commenter	int				references users(Id) default 3,
	content		text			not null,
	Date		date			,
);