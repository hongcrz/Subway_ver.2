--------------------------------------------------------
--  ������ ������ - ������-10��-06-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table TBL_PRODUCT
--------------------------------------------------------

  CREATE TABLE "SUBWAY"."TBL_PRODUCT" 
   (   "PNO" NUMBER, 
   "PNAME" VARCHAR2(50 BYTE), 
   "PPRICE" NUMBER, 
   "PURL" VARCHAR2(200 BYTE), 
   "PDESC" VARCHAR2(1000 BYTE), 
   "PNAME_ENG" VARCHAR2(50 BYTE), 
   "PCAL" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SUBWAY.TBL_PRODUCT
SET DEFINE OFF;
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (313,'�ĸ��� ��������',0,'/resources/image/Menu/bread/img_recipe_b04.png','�ε巯�� ȭ��Ʈ����
�ĸ��� �������� ������� ���� ����� ����','Parmesan Oregano',210);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (314,'ȭ��Ʈ',0,'/resources/image/Menu/bread/img_recipe_b05.png','���� Ŭ������ ������ �ε巯�� �İ��� �ŷ� ����Ʈ','White',200);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (315,'�÷��극��',0,'/resources/image/Menu/bread/img_recipe_b06.png','�̸�ó�� ���� ��翡 ���ڵ���ó�� �˵��� ���� ��ǰ','Flat Bread',230);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (410,'�����',0,'/resources/image/Menu/vegetable/recipe_v01.png',null,'Lettuce',5);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (411,'�丶��',0,'/resources/image/Menu/vegetable/recipe_v02.png',null,'Tomatoes',5);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (412,'����',0,'/resources/image/Menu/vegetable/recipe_v03.png',null,'Cucumbers',5);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (413,'�Ǹ�',0,'/resources/image/Menu/vegetable/recipe_v04.png',null,'Peppers',5);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (414,'����',0,'/resources/image/Menu/vegetable/recipe_v05.png',null,'Red Onion',5);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (415,'��Ŭ',0,'/resources/image/Menu/vegetable/recipe_v06.png',null,'Pickles',5);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (416,'�ø���',0,'/resources/image/Menu/vegetable/recipe_v07.png',null,'Olives',5);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (417,'�Ҷ��Ǵ�',0,'/resources/image/Menu/vegetable/recipe_v08.png',null,'Jalapenos',5);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (418,'�ƺ�ī��',0,'/resources/image/Menu/vegetable/recipe_v09.png',null,'Avocado',60);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (419,'��� ��ä ����',0,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (510,'��ġ',0,'/resources/image/Menu/sauce/sauce_ranch.png','����� �������� �������� ����!
������� �ι�!','Ranch',110);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (511,'�������',0,'/resources/image/Menu/sauce/sauce_mayonnaise.png','���� �ʿ���� ������� ����, ������� �ҽ�','Mayonnaise',110);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (512,'����Ʈ ��Ͼ�',0,'/resources/image/Menu/sauce/sauce_sweet_onion.png','�����̸��� Ư�� �����Ƿ� ���� ������ ���ļҽ�','Sweet Onion',40);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (513,'��� �ӽ�Ÿ��',0,'/resources/image/Menu/sauce/sauce_honey_mustard.png','���ھ��� �Ƴ����� �� ������ �ӽ�Ÿ�� �ҽ�','Honey Mustard',30);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (514,'����Ʈ ĥ��',0,'/resources/image/Menu/sauce/sauce_sweet_chilli.png','������ ĥ���� ������ ��� ���� ������!','Sweet Chilli',30);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (515,'�� ĥ��',0,'/resources/image/Menu/sauce/sauce_hot_chilli.png','��¥ �ſ���� ���� �ʹٸ�?
�������� �� ĥ��!','Hot Chilli',40);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (516,'��콺����Ʈ ġ����',0,'/resources/image/Menu/sauce/sauce_southwest_chipotle.png','�� ĥ���� ����� ������ ���� �̱�����
������ ��','Southwest Chipotle',100);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (517,'�ӽ�Ÿ��',0,'/resources/image/Menu/sauce/sauce_yellow_mustard.png','�������� ���ο� �ӽ�Ÿ�� �ҽ�','Yellow Mustard',5);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (518,'Ȧ������',0,'/resources/image/Menu/sauce/sauce_holesradish.png','����� �������� ���߳����� �̻����� ����!
�ŴϾ����� ������� �ŷ�No.1 �ҽ�','Horseradish',110);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (519,'�ø��� ����',0,'/resources/image/Menu/sauce/sauce_olive_oil.png','����ϰ� ����ϰ� ���� �ʹٸ�
�������� ���� �ø������','Olive Oil',45);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (520,'������ν���',0,'/resources/image/Menu/sauce/sauce_redwine_vinaigrette.png','��������� ��ȿ���� ǳ�̰� ������ ����','Red Wine Vinaigrette',40);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (521,'�ұ�',0,'/resources/image/Menu/sauce/sauce_salt.png',null,'Salt',null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (522,'����',0,'/resources/image/Menu/sauce/sauce_black_pepper.png',null,'Black Pepper',null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (523,'����� �ٺ�ť',0,'/resources/image/Menu/sauce/sauce_smoke_bbq.png','����ũ ��� ������ �ٺ�ť�� �Ϻ��� ��ȭ','Smoke BBQ',35);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (524,'���þ���',0,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (610,'��Ʈ �߰�',1800,'/resources/image/Menu/topping/img_toppping_01.png','�� ��Ḧ 2��� �� Ǫ���ϰ� ��⼼��','Meat',null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (611,'������ �����',1800,'/resources/image/Menu/topping/img_toppping_08.png','������ �ʱ��԰� �ż����� 2���!','Shrimp Double Up',null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (612,'���׸���',1600,'/resources/image/Menu/topping/img_toppping_02.png','�ż��� �ް���
����� ��������� ����','Egg Mayo',null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (613,'���ɷ�',1200,'/resources/image/Menu/topping/img_toppping_03.png','�� �ε巴��, �� ����ϰ�','Omelet',null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (614,'�ƺ�ī��',1300,'/resources/image/Menu/topping/img_toppping_04.png','������ ���� �ƺ�ī���� ���� UP','Avocado',null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (615,'������',900,'/resources/image/Menu/topping/img_toppping_05.png','���� ǳ�̿� �ٻ��� ����������
Ư���� ������ ������~','Bacon',null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (616,'���۷δ�',900,'/resources/image/Menu/topping/recipe_pepperoni.png','�Ը� ���� ���۷δϷ�
�����̸� �� ���ְ�!',null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (617,'������ ����',900,'/resources/image/Menu/topping/recipe_bacon_beats.png','¬�ɸ��� ������ ������ ���� ȭ��������!!','Bacon Bits',null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (651,'�����̽� ������',1800,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (652,'��',1800,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (653,'��ġ',1800,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (654,'��Ʈ��',1800,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (655,'��Ƽ',1800,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (656,'��Ƽ',1800,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (657,'��Ű',1800,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (658,'ġŲ �����߳�',1800,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (659,'�����̽� ��Ż����',1800,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (660,'Ŭ��',1800,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (661,'Ǯ����ũ',1800,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (662,'������',1800,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (663,'��Ƽ���� ġŲ',1800,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (664,'�ν�Ʈ ġŲ',1800,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (810,'������ũ&ġ�� �ƺ�ī�� ��',5700,'/resources/image/Menu/wrap_etc/steak_egg_n_cheese_wrap.png','���� ���� ������ũ�� ���������� ������
�ƺ�ī���� ������ġ�� �׸���
��������ġ�����!
�ֻ��� ��ä�� �ҽ� �������� ź����
������ũ&ġ�� �ƺ�ī�� ��!','Steak&Cheese Avocado Wrap',451);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (811,'������ ���׸��� ��',5800,'/resources/image/Menu/wrap_etc/shrimp_egg_mayo_wrap.png','�ε巴�� ����� ���׸��� �ȿ�
�ʱ��� ����찡 ǫ~!
�ֻ��� ��ä�� �ҽ� �������� ź����
������ ���׸��� ��!','Shrimp Egg Mayo Wrap',459);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (812,'��Ż���� �̴� ��',5000,'/resources/image/Menu/wrap_etc/italian_mini_wrap.png','������ ȭ���ϴ�!
�Ծ� ���� ���� ��Ż������ ǳ��.
��Ż���� �̴Ϸ�!','Italian Mini Wrape',405);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (813,'ġŲ ������ �̴� ��',5100,'/resources/image/Menu/wrap_etc/chicken_bacon_mini_wrap.png','����� ġŲ, �ٻ��� ������ ������
�˵��� ��� ���� ���!
ġŲ ������ �̴� ��','Chicken Bacon Mini Wrap',376);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (814,'������ ���� �׸��� ��',5700,'/resources/image/Menu/wrap_etc/shrimp_egg_grilled_wrap.png','�� �̰߰�, �� ���ְ� �����!
�ʱ��� ����� �ε巯�� ���ɷ��� ����','Shrimp Egg Grilled Wrap',427);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (815,'������ũ&ġ�� �ƺ�ī�� �׸��� ��',5700,'/resources/image/Menu/wrap_etc/steak_n_cheese_avocado_grilled_wrap.png','�� �̰߰�, �� ���ְ� �����!
������ ��~ ���� ������ũ�� �ƺ�ī���� ������!','Steak&Cheese Avocado Grilled Wrap',451);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (816,'ġŲ ������ �̴� �׸��� ��',5000,'/resources/image/Menu/wrap_etc/chicken_bacon_mini_grilled_wrap.png','�� �̰߰� �� ���ְ� �����!
����� ġŲ, �ٻ��� ������ ������ ��','Chicken Bacon Mini Grilled Wrap',376);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (110,'���׸���',4200,'/resources/image/Menu/sandwich/sandwich_cl06.png','�ε巯�� �ް��� ����� ������ ���� �� �ε巯�� ���׵𼿷�','Egg Mayo',480);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (111,'��Ż���� ��Ƽ',5200,'/resources/image/Menu/sandwich/sandwich_cl01.png','���۷δ�, ���� �׸��� ���� ������ �ֻ��� ��ȭ! �����谡 ����ϴ� �������� ����Ʈ����! Biggest Meatiest Tastiest, its�� B.M.T!','Italian B.M.T.',410);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (112,'��Ƽ',5200,'/resources/image/Menu/sandwich/sandwich_cl02.png','�������� �Ƹ޸�ĭ ��Ÿ�� �������� ǳ�̿� �ٻ��� �״��~','B.L.T.',380);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (113,'��Ʈ��',5200,'/resources/image/Menu/sandwich/sandwich_cl03.png','��Ż���� ��Ÿ�� ���� ��Ʈ���� �����̸��� ǳ���� �丶�� ����
����ִ� ��������ҽ��� ���','Meatball',480);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (114,'��',4700,'/resources/image/Menu/sandwich/sandwich_cl04.png','�⺻ �߿� �⺻! ǳ���� ���� ������ �� �� ���� ��ġ�� ���� �⿬','Ham',290);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (115,'��ġ',4800,'/resources/image/Menu/sandwich/sandwich_cl05.png','������ ������ �����ϴ� ����� ��ġ�� ����� ��������� �Ϻ��� ��ȭ','Tuna',480);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (130,'�ν�Ʈ ġŲ',5900,'/resources/image/Menu/sandwich/sandwich_fl02.png','���쿡 ���� ����� ��Į�θ� �߰������� �ǰ��� ǳ��','Roasted Chicken',320);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (131,'��Ƽ���� �ٺ�ť ġŲ',5900,'/resources/image/Menu/sandwich/sandwich_fl01.png','������ �ٺ�ť ġŲ�� ǳ�̰���.
������ ���� ���� �ε巯�� ġŲ�� ����','Rotisserie Barbecue Chicken',350);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (132,'������ Ŭ��',5700,'/resources/image/Menu/sandwich/sandwich_fl04.png','��ǰ��� �ñ״�ó ���! ��Ű, ��, �������� �Ϻ��� �ӻ��','Subway Club',293);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (133,'��Ű',5200,'/resources/image/Menu/sandwich/sandwich_fl05.png','280kcal�� �����ϰ� ���� �������� ��Ű ������ġ','Turkey',280);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (134,'����',3900,'/resources/image/Menu/sandwich/sandwich_fl06.png','�� ���� ���� �ż��� 7���� ��ä�� ���� ����� �ѳ�','Veggie Delite',230);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (150,'�����̽� ������',6100,'/resources/image/Menu/sandwich/sandwich_pm04.png','�������� ���� ������!
�̱����� �������� ������ ���� ���� �����̽� ������!','Spicy Shrimp',233);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (151,'�����̽� ������ �ƺ�ī��',6700,'/resources/image/Menu/sandwich/sandwich_pm05.png','������ �������� ��~�巯�� �ƺ�ī���� ����, �̱����� ǳ�� ��!','Spicy Shrimp Avocado',289);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (152,'������',5700,'/resources/image/Menu/sandwich/sandwich_pm10.png','�ʱ��� �İ��� �״�� ����ִ� ����찡
5���� �� �� �� ���� ���� �� ����
��¥ ������ ǳ�̰� ����','Shrimp',229);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (153,'K-�ٺ�ť',6000,'/resources/image/Menu/sandwich/sandwich_pm03.png','������ ������ �ڸ��� ��Ÿ�� ������ġ!
����, ���� �׸��� ������ �Ҹ�����!','K-BBQ',372);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (154,'Ǯ�� ��ũ �ٺ�ť',5900,'/resources/image/Menu/sandwich/sandwich_pm08.png','�ƿ��� �̱� ��Ÿ���� Ǯ�� ��ũ �ٺ�ť�� ���� �� ������ġ','Pulled Pork Barbecue',327);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (155,'������ũ&ġ��',6500,'/resources/image/Menu/sandwich/sandwich_pm01.png','������ ��~ǳ���� ���� ������ũ�� ǳ�̰� �Ծ� �Ѱ���','Steak&Cheese',380);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (156,'��Ű ������ �ƺ�ī��',6500,'/resources/image/Menu/sandwich/sandwich_pm02.png','����� ��Ű�� �ٻ��� ������ ȯ�����տ� �ε巯�� �ƺ�ī���� ���� �Ѽ�','Turkey Bacon Avocado',420);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (157,'�����̽� ��Ż����',5700,'/resources/image/Menu/sandwich/sandwich_pm06.png','����, ���۷δϰ� �Ծ� �Ѱ���!
�� ���� ��Ż������ ��','Spicy Italian',480);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (158,'ġŲ �����߳�',5700,'/resources/image/Menu/sandwich/sandwich_pm07.png','����� ġŲ ��Ʈ���� ����¬�ɸ��� ������ Ư�� �����߳� �ҽ����� ȯ������ ����','Chicken Teriyaki',370);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (210,'��Ż���� ��Ƽ',6900,'/resources/image/Menu/salad/salad01.png','���۷δ�, ���� �׸��� ���� ������ �ֻ��� ��ȭ!
�����谡 ����ϴ� �������� ����Ʈ����!
Biggest Meatiest Tastiest, its�� B.M.T! �� ������','Italian B.M.T.',230);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (211,'��Ƽ',6900,'/resources/image/Menu/salad/salad02.png','�������� �Ƹ޸�ĭ ��Ÿ�� �������� ǳ�̿� �ٻ��� �״��~','B.L.T.',220);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (212,'��Ʈ��',6900,'/resources/image/Menu/salad/salad03.png','��Ż���� ��Ÿ�� ���� ��Ʈ���� ���ε� �� ������','Meatball',310);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (213,'��',6400,'/resources/image/Menu/salad/salad04.png','�⺻ �߿� �⺻! ǳ���� �� ���� ���� �� ������','Ham',110);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (214,'��ġ',6500,'/resources/image/Menu/salad/salad05.png','������ ������ �����ϴ� ����� ��ġ�� ����� ��������� �Ϻ��� ��ȭ','Tuna',310);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (215,'���׸���',6000,'/resources/image/Menu/salad/salad06.png','�ε巯�� �ް��� ����� ������ ���� �� �ε巯�� ���׵𼿷�','Egg Mayo',310);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (230,'��Ƽ���� �ٺ�ť ġŲ',7600,'/resources/image/Menu/salad/salad07.png','������ �ٺ�ť ġŲ�� ǳ�̰���.
������ ���� ���� �ε巯�� ġŲ�� �� �����忡 ��','Rotisserie Chicken',170);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (231,'�ν�Ʈ ġŲ',7600,'/resources/image/Menu/salad/salad08.png','���쿡 ���� ����� ��Į�θ� �߰������� �ǰ��� ǳ��','Roasted Chicken',150);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (232,'������ Ŭ��',7400,'/resources/image/Menu/salad/salad09.png','��Ű, ��, �������� �Ϻ��� �ӻ��� ���� �� ������','Subway Club',138);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (233,'��Ű',6900,'/resources/image/Menu/salad/salad10.png','�� �����ϰ� �����! �������� ��Ű �� ������','Turkey',110);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (234,'����',5600,'/resources/image/Menu/salad/salad11.png','7���� ��ä�����ε� ����� ��ȭ! �⺻�� ����� ���� �� ������','Veggie Delite',60);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (250,'�����̽� ������',7800,'/resources/image/Menu/salad/salad12.png','�������� ���� ������! �̱����� �������� ������ ���� ���� �����̽� ������!','Spicy Shrimp',71);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (251,'�����̽� ������ �ƺ�ī��',8400,'/resources/image/Menu/salad/salad13.png','������ �������� ��~�巯�� �ƺ�ī���� ����, �̱����� ǳ�� ��!','Spicy Shrimp Avocado',289);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (252,'K-�ٺ�ť',7700,'/resources/image/Menu/salad/salad14.png','������ ������ �ڸ��� ��Ÿ�� �� ������!
����, ���� �׸��� ������ �Ҹ�����!','K-BBQ',210);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (253,'������',7400,'/resources/image/Menu/salad/salad15.png','�ʱ��� �İ��� �״�� ����ִ�
����찡 5������
�������忡 �� ! Fresh���� �״��~','Shrimp',67);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (254,'Ǯ�� ��ũ �ٺ�ť',7600,'/resources/image/Menu/salad/salad16.png','�ƿ��� �̱� ��Ÿ���� Ǯ�� ��ũ �ٺ�ť�� ���� �ö� ǳ�� ������ �� ������','Pulled Pork Barbecue',165);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (255,'������ũ&ġ��',8200,'/resources/image/Menu/salad/salad17.png','������ ��~ǳ���� ���� ������ũ�� ǳ�� ���� ������ũ&ġ�� �� ������!','Steak&Cheese',380);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (256,'��Ű ������ �ƺ�ī��',8200,'/resources/image/Menu/salad/salad18.png','����� ��Ű�� �ٻ��� ������ ȯ�����տ� �ε巯�� �ƺ�ī���� ���� �Ѽ�','Turkey Bacon Avocado',420);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (257,'�����̽� ��Ż����',7400,'/resources/image/Menu/salad/salad19.png','����, ���۷δϰ� �Ծ� �Ѱ���! ��¥ ��Ż������ �� ������ �� ������','Spicy Italian',480);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (258,'ġŲ �����߳�',7400,'/resources/image/Menu/salad/salad20.png','����� ġŲ ��Ʈ���� ����¬�ɸ��� ������ Ư�� �����߳� �ҽ� �������� �� ǳ���� �� ������','Chicken Teriyaki',370);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (310,'��Ͽ�Ʈ',0,'/resources/image/Menu/bread/img_recipe_b01.png','����� ��Ʈ���� ��Ʈ�� ���縦 ����
����԰� �İ��� �ι��','Honey Oat',230);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (311,'��Ƽ',0,'/resources/image/Menu/bread/img_recipe_b02.png','�ε巯�� ȭ��Ʈ���� ���������縦 ����
���� �ٻ��ϰ� ����ϸ� ���� �ε巴��','Hearty Italian',210);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (312,'��Ʈ',0,'/resources/image/Menu/bread/img_recipe_b03.png','9���� ��� ����� �ǰ��ϰ� ����� ���� ���','Wheat',210);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (710,'��ǰ',0,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (197,'aaa',1234,'asdf','asdf','asdf',1234);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (817,'��Ż���� �̴� �׸��� ��',5000,'/resources/image/Menu/wrap_etc/italian_mini_grilled_wrap.png','�� �̰߰� �� ���ְ� �����!
���۷δ�, ���� ǳ�� ��ġ�� ����
������ ��ĥ���� ��ĥ �� ���� ��','Italian Mini Grilled Wrap',405);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (818,'������ũ&ġ�� �Ĵϴ�',5500,'/resources/image/Menu/wrap_etc/steak_n_cheese_panini.png','�ٻ��� �İ��� ġ��� �ι��
������ ����Ʈ �޴� ������ũ&ġ�
�ĴϴϷ� ��ܺ�����!','Steak&Cheese Panini',453);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (819,'��Ƽ���� �ٺ�ť ġŲ �Ĵϴ�',5400,'/resources/image/Menu/wrap_etc/rotisserie_barbecue_chicken_panini.png','�ٻ��� �İ��� ġ��� �ι��
ǳ�� ������ ��Ƽ���� �ٺ�ť ġŲ��
�ĴϴϷ� ��ܺ�����!','Rotisserie Barbecue Chicken Panini',450);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (850,'��, ����&ġ��',5000,'/resources/image/Menu/sandwich/sandwich_bf01.png','ǫ���� ���ɷ��� ���� ���� Ŭ������ ��ȭ','Ham, Egg&Cheese',400);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (851,'������, ����&ġ��',5200,'/resources/image/Menu/sandwich/sandwich_bf02.png','�丶��, �Ǹ�, ���� ������ ��ä�� ������ ���� �ż��� �Ϸ� ����','Western, Egg&Cheese ',370);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (852,'������, ����&ġ��',5200,'/resources/image/Menu/sandwich/sandwich_bf03.png','�������� �Ƹ޸�ĭ ��Ÿ�� ���������� ���� ǳ���� ��ħ �Ļ�','Bacon, Egg&Cheese',450);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (853,'������ũ, ����&ġ��',5200,'/resources/image/Menu/sandwich/sandwich_bf04.png','���� ���� ���� ������ũ�� ����� ��ħ �Ļ�','Steak, Egg&Cheese',440);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (350,'ġ�� ����',0,'/resources/image/ETC_icon/btn_close.png',null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (351,'�Ƹ޸�ĭ ġ��',0,'/resources/image/Menu/cheese/img_recipe_c01.png',null,'American Cheese',40);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (352,'������ ġ��',0,'/resources/image/Menu/cheese/img_recipe_c02.png',null,'Shredded Cheese',50);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (353,'�������� ġ��',0,'/resources/image/Menu/cheese/img_recipe_c03.png',null,'Mozzarella Cheese',44);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (899,'aaa',123,'asdf','asdf','asdf',123);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (711,'��Ű + ����(16oz)',1900,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (712,'��Ű + ����(22oz)',2100,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (713,'Ĩ + ����(16oz)',1900,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (714,'Ĩ + ����(22oz)',2100,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (715,'���� + ����(16oz)',3500,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (716,'���� + ����(22oz)',3700,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (360,'�Ƹ޸�ĭ ġ��',900,'/resources/image/Menu/cheese/img_recipe_c01.png',null,'American Cheese',40);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (361,'������ ġ��',900,'/resources/image/Menu/cheese/img_recipe_c02.png',null,'Shredded Cheese',50);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (362,'�������� ġ��',900,'/resources/image/Menu/cheese/img_recipe_c03.png',null,'Mozzarella Cheese',44);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (730,'��ī�ݶ�',0,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (731,'��������Ʈ',0,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (732,'�����ݶ�',0,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (733,'ȯŸ������',0,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (734,'��������',0,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (750,'����Ĩ',0,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (751,'��ũ����Ĩ',0,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (752,'�����ġ������',0,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (753,'ȭ��Ʈ���ڸ�ī�ٹ̾�',0,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (754,'��Ʈ�з�����',0,null,null,null,null);
--------------------------------------------------------
--  DDL for Index SYS_C007078
--------------------------------------------------------

  CREATE UNIQUE INDEX "SUBWAY"."SYS_C007078" ON "SUBWAY"."TBL_PRODUCT" ("PNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table TBL_PRODUCT
--------------------------------------------------------

  ALTER TABLE "SUBWAY"."TBL_PRODUCT" ADD PRIMARY KEY ("PNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SUBWAY"."TBL_PRODUCT" MODIFY ("PPRICE" NOT NULL ENABLE);
  ALTER TABLE "SUBWAY"."TBL_PRODUCT" MODIFY ("PNAME" NOT NULL ENABLE);