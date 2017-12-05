set names utf8;
drop database if exists vox;
create database vox charset=utf8;
use vox;
create table v_shop (
    sid int primary key auto_increment,
    sname varchar(64),
    spic varchar(128),
    phone varchar(32),
    address varchar(128)
);
/*首页店面详情*/
insert into v_shop values
(null,"北京黄寺店","images/hsd.jpg","010-57166666","北京市西城区黄寺大街26号德胜置业大厦一层"),
(null,"甘肃兰州店","images/lzd.jpg","010-57166666","兰州市城关区酒泉路702号石油大厦底商"),
(null,"重庆店","images/cqd.jpg","010-57166666","重庆市巴南区美邻小镇融汇大道213号"),
(null,"通州万达店","images/wdd.jpg","010-57166666","北京市通州区北苑万达广场A区1层131");

create table v_shop_display(
    shop_id int primary key auto_increment,
    sname varchar(64),
    shop_add varchar(128)
);
create table v_shop_images(
    s_id int primary key auto_increment,
    img_way1 varchar(128),
    img_way2 varchar(128),
    img_way3 varchar(128),
    img_way4 varchar(128),
    img_way5 varchar(128),
    img_way6 varchar(128)
);
/*店铺*/
insert into v_shop_display values
(null,"成都武侯店","成都市武侯区新希望路7号附5号"),
(null,"武汉兰陵路店","湖北省武汉市江岸区兰陵路界立方二楼"),
(null,"重庆巴南店","重庆市巴南区美邻小镇融汇大道213号"),
(null,"山西榆次店","晋中学院东区商铺洗浴中心2层"),
(null,"甘肃兰州店","兰州市城关区酒泉路702号石油大厦底商"),
(null,"山东淄博店","山东省淄博张店区银泰时代广场A座"),
(null,"北京西城黄寺大街店","北京市西城区黄寺大街26号德胜置业大厦一层"),
(null,"通州万达店","北京市通州区北苑万达广场A区1层131"),
(null,"天津店","天津市和平区荣业大街新汇华庭A01号"),
(null,"贸大店","北京市朝阳区对外经济贸易大学逸夫科研楼4层"),
(null,"上奥店","北京市海淀区西三旗上奥世纪中心A座一层");

/*店铺展示图片*/
insert into v_shop_images values
(1,"images/1219/20161219045101391.jpg","images/1219/20161219045102733.jpg",
"images/1219/20161219045103995.jpg","images/1219/20161219045104180.jpg",
"images/1219/20161219045106651.jpg","images/1219/20161219045107997.jpg"),
(2,"images/1217/20161217053931877.jpg","images/1217/20161217054009892.jpg",
"images/1217/20161217054010260.jpg","images/1217/20161217054011652.jpg",
"images/1217/20161217054012711.jpg","images/1217/20161217054013795.jpg"),
(3,"images/1214/20161214035245900.jpg","images/1214/20161214045346105.jpg",
"images/1214/20161214045400429.jpg","images/1214/20161214045411609.jpg",
"images/1214/20161214045437294.jpg","images/1214/20161214045424243.jpg"),
(4,"images/0908/20160908020453922.jpg","images/0908/20160908020453463.jpg",
"images/0908/20160908020454142.jpg","images/0908/20160908020454347.jpg",
"images/0908/20160908020454447.jpg","images/0908/20160908020454469.jpg"),
(5,"images/0908/20160908020019652.jpg","images/0908/20160908020020954.jpg",
"images/0908/20160908020020450.jpg","images/0908/20160908020021106.jpg",
"images/0908/20160908020021497.jpg","images/0908/20160908020021534.jpg"),
(6,"images/0908/20160908020110679.jpg","images/0908/20160908020111357.jpg",
"images/0908/20160908020111161.jpg","images/1219/20161219113023484.jpg",
"images/1219/20161219113025835.jpg","images/1219/20161219113027595.jpg"),
(7,"images/0906/20160906115938936.jpg","images/0906/20160906115930266.jpg",
"images/0906/20160906115933775.jpg","images/0906/20160906115936282.jpg",
"images/0906/20160906115939561.jpg","images/0906/20160906115940126.jpg"),
(8,"images/0813/20160813111900743.jpg","images/0813/20160813111900798.jpg",
"images/0813/20160813111900689.jpg","images/0813/20160813111901823.jpg",
"images/0813/20160813111901392.jpg","images/0813/20160813111901426.jpg"),
(9,"images/0812/20160812100108270.jpg","images/0812/20160812100108499.jpg",
"images/0812/20160812100108545.jpg","images/0812/20160812100108121.jpg",
"images/0812/20160812100109188.jpg","images/0812/20160812100109191.jpg"),
(10,"images/0809/20160809034056396.jpg","images/0809/20160809034056942.jpg",
"images/0809/20160809034056571.jpg","images/0809/20160809034057181.jpg",
"images/0809/20160809034057836.jpg","images/0809/20160809034057709.jpg"),
(11,"images/0919/20160919042545167.jpg","images/0919/20160919042545100.jpg",
"images/0919/20160919042545150.jpg","images/0919/20160919042545768.jpg",
"images/0919/20160919042546142.jpg","images/0919/20160919042546600.jpg");
