use Blog;
insert into userType(Name,Descript) values('�����û�','���Ȩ�޵��û�');
insert into userType(Name,Descript) values('����','���Է����޸Ĳ��ĵ��û�');
insert into userType(Name,Descript) values('����','�����Ķ����۵��û�');

insert into users(RealName,LoginName,Password,userType,RegDate,Email,LoginIcon)
values ('admin','admin','admin',1,'2016-4-1','admin@admin.com','images/system/none.png');
insert into users(RealName,LoginName,Password,userType,RegDate,Email,LoginIcon)
values ('reader','reader','123',2,'2016-4-1','admin@admin.com','images/system/none.png');
insert into users(RealName,LoginName,Password,userType,RegDate,Email,LoginIcon)
values ('commenter','commenter','123',3,'2016-4-1','admin@admin.com','images/system/none.png');

insert into articleType(Name,Descript) values('Java','�й�Java��֪ʶ�㼼��');
insert into articleType(Name,Descript) values('Linux','Linux��������������');
insert into articleType(Name,Descript) values('Python','Pythonѧϰ����');
insert into articleType(Name,Descript) values('Android','Andriud����');

insert into article(articleType,Author,Date,title,content) 
values(1,2,'2016-4-1','Java���','Java��һ�ֿ���׫д��ƽ̨Ӧ�ó�����������ĳ���������ԡ�Java ��������׿Խ��ͨ���ԡ���Ч�ԡ�ƽ̨��ֲ�ԺͰ�ȫ�ԣ��㷺Ӧ����PC���������ġ���Ϸ����̨����ѧ������������ƶ��绰�ͻ�������ͬʱӵ��ȫ�����Ŀ�����רҵ��Ⱥ��');
insert into article(articleType,Author,Date,title,content) 
values(2,2,'2016-4-1','Linux���','Linux��һ�����ʹ�ú����ɴ�������Unix����ϵͳ����һ������POSIX��UNIX�Ķ��û���������֧�ֶ��̺߳Ͷ�CPU�Ĳ���ϵͳ');
insert into article(articleType,Author,Date,title,content) 
values(3,2,'2016-4-1','Python���','Python���зḻ��ǿ��Ŀ⡣�������ǳ�Ϊ��ˮ���ԣ��ܹ������������������ĸ���ģ�飨������C/C++�������ɵ�������һ�𡣳�����һ��Ӧ�������ǣ�ʹ��Python�������ɳ����ԭ�ͣ���ʱ�����ǳ�������ս��棩��Ȼ����������ر�Ҫ��Ĳ��֣��ø����ʵ����Ը�д������3D��Ϸ�е�ͼ����Ⱦģ�飬����Ҫ���ر�ߣ��Ϳ�����C/C++��д�������װΪPython���Ե��õ���չ��⡣��Ҫע���������ʹ����չ���ʱ������Ҫ����ƽ̨���⣬ĳЩ���ܲ��ṩ��ƽ̨��ʵ�֡�');
insert into article(articleType,Author,Date,title,content) 
values(3,2,'2016-4-1','Android���','Android��һ�ֻ���Linux�����ɼ�����Դ����Ĳ���ϵͳ����Ҫʹ�����ƶ��豸���������ֻ���ƽ����ԣ���Google��˾�Ϳ����ֻ������쵼����������δ��ͳһ�������ƣ��й���½�����϶���ʹ�á���׿���򡰰��¡���Android����ϵͳ�����Andy Rubin��������Ҫ֧���ֻ���');


insert into comment(article,commenter,Date,content) values(1,3,'2016-4-1','����ƽ��˵��Java-��ָJavaSE,Ҳ����Java Standard Edition��Java�ı�׼�棬һ��������������Ӧ�ó��򡢵����ڿ�������Ӧ�ó��������VB��Delphi��VC++��û��ʲô���ơ�
��JavaWeb����JavaEE�����ˣ�Ҳ����Java Enterprise Edition��Java����ҵ�棬���Ǹ�web��Ӧ���뵽����Internet�йصģ���ʵ����JavaWebӦ�ó��򣬳�����һ������JSP��Java Server Pages��+servlet+Javabean�������ģ��Դ��͵���վһ����ʹ�ÿ���������ģ�����struts��hibernate��spring������У�ڣ����ڵ�½��ʱ����ڵ�ַ������Login.do����½�Ժ�ῴ��Home.do���������󣬵��͵�struts��ܽṹ��
Java����һ���汾��JavaME,Java Micro Edition,Java��΢�Ͱ棬ŵ�����ֻ������е�Java�������ָ������汾�����ĳ���');