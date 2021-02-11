CREATE TABLE CUSTOMER (
CUS_CODE varchar(20),
CUS_LNAME varchar(20),
CUS_FNAME varchar(20),
CUS_INITIAL varchar(20),
CUS_AREACODE varchar(20),
CUS_PHONE varchar(20),
CUS_BALANCE float(20)
);

INSERT INTO CUSTOMER VALUES('00001','Ramirez','Carlos','C','110','099-184-3520','548.62');
INSERT INTO CUSTOMER VALUES('00002','Duarte','Rene','R','116','098-86-82451','0');
INSERT INTO CUSTOMER VALUES('00003','Mendoza','Sofia','S','118','093-784-5981','987.23');
INSERT INTO CUSTOMER VALUES('00004','Palma','Salome','S','105','093-919-7657','254.32');
INSERT INTO CUSTOMER VALUES('00005','Cedeño','Bryan','B','110','098-895-8721','842.21');
INSERT INTO CUSTOMER VALUES('00006','Chavez','Mia','M','105','099-777-0548','0');
INSERT INTO CUSTOMER VALUES('00007','Macias','Jorge','J','116','096-587-7741','0');
INSERT INTO CUSTOMER VALUES('00008','Molina','Carla','C','145','098-886-6821','654.23');
INSERT INTO CUSTOMER VALUES('00009','Saltos','Ernesto','E','118','099-284-8754','0');
INSERT INTO CUSTOMER VALUES('00010','Cevallos','Laura','L','105','097-009-5470','254.36');


http://localhost:8069/

