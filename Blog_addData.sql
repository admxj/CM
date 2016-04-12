use Blog;
insert into userType(Name,Descript) values('超级用户','最高权限的用户');
insert into userType(Name,Descript) values('博主','可以发表修改博文的用户');
insert into userType(Name,Descript) values('读者','可以阅读评论的用户');

insert into users(RealName,LoginName,Password,userType,RegDate,Email,LoginIcon)
values ('admin','admin','admin',1,'2016-4-1','admin@admin.com','images/system/none.png');
insert into users(RealName,LoginName,Password,userType,RegDate,Email,LoginIcon)
values ('reader','reader','123',2,'2016-4-1','admin@admin.com','images/system/none.png');
insert into users(RealName,LoginName,Password,userType,RegDate,Email,LoginIcon)
values ('commenter','commenter','123',3,'2016-4-1','admin@admin.com','images/system/none.png');

insert into articleType(Name,Descript) values('Java','有关Java的知识点技巧');
insert into articleType(Name,Descript) values('Linux','Linux服务器服务配置');
insert into articleType(Name,Descript) values('Python','Python学习基础');
insert into articleType(Name,Descript) values('Android','Andriud进阶');

insert into article(articleType,Author,Date,title,content) 
values(1,2,'2016-4-1','Java简介','Java是一种可以撰写跨平台应用程序的面向对象的程序设计语言。Java 技术具有卓越的通用性、高效性、平台移植性和安全性，广泛应用于PC、数据中心、游戏控制台、科学超级计算机、移动电话和互联网，同时拥有全球最大的开发者专业社群。');
insert into article(articleType,Author,Date,title,content) 
values(2,2,'2016-4-1','Linux简介','Linux是一套免费使用和自由传播的类Unix操作系统，是一个基于POSIX和UNIX的多用户、多任务、支持多线程和多CPU的操作系统');
insert into article(articleType,Author,Date,title,content) 
values(3,2,'2016-4-1','Python简介','Python具有丰富和强大的库。它常被昵称为胶水语言，能够把用其他语言制作的各种模块（尤其是C/C++）很轻松地联结在一起。常见的一种应用情形是，使用Python快速生成程序的原型（有时甚至是程序的最终界面），然后对其中有特别要求的部分，用更合适的语言改写，比如3D游戏中的图形渲染模块，性能要求特别高，就可以用C/C++重写，而后封装为Python可以调用的扩展类库。需要注意的是在您使用扩展类库时可能需要考虑平台问题，某些可能不提供跨平台的实现。');
insert into article(articleType,Author,Date,title,content) 
values(3,2,'2016-4-1','Android简介','Android是一种基于Linux的自由及开放源代码的操作系统，主要使用于移动设备，如智能手机和平板电脑，由Google公司和开放手机联盟领导及开发。尚未有统一中文名称，中国大陆地区较多人使用“安卓”或“安致”。Android操作系统最初由Andy Rubin开发，主要支持手机。');


insert into comment(article,commenter,Date,content) values(1,3,'2016-4-1','人们平常说的Java-般指JavaSE,也就是Java Standard Edition，Java的标准版，一般用来开发桌面应用程序、但是在开发桌面应用程序上相对VB、Delphi，VC++并没有什么优势。
而JavaWeb则到了JavaEE领域了，也就是Java Enterprise Edition，Java的企业版，看那个web就应该想到是与Internet有关的，其实开发JavaWeb应用程序，初级的一般是用JSP（Java Server Pages）+servlet+Javabean来开发的，对大型的网站一般是使用框架来开发的，例如struts，hibernate，spring，例如校内，你在登陆的时候会在地址栏看见Login.do，登陆以后会看见Home.do这样的请求，典型的struts框架结构。
Java还有一个版本是JavaME,Java Micro Edition,Java的微型版，诺基亚手机上运行的Java程序就是指用这个版本开发的程序。');