--------------------------------------------------------
--  파일이 생성됨 - 수요일-10월-06-2021   
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
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (313,'파마산 오레가노',0,'/resources/image/Menu/bread/img_recipe_b04.png','부드러운 화이트빵에
파마산 오레가노 시즈닝을 묻혀 허브향 가득','Parmesan Oregano',210);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (314,'화이트',0,'/resources/image/Menu/bread/img_recipe_b05.png','가장 클래식한 빵으로 부드러운 식감이 매력 포인트','White',200);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (315,'플랫브레드',0,'/resources/image/Menu/bread/img_recipe_b06.png','이름처럼 납작 모양에 피자도우처럼 쫀득한 맛이 일품','Flat Bread',230);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (410,'양상추',0,'/resources/image/Menu/vegetable/recipe_v01.png',null,'Lettuce',5);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (411,'토마토',0,'/resources/image/Menu/vegetable/recipe_v02.png',null,'Tomatoes',5);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (412,'오이',0,'/resources/image/Menu/vegetable/recipe_v03.png',null,'Cucumbers',5);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (413,'피망',0,'/resources/image/Menu/vegetable/recipe_v04.png',null,'Peppers',5);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (414,'양파',0,'/resources/image/Menu/vegetable/recipe_v05.png',null,'Red Onion',5);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (415,'피클',0,'/resources/image/Menu/vegetable/recipe_v06.png',null,'Pickles',5);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (416,'올리브',0,'/resources/image/Menu/vegetable/recipe_v07.png',null,'Olives',5);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (417,'할라피뇨',0,'/resources/image/Menu/vegetable/recipe_v08.png',null,'Jalapenos',5);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (418,'아보카도',0,'/resources/image/Menu/vegetable/recipe_v09.png',null,'Avocado',60);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (419,'모든 야채 빼기',0,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (510,'랜치',0,'/resources/image/Menu/sauce/sauce_ranch.png','고소한 마요네즈와 레몬즙의 만남!
고소함이 두배!','Ranch',110);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (511,'마요네즈',0,'/resources/image/Menu/sauce/sauce_mayonnaise.png','말이 필요없는 고소함의 대명사, 마요네즈 소스','Mayonnaise',110);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (512,'스위트 어니언',0,'/resources/image/Menu/sauce/sauce_sweet_onion.png','써브웨이만의 특제 레시피로 만든 달콤한 양파소스','Sweet Onion',40);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (513,'허니 머스타드',0,'/resources/image/Menu/sauce/sauce_honey_mustard.png','겨자씨가 아낌없이 들어간 달콤한 머스타드 소스','Honey Mustard',30);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (514,'스위트 칠리',0,'/resources/image/Menu/sauce/sauce_sweet_chilli.png','매콤한 칠리에 더해진 기분 좋은 달콤함!','Sweet Chilli',30);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (515,'핫 칠리',0,'/resources/image/Menu/sauce/sauce_hot_chilli.png','진짜 매운맛을 보고 싶다면?
써브웨이의 핫 칠리!','Hot Chilli',40);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (516,'사우스웨스트 치폴레',0,'/resources/image/Menu/sauce/sauce_southwest_chipotle.png','핫 칠리와 고소한 마요네즈가 만난 이국적인
매콤한 맛','Southwest Chipotle',100);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (517,'머스타드',0,'/resources/image/Menu/sauce/sauce_yellow_mustard.png','오리지날 옐로우 머스타드 소스','Yellow Mustard',5);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (518,'홀스래디쉬',0,'/resources/image/Menu/sauce/sauce_holesradish.png','고소한 마요네즈와 고추냉이의 이색적인 만남!
매니아층을 사로잡은 매력No.1 소스','Horseradish',110);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (519,'올리브 오일',0,'/resources/image/Menu/sauce/sauce_olive_oil.png','담백하고 깔끔하게 즐기고 싶다면
주저하지 말고 올리브오일','Olive Oil',45);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (520,'레드와인식초',0,'/resources/image/Menu/sauce/sauce_redwine_vinaigrette.png','레드와인을 발효시켜 풍미가 가득한 식초','Red Wine Vinaigrette',40);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (521,'소금',0,'/resources/image/Menu/sauce/sauce_salt.png',null,'Salt',null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (522,'후추',0,'/resources/image/Menu/sauce/sauce_black_pepper.png',null,'Black Pepper',null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (523,'스모그 바비큐',0,'/resources/image/Menu/sauce/sauce_smoke_bbq.png','스모크 향과 달콤한 바비큐의 완벽한 조화','Smoke BBQ',35);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (524,'선택안함',0,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (610,'미트 추가',1800,'/resources/image/Menu/topping/img_toppping_01.png','주 재료를 2배로 더 푸짐하게 즐기세요','Meat',null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (611,'쉬림프 더블업',1800,'/resources/image/Menu/topping/img_toppping_08.png','새우의 탱글함과 신선함을 2배로!','Shrimp Double Up',null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (612,'에그마요',1600,'/resources/image/Menu/topping/img_toppping_02.png','신선한 달걀과
고소한 마요네즈의 만남','Egg Mayo',null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (613,'오믈렛',1200,'/resources/image/Menu/topping/img_toppping_03.png','더 부드럽게, 더 고소하게','Omelet',null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (614,'아보카도',1300,'/resources/image/Menu/topping/img_toppping_04.png','숲속의 버터 아보카도로 영양 UP','Avocado',null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (615,'베이컨',900,'/resources/image/Menu/topping/img_toppping_05.png','진한 풍미와 바삭한 베이컨으로
특별한 나만의 써브웨이~','Bacon',null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (616,'페퍼로니',900,'/resources/image/Menu/topping/recipe_pepperoni.png','입맛 당기는 페퍼로니로
써브웨이를 더 맛있게!',null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (617,'베이컨 비츠',900,'/resources/image/Menu/topping/recipe_bacon_beats.png','짭쪼름한 베이컨 비츠로 맛의 화룡점정을!!','Bacon Bits',null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (651,'스파이시 쉬림프',1800,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (652,'햄',1800,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (653,'참치',1800,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (654,'미트볼',1800,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (655,'비엘티',1800,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (656,'비엠티',1800,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (657,'터키',1800,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (658,'치킨 데리야끼',1800,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (659,'스파이시 이탈리안',1800,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (660,'클럽',1800,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (661,'풀드포크',1800,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (662,'쉬림프',1800,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (663,'로티세리 치킨',1800,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (664,'로스트 치킨',1800,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (810,'스테이크&치즈 아보카도 랩',5700,'/resources/image/Menu/wrap_etc/steak_egg_n_cheese_wrap.png','육즙 가득 스테이크에 프레쉬함을 더해줄
아보카도와 슈레드치즈 그리고
모차렐라치즈까지!
최상의 야채와 소스 조합으로 탄생한
스테이크&치즈 아보카도 랩!','Steak&Cheese Avocado Wrap',451);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (811,'쉬림프 에그마요 랩',5800,'/resources/image/Menu/wrap_etc/shrimp_egg_mayo_wrap.png','부드럽고 고소한 에그마요 안에
탱글한 통새우가 푹~!
최상의 야채와 소스 조합으로 탄생한
쉬림프 에그마요 랩!','Shrimp Egg Mayo Wrap',459);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (812,'이탈리안 미니 랩',5000,'/resources/image/Menu/wrap_etc/italian_mini_wrap.png','작지만 화끈하다!
입안 가득 즐기는 이탈리아의 풍미.
이탈리안 미니랩!','Italian Mini Wrape',405);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (813,'치킨 베이컨 미니 랩',5100,'/resources/image/Menu/wrap_etc/chicken_bacon_mini_wrap.png','담백한 치킨, 바삭한 베이컨 비츠가
쫀득한 통밀 랩에 쏘옥!
치킨 베이컨 미니 랩','Chicken Bacon Mini Wrap',376);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (814,'쉬림프 에그 그릴드 랩',5700,'/resources/image/Menu/wrap_etc/shrimp_egg_grilled_wrap.png','더 뜨겁게, 더 맛있게 즐기자!
탱글한 새우와 부드러운 오믈렛의 만남','Shrimp Egg Grilled Wrap',427);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (815,'스테이크&치즈 아보카도 그릴드 랩',5700,'/resources/image/Menu/wrap_etc/steak_n_cheese_avocado_grilled_wrap.png','더 뜨겁게, 더 맛있게 즐기자!
육즙이 쫙~ 비프 스테이크와 아보카도가 만나다!','Steak&Cheese Avocado Grilled Wrap',451);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (816,'치킨 베이컨 미니 그릴드 랩',5000,'/resources/image/Menu/wrap_etc/chicken_bacon_mini_grilled_wrap.png','더 뜨겁게 더 맛있게 즐기자!
담백한 치킨, 바삭한 베이컨 비츠가 쏙','Chicken Bacon Mini Grilled Wrap',376);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (110,'에그마요',4200,'/resources/image/Menu/sandwich/sandwich_cl06.png','부드러운 달걀과 고소한 마요네즈가 만나 더 부드러운 스테디셀러','Egg Mayo',480);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (111,'이탈리안 비엠티',5200,'/resources/image/Menu/sandwich/sandwich_cl01.png','페퍼로니, 살라미 그리고 햄이 만들어내는 최상의 조화! 전세계가 사랑하는 써브웨이의 베스트셀러! Biggest Meatiest Tastiest, its’ B.M.T!','Italian B.M.T.',410);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (112,'비엘티',5200,'/resources/image/Menu/sandwich/sandwich_cl02.png','오리지널 아메리칸 스타일 베이컨의 풍미와 바삭함 그대로~','B.L.T.',380);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (113,'미트볼',5200,'/resources/image/Menu/sandwich/sandwich_cl03.png','이탈리안 스타일 비프 미트볼에 써브웨이만의 풍부한 토마토 향이
살아있는 마리나라소스를 듬뿍','Meatball',480);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (114,'햄',4700,'/resources/image/Menu/sandwich/sandwich_cl04.png','기본 중에 기본! 풍부한 햄이 만들어내는 입 안 가득 넘치는 맛의 향연','Ham',290);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (115,'참치',4800,'/resources/image/Menu/sandwich/sandwich_cl05.png','남녀노소 누구나 좋아하는 담백한 참치와 고소한 마요네즈의 완벽한 조화','Tuna',480);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (130,'로스트 치킨',5900,'/resources/image/Menu/sandwich/sandwich_fl02.png','오븐에 구워 담백한 저칼로리 닭가슴살의 건강한 풍미','Roasted Chicken',320);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (131,'로티세리 바비큐 치킨',5900,'/resources/image/Menu/sandwich/sandwich_fl01.png','촉촉한 바비큐 치킨의 풍미가득.
손으로 찢어 더욱 부드러운 치킨의 혁명','Rotisserie Barbecue Chicken',350);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (132,'써브웨이 클럽',5700,'/resources/image/Menu/sandwich/sandwich_fl04.png','명실공히 시그니처 써브! 터키, 햄, 베이컨의 완벽한 앙상블','Subway Club',293);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (133,'터키',5200,'/resources/image/Menu/sandwich/sandwich_fl05.png','280kcal로 슬림하게 즐기는 오리지날 터키 샌드위치','Turkey',280);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (134,'베지',3900,'/resources/image/Menu/sandwich/sandwich_fl06.png','갓 구운 빵과 신선한 7가지 야채로 즐기는 깔끔한 한끼','Veggie Delite',230);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (150,'스파이시 쉬림프',6100,'/resources/image/Menu/sandwich/sandwich_pm04.png','빨간맛에 빠진 쉬림프!
이국적인 매콤함이 더해진 시즌 한정 스파이시 쉬림프!','Spicy Shrimp',233);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (151,'스파이시 쉬림프 아보카도',6700,'/resources/image/Menu/sandwich/sandwich_pm05.png','매콤한 쉬림프와 부~드러운 아보카도가 만나, 이국적인 풍미 업!','Spicy Shrimp Avocado',289);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (152,'쉬림프',5700,'/resources/image/Menu/sandwich/sandwich_pm10.png','탱글한 식감이 그대로 살아있는 통새우가
5마리 들어가 한 입 베어 먹을 때 마다
진짜 새우의 풍미가 가득','Shrimp',229);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (153,'K-바비큐',6000,'/resources/image/Menu/sandwich/sandwich_pm03.png','써브웨이 최초의 코리안 스타일 샌드위치!
마늘, 간장 그리고 은은한 불맛까지!','K-BBQ',372);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (154,'풀드 포크 바비큐',5900,'/resources/image/Menu/sandwich/sandwich_pm08.png','훈연한 미국 스타일의 풀드 포크 바비큐가 가득 들어간 샌드위치','Pulled Pork Barbecue',327);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (155,'스테이크&치즈',6500,'/resources/image/Menu/sandwich/sandwich_pm01.png','육즙이 쫙~풍부한 비프 스테이크의 풍미가 입안 한가득','Steak&Cheese',380);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (156,'터키 베이컨 아보카도',6500,'/resources/image/Menu/sandwich/sandwich_pm02.png','담백한 터키와 바삭한 베이컨 환상조합에 부드러운 아보카도는 신의 한수','Turkey Bacon Avocado',420);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (157,'스파이시 이탈리안',5700,'/resources/image/Menu/sandwich/sandwich_pm06.png','살라미, 페퍼로니가 입안 한가득!
쏘 핫한 이탈리아의 맛','Spicy Italian',480);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (158,'치킨 데리야끼',5700,'/resources/image/Menu/sandwich/sandwich_pm07.png','담백한 치킨 스트립에 달콤짭쪼름한 써브웨이 특제 데리야끼 소스와의 환상적인 만남','Chicken Teriyaki',370);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (210,'이탈리안 비엠티',6900,'/resources/image/Menu/salad/salad01.png','페퍼로니, 살라미 그리고 햄이 만들어내는 최상의 조화!
전세계가 사랑하는 써브웨이의 베스트셀러!
Biggest Meatiest Tastiest, its’ B.M.T! 찹 샐러드','Italian B.M.T.',230);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (211,'비엘티',6900,'/resources/image/Menu/salad/salad02.png','오리지널 아메리칸 스타일 베이컨의 풍미와 바삭함 그대로~','B.L.T.',220);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (212,'미트볼',6900,'/resources/image/Menu/salad/salad03.png','이탈리안 스타일 비프 미트볼이 토핑된 찹 샐러드','Meatball',310);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (213,'햄',6400,'/resources/image/Menu/salad/salad04.png','기본 중에 기본! 풍부한 햄 토핑 가득 찹 샐러드','Ham',110);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (214,'참치',6500,'/resources/image/Menu/salad/salad05.png','남녀노소 누구나 좋아하는 담백한 참치와 고소한 마요네즈의 완벽한 조화','Tuna',310);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (215,'에그마요',6000,'/resources/image/Menu/salad/salad06.png','부드러운 달걀과 고소한 마요네즈가 만나 더 부드러운 스테디셀러','Egg Mayo',310);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (230,'로티세리 바비큐 치킨',7600,'/resources/image/Menu/salad/salad07.png','촉촉한 바비큐 치킨의 풍미가득.
손으로 찢어 더욱 부드러운 치킨이 찹 샐러드에 쏙','Rotisserie Chicken',170);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (231,'로스트 치킨',7600,'/resources/image/Menu/salad/salad08.png','오븐에 구워 담백한 저칼로리 닭가슴살의 건강한 풍미','Roasted Chicken',150);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (232,'써브웨이 클럽',7400,'/resources/image/Menu/salad/salad09.png','터키, 햄, 베이컨의 완벽한 앙상블과 즐기는 찹 샐러드','Subway Club',138);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (233,'터키',6900,'/resources/image/Menu/salad/salad10.png','더 슬림하게 즐기자! 오리지날 터키 찹 샐러드','Turkey',110);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (234,'베지',5600,'/resources/image/Menu/salad/salad11.png','7가지 야채만으로도 깔끔한 조화! 기본에 충실한 베지 찹 샐러드','Veggie Delite',60);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (250,'스파이시 쉬림프',7800,'/resources/image/Menu/salad/salad12.png','빨간맛에 빠진 쉬림프! 이국적인 매콤함이 더해진 시즌 한정 스파이시 쉬림프!','Spicy Shrimp',71);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (251,'스파이시 쉬림프 아보카도',8400,'/resources/image/Menu/salad/salad13.png','매콤한 쉬림프와 부~드러운 아보카도가 만나, 이국적인 풍미 업!','Spicy Shrimp Avocado',289);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (252,'K-바비큐',7700,'/resources/image/Menu/salad/salad14.png','써브웨이 최초의 코리안 스타일 찹 샐러드!
마늘, 간장 그리고 은은한 불맛까지!','K-BBQ',210);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (253,'쉬림프',7400,'/resources/image/Menu/salad/salad15.png','탱글한 식감이 그대로 살아있는
통새우가 5마리가
찹샐러드에 쏙 ! Fresh함이 그대로~','Shrimp',67);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (254,'풀드 포크 바비큐',7600,'/resources/image/Menu/salad/salad16.png','훈연한 미국 스타일의 풀드 포크 바비큐가 가득 올라간 풍미 가득한 찹 샐러드','Pulled Pork Barbecue',165);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (255,'스테이크&치즈',8200,'/resources/image/Menu/salad/salad17.png','육즙이 쫙~풍부한 비프 스테이크의 풍미 가득 스테이크&치즈 찹 샐러드!','Steak&Cheese',380);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (256,'터키 베이컨 아보카도',8200,'/resources/image/Menu/salad/salad18.png','담백한 터키와 바삭한 베이컨 환상조합에 부드러운 아보카도는 신의 한수','Turkey Bacon Avocado',420);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (257,'스파이시 이탈리안',7400,'/resources/image/Menu/salad/salad19.png','살라미, 페퍼로니가 입안 한가득! 진짜 이탈리아의 맛 가득한 찹 샐러드','Spicy Italian',480);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (258,'치킨 데리야끼',7400,'/resources/image/Menu/salad/salad20.png','담백한 치킨 스트립에 달콤짭쪼름한 써브웨이 특제 데리야끼 소스 토핑으로 더 풍성한 찹 샐러드','Chicken Teriyaki',370);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (310,'허니오트',0,'/resources/image/Menu/bread/img_recipe_b01.png','고소한 위트빵에 오트밀 가루를 묻혀
고소함과 식감이 두배로','Honey Oat',230);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (311,'하티',0,'/resources/image/Menu/bread/img_recipe_b02.png','부드러운 화이트빵에 옥수수가루를 묻혀
겉은 바삭하고 고소하며 속은 부드럽게','Hearty Italian',210);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (312,'위트',0,'/resources/image/Menu/bread/img_recipe_b03.png','9가지 곡물로 만들어 건강하고 고소한 맛의 곡물빵','Wheat',210);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (710,'단품',0,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (197,'aaa',1234,'asdf','asdf','asdf',1234);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (817,'이탈리안 미니 그릴드 랩',5000,'/resources/image/Menu/wrap_etc/italian_mini_grilled_wrap.png','더 뜨겁게 더 맛있게 즐기자!
페퍼로니, 살라미 풍미 넘치는 한입
매콤한 핫칠리로 놓칠 수 없는 맛','Italian Mini Grilled Wrap',405);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (818,'스테이크&치즈 파니니',5500,'/resources/image/Menu/wrap_etc/steak_n_cheese_panini.png','바삭한 식감에 치즈는 두배로
써브웨이 베스트 메뉴 스테이크&치즈를
파니니로 즐겨보세요!','Steak&Cheese Panini',453);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (819,'로티세리 바비큐 치킨 파니니',5400,'/resources/image/Menu/wrap_etc/rotisserie_barbecue_chicken_panini.png','바삭한 식감에 치즈는 두배로
풍미 가득한 로티세리 바비큐 치킨을
파니니로 즐겨보세요!','Rotisserie Barbecue Chicken Panini',450);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (850,'햄, 에그&치즈',5000,'/resources/image/Menu/sandwich/sandwich_bf01.png','푹신한 오믈렛과 햄의 가장 클래식한 조화','Ham, Egg&Cheese',400);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (851,'웨스턴, 에그&치즈',5200,'/resources/image/Menu/sandwich/sandwich_bf02.png','토마토, 피망, 양파 세가지 야채가 더해져 더욱 신선한 하루 시작','Western, Egg&Cheese ',370);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (852,'베이컨, 에그&치즈',5200,'/resources/image/Menu/sandwich/sandwich_bf03.png','오리지널 아메리칸 스타일 베이컨으로 더욱 풍성한 아침 식사','Bacon, Egg&Cheese',450);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (853,'스테이크, 에그&치즈',5200,'/resources/image/Menu/sandwich/sandwich_bf04.png','육즙 가득 비프 스테이크로 든든한 아침 식사','Steak, Egg&Cheese',440);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (350,'치즈 제외',0,'/resources/image/ETC_icon/btn_close.png',null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (351,'아메리칸 치즈',0,'/resources/image/Menu/cheese/img_recipe_c01.png',null,'American Cheese',40);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (352,'슈레드 치즈',0,'/resources/image/Menu/cheese/img_recipe_c02.png',null,'Shredded Cheese',50);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (353,'모차렐라 치즈',0,'/resources/image/Menu/cheese/img_recipe_c03.png',null,'Mozzarella Cheese',44);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (899,'aaa',123,'asdf','asdf','asdf',123);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (711,'쿠키 + 음료(16oz)',1900,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (712,'쿠키 + 음료(22oz)',2100,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (713,'칩 + 음료(16oz)',1900,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (714,'칩 + 음료(22oz)',2100,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (715,'웨지 + 음료(16oz)',3500,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (716,'웨지 + 음료(22oz)',3700,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (360,'아메리칸 치즈',900,'/resources/image/Menu/cheese/img_recipe_c01.png',null,'American Cheese',40);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (361,'슈레드 치즈',900,'/resources/image/Menu/cheese/img_recipe_c02.png',null,'Shredded Cheese',50);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (362,'모차렐라 치즈',900,'/resources/image/Menu/cheese/img_recipe_c03.png',null,'Mozzarella Cheese',44);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (730,'코카콜라',0,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (731,'스프라이트',0,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (732,'제로콜라',0,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (733,'환타오렌지',0,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (734,'닥터페퍼',0,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (750,'초코칩',0,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (751,'다크초코칩',0,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (752,'라즈베리치즈케익',0,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (753,'화이트초코마카다미아',0,null,null,null,null);
Insert into SUBWAY.TBL_PRODUCT (PNO,PNAME,PPRICE,PURL,PDESC,PNAME_ENG,PCAL) values (754,'오트밀레이즌',0,null,null,null,null);
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