CREATE TABLE VENDOR (
V_CODE int,
V_NAME varchar(20),
V_CONTACT varchar(20),
V_AREACODE varchar(20),
V_PHONE varchar(20),
V_STATE varchar(5),
V_ORDER varchar(1)
);
INSERT INTO VENDOR VALUES(100,'Carmen','Smithson','615','223-3234','TN','Y');
INSERT INTO VENDOR VALUES(108,'Elvis','Flushing','904','215-8995','FL','N');
INSERT INTO VENDOR VALUES(116,'Daniel','','615','228-3245','TN','Y');
INSERT INTO VENDOR VALUES(124,'Santiago,'Ortega','615','889-2546','KY','N');
INSERT INTO VENDOR VALUES(132,'Santos','Smith','901','678-1419','GA','N');
INSERT INTO VENDOR VALUES(140,'Josselyn','Anderson','901','678-3998','GA','Y');
INSERT INTO VENDOR VALUES(148,'Stefany','Browning','615','228-1410','TN','N');
INSERT INTO VENDOR VALUES(156,'Juan','Hakford','615','898-1234','TN','Y');
INSERT INTO VENDOR VALUES(164,'Eva','Smith','904','227-0093','FL','N');
INSERT INTO VENDOR VALUES(172,'Ruth','Smythe','615','890-3529','TN','N');
INSERT INTO VENDOR VALUES(180,'Marcos','Orton','904','456-0092','FL','Y');




/* Database Systems, 8th Ed., Rob/Coronel */
/* Type of SQL : SQL Server */


CREATE TABLE CUSTOMER (
CUS_CODE varchar(5),
CUS_LNAME varchar(15),
CUS_FNAME varchar(15),
CUS_INITIAL varchar(1),
CUS_AREACODE varchar(3),
CUS_PHONE varchar(8),
CUS_BALANCE float(8)
);
INSERT INTO CUSTOMER VALUES('10010','Ramas','Alfred','A','615','844-2573','0');
INSERT INTO CUSTOMER VALUES('10011','Dunne','Leona','K','713','894-1238','0');
INSERT INTO CUSTOMER VALUES('10012','Smith','Kathy','W','615','894-2285','345.86');
INSERT INTO CUSTOMER VALUES('10013','Olowski','Paul','F','615','894-2180','536.75');
INSERT INTO CUSTOMER VALUES('10014','Orlando','Myron','','615','222-1672','0');
INSERT INTO CUSTOMER VALUES('10015','O''Brian','Amy','B','713','442-3381','0');
INSERT INTO CUSTOMER VALUES('10016','Brown','James','G','615','297-1228','221.19');
INSERT INTO CUSTOMER VALUES('10017','Williams','George','','615','290-2556','768.93');
INSERT INTO CUSTOMER VALUES('10018','Farriss','Anne','G','713','382-7185','216.55');
INSERT INTO CUSTOMER VALUES('10019','Smith','Olette','K','615','297-3809','0');

/* -- */

CREATE TABLE INVOICE (
INV_NUMBER varchar(4),
CUS_CODE varchar(5),
INV_DATE datetime,
INV_SUBTOTAL float(8),
INV_TAX float(8),
INV_TOTAL float(8)
);
INSERT INTO INVOICE VALUES('1001','10014','1/16/2010','24.90','1.99','26.89');
INSERT INTO INVOICE VALUES('1002','10011','1/16/2010','9.98','0.80','10.78');
INSERT INTO INVOICE VALUES('1003','10012','1/16/2010','153.85','12.31','166.16');
INSERT INTO INVOICE VALUES('1004','10011','1/17/2010','34.97','2.80','37.77');
INSERT INTO INVOICE VALUES('1005','10018','1/17/2010','70.44','5.64','76.08');
INSERT INTO INVOICE VALUES('1006','10014','1/17/2010','397.83','31.83','429.66');
INSERT INTO INVOICE VALUES('1007','10015','1/17/2010','34.97','2.80','37.77');
INSERT INTO INVOICE VALUES('1008','10011','1/17/2010','399.15','31.93','431.08');

/* -- */

CREATE TABLE LINE (
INV_NUMBER varchar(4),
LINE_NUMBER int,
P_CODE varchar(10),
LINE_UNITS float(8),
LINE_PRICE float(8),
LINE_TOTAL float(8)
);
INSERT INTO LINE VALUES('1001',1,'13-Q2/P2','1','14.99','14.99');
INSERT INTO LINE VALUES('1001',2,'23109-HB','1','9.95','9.95');
INSERT INTO LINE VALUES('1002',1,'54778-2T','2','4.99','9.98');
INSERT INTO LINE VALUES('1003',1,'2238/QPD','1','38.95','38.95');
INSERT INTO LINE VALUES('1003',2,'1546-QQ2','1','39.95','39.95');
INSERT INTO LINE VALUES('1003',3,'13-Q2/P2','5','14.99','74.95');
INSERT INTO LINE VALUES('1004',1,'54778-2T','3','4.99','14.97');
INSERT INTO LINE VALUES('1004',2,'23109-HB','2','9.95','19.90');
INSERT INTO LINE VALUES('1005',1,'PVC23DRT','12','5.87','70.44');
INSERT INTO LINE VALUES('1006',1,'SM-18277','3','6.99','20.97');
INSERT INTO LINE VALUES('1006',2,'2232/QTY','1','109.92','109.92');
INSERT INTO LINE VALUES('1006',3,'23109-HB','1','9.95','9.95');
INSERT INTO LINE VALUES('1006',4,'89-WRE-Q','1','256.99','256.99');
INSERT INTO LINE VALUES('1007',1,'13-Q2/P2','2','14.99','29.98');
INSERT INTO LINE VALUES('1007',2,'54778-2T','1','4.99','4.99');
INSERT INTO LINE VALUES('1008',1,'PVC23DRT','5','5.87','29.35');
INSERT INTO LINE VALUES('1008',2,'WR3/TT3','3','119.95','359.85');
INSERT INTO LINE VALUES('1008','3','23109-HB','1','9.95','9.95');

/* -- */

CREATE TABLE PRODUCT (
P_CODE varchar(10),
P_DESCRIPT varchar(35),
P_INDATE datetime,
P_QOH int,
P_MIN int,
P_PRICE float(8),
P_DISCOUNT float(8),
V_CODE int
);
INSERT INTO PRODUCT VALUES('11QER/31','Power painter, 15 psi., 3-nozzle','11/3/2009','8','5','109.99','0','25595');
INSERT INTO PRODUCT VALUES('13-Q2/P2','7.25-in. pwr. saw blade','12/13/2009','32','15','14.99','0.05','21344');
INSERT INTO PRODUCT VALUES('14-Q1/L3','9.00-in. pwr. saw blade','11/13/2009','18','12','17.49','0','21344');
INSERT INTO PRODUCT VALUES('1546-QQ2','Hrd. cloth, 1/4-in., 2x50','1/15/2010','15','8','39.95','0','23119');
INSERT INTO PRODUCT VALUES('1558-QW1','Hrd. cloth, 1/2-in., 3x50','1/15/2010','23','5','43.99','0','23119');
INSERT INTO PRODUCT VALUES('2232/QTY','B&D jigsaw, 12-in. blade','12/30/2009','8','5','109.92','0.05','24288');
INSERT INTO PRODUCT VALUES('2232/QWE','B&D jigsaw, 8-in. blade','12/24/2009','6','5','99.87','0.05','24288');
INSERT INTO PRODUCT VALUES('2238/QPD','B&D cordless drill, 1/2-in.','1/20/2010','12','5','38.95','0.05','25595');
INSERT INTO PRODUCT VALUES('23109-HB','Claw hammer','1/20/2010','23','10','9.95','0.1','21225');
INSERT INTO PRODUCT VALUES('23114-AA','Sledge hammer, 12 lb.','1/2/2010','8','5','14.40','0.05','');
INSERT INTO PRODUCT VALUES('54778-2T','Rat-tail file, 1/8-in. fine','12/15/2009','43','20','4.99','0','21344');
INSERT INTO PRODUCT VALUES('89-WRE-Q','Hicut chain saw, 16 in.','2/7/2010','11','5','256.99','0.05','24288');
INSERT INTO PRODUCT VALUES('PVC23DRT','PVC pipe, 3.5-in., 8-ft','2/20/2010','188','75','5.87','0','');
INSERT INTO PRODUCT VALUES('SM-18277','1.25-in. metal screw, 25','3/1/2010','172','75','6.99','0','21225');
INSERT INTO PRODUCT VALUES('SW-23116','2.5-in. wd. screw, 50','2/24/2010','237','100','8.45','0','21231');
INSERT INTO PRODUCT VALUES('WR3/TT3','Steel matting, 4''x8''x1/6", .5" mesh','1/17/2010','18','5','119.95','0.1','25595');

/* -- */


CREATE TABLE VENDOR (
V_CODE int,
V_NAME varchar(15),
V_CONTACT varchar(50),
V_AREACODE varchar(3),
V_PHONE varchar(8),
V_STATE varchar(2),
V_ORDER varchar(1)
);
INSERT INTO VENDOR VALUES('21225','Bryson, Inc.','Smithson','615','223-3234','TN','Y');
INSERT INTO VENDOR VALUES('21226','SuperLoo, Inc.','Flushing','904','215-8995','FL','N');
INSERT INTO VENDOR VALUES('21231','D&E Supply','Singh','615','228-3245','TN','Y');
INSERT INTO VENDOR VALUES('21344','Gomez Bros.','Ortega','615','889-2546','KY','N');
INSERT INTO VENDOR VALUES('22567','Dome Supply','Smith','901','678-1419','GA','N');
INSERT INTO VENDOR VALUES('23119','Randsets Ltd.','Anderson','901','678-3998','GA','Y');
INSERT INTO VENDOR VALUES('24004','Brackman Bros.','Browning','615','228-1410','TN','N');
INSERT INTO VENDOR VALUES('24288','ORDVA, Inc.','Hakford','615','898-1234','TN','Y');
INSERT INTO VENDOR VALUES('25443','B&K, Inc.','Smith','904','227-0093','FL','N');
INSERT INTO VENDOR VALUES('25501','Damal Supplies','Smythe','615','890-3529','TN','N');
INSERT INTO VENDOR VALUES('25595','Rubicon Systems','Orton','904','456-0092','FL','Y');

