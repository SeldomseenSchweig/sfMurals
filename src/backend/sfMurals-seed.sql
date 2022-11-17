-- both test users have the password "password"

INSERT INTO users (username, password, first_name, last_name, email, is_admin)
VALUES ('testuser',
        '$2b$12$AZH7virni5jlTTiGgEg4zu3lSvAw68qVEfSIOjJ3RqtbJbdW/Oi5q',
        'Test',
        'User',
        'joel@joelburton.com',
        FALSE),
       ('testadmin',
        '$2b$12$AZH7virni5jlTTiGgEg4zu3lSvAw68qVEfSIOjJ3RqtbJbdW/Oi5q',
        'Test',
        'Admin!',
        'joel@joelburton.com',
        TRUE);

INSERT INTO murals (street_address,city,us_state,zip_code,year,cultural_districts,long,lat,Analysis_Neighborhoods) VALUES
 ('65 Oak Grove Street','San Francisco','California',94107,'2009/10','SoMa Pilipinas Filipino Cultural District;Leather & LGBTQ Cultural District',-122.40164796899994, 37.77755298100004,34)
,('835 Pacific Avenue','San Francisco','California',94133,'2010/11',NULL,-122.40907802399994, 37.79643900100007,6)
,('1089 Market Street','San Francisco','California',94103,'2010/11','SoMa Pilipinas Filipino Cultural District',-122.41189098999997, 37.780426004000056,34)
,('4901-4911 3rd Street','San Francisco','California',94124,'2009/10','African American Arts and Cultural District',-122.390731965, 37.73366701200007,1)
,('754 Washington Street','San Francisco','California',94108,'2014/15',NULL,-122.406187307, 37.79526736100007,6)
,('209 Jones Street','San Francisco','California',94102,'2010/11',NULL,-122.41248731099996, 37.78309751200004,36)
,('2957 22nd Street','San Francisco','California',94110,'2013/14','Calle 24 Latino Cultural District',-122.41357902199996, 37.75552898500007,20)
,('1233-1235 Divisadero Street','San Francisco','California',94115,'2013/14',NULL,-122.43932202599994, 37.78105401800008,39)
,('435 Duboce Avenue','San Francisco','California',94117,'2013/14',NULL, -122.42986103599999, 37.76916500100003,5)
,('866 Valencia Street','San Francisco','California',94110,'2011/12',NULL, -122.421635037, 37.75898199400007 ,20)
,('1330 Polk Street','San Francisco','California',94109,'2020',NULL, -122.42020298799997, 37.789322011000024,21)
,('838 Pacific Avenue','San Francisco','California',94133,'2010/11',NULL, -122.40934196999996, 37.79706898500007,6)
,('4744 3rd Street','San Francisco','California',94124,'2014/15','African American Arts and Cultural District', -122.39094201599995, 37.735120015000064,1)
,('1325 Valencia Street','San Francisco','California',94110,'2011/12',NULL, -122.42029200399998, 37.751714004000064,20)
,('2000 Judah Street','San Francisco','California',94122,'2010/11','Sunset Chinese Cultural District', -122.48361895899995, 37.761655989000076,35)
,('466 Brannan Street','San Francisco','California',94107,'2011/12','SoMa Pilipinas Filipino Cultural District', -122.39603796199998, 37.779026016000046,34)
,('355 9th Street','San Francisco','California',94103,'2010/11','SoMa Pilipinas Filipino Cultural District;Leather & LGBTQ Cultural District', -122.41058795499998 37.77303230000007,34)
,('4923 3rd Street','San Francisco','California',94124,'2011/12','African American Arts and Cultural District', -122.39084595899999, 37.733619990000086,1)
,('1 Lowell Street','San Francisco','California',94112,'2010/11',NULL, -122.44612402399997, 37.71128200800007,7)
,('2700 24th Street','San Francisco','California',94110,'2014/15','Calle 24 Latino Cultural District', -122.40669102499999, 37.75314798000005,20)
,('900 Vermont Street','San Francisco','California',94107,'2011/12',NULL, -122.40385681599997, 37.75791557700006,26)
,('93 Monterey Boulevard','San Francisco','California',94131,'2010/11',NULL, -122.43738303999997, 37.731404988000065,41)
,('423 Mount Vernon Avenue','San Francisco','California',94112,'2010/11',NULL, -122.44892299299994, 37.718349000000046,24)
,('2400 Cesar Chavez','San Francisco','California',94124,'2019',NULL, -122.40112996799996, 37.74991600200008,1)
,('41 Freelon Street','San Francisco','California',94107,'2013/14','SoMa Pilipinas Filipino Cultural District', -122.39623501999996, 37.779183010000054,34)
,('1154 Post Street','San Francisco','California',94109,'2014/15',NULL, -122.42079955699995, 37.78679236700003,21)
,('1596 Hudson Street','San Francisco','California',94124,'2014/15','African American Arts and Cultural District', -122.38792897299999, 37.740154982000035,1)
,('485 Scott Street','San Francisco','California',94117,'2009/10',NULL, -122.43613899799999, 37.77411501800003,9)
,('2352 Mission Street','San Francisco','California',94110,'2014/15',NULL, -122.41943000899992, 37.75940699900008,20)
,('1605 Jerrold Ave','San Francisco','California',94124,'2011/12','African American Arts and Cultural District', -122.38972202999997, 37.73875801300005,1)
,('398 7th Street','San Francisco','California',94103,'2014/15','SoMa Pilipinas Filipino Cultural District;Leather & LGBTQ Cultural District', -122.40656797899997 37.775537007000025,34)
,('1450 Noriega Street','San Francisco','California',94122,'2009/10','Sunset Chinese Cultural District', -122.47941602099998, 37.75437002000007,35)
,('3728 Cesar Chavez','San Francisco','California',94110,'2013/14',NULL, -122.42326003599999, 37.74831501700004,20)
,('1354 York Street','San Francisco','California',94110,'2010/11','Calle 24 Latino Cultural District', -122.40822399099994, 37.75029398400005,20)
,('3241-3247 23rd Street','San Francisco','California',94110,'2009/10','Calle 24 Latino Cultural District', -122.41726496399998, 37.75377301900005,20)
,('290 Pacific Avenue','San Francisco','California',94111,'2011/12',NULL, -122.40063401099997, 37.79783199000008,8)
,('999 Van Ness Avenue','San Francisco','California',94109,'2011/12',NULL, -122.42166202599999, 37.78443699600007,39)
,('1054 Market Street','San Francisco','California',94102,'2009/10','Comptons Transgender Cultural District', -122.41111171799997, 37.78168079500006,36)
,('485 Scott Street','San Francisco','California',94117,'2010/11',NULL, -122.43613899799999, 37.77411501800003,9)
,('4744 3rd Street','San Francisco','California',94124,'2011/12','African American Arts and Cultural District', -122.39094201599995, 37.735120015000064,1)
,('2070 Mission Street','San Francisco','California',94110,'2017/2018','American Indian Cultural District', -122.41987902799997, 37.76391101400003,20)
,('4049 24th Street','San Francisco','California',94114,'2014/15',NULL, -122.43297600299995, 37.75111599700006,22)
,('710 Grant Avenue','San Francisco','California',94108,'2010/11',NULL, -122.40597898299995, 37.793630980000046,6)
,('107 Sagamore Street','San Francisco','California',94112,NULL,NULL, -122.45632597399998, 37.71117698300003,24)
,('21st Street and Mission Street','San Francisco','California',94110,'2014/15',NULL, -122.41891988699996, 37.75702004200008,20)
,('1397 Revere Avenue','San Francisco','California',94124,'2011/12','African American Arts and Cultural District', -122.38647395899994, 37.72926999200007,1)
,('127 Market Street','San Francisco','California',94103,'2010/11',NULL, -122.39587731299997, 37.793547432000025,8)
,('1496 Oakdale Avenue','San Francisco','California',94124,'2011/12','African American Arts and Cultural District', -122.388165008, 37.73367401100006,1)
,('1601 Fillmore Street','San Francisco','California',94115,'2013/14','Japantown Cultural District', -122.43341697499994, 37.78456301800003,15)
,('506 Clement Street','San Francisco','California',94118,'2011/12',NULL, -122.46470703899996, 37.783197983000036,11)
,('776 Clay Street','San Francisco','California',94108,'2014/15',NULL, -122.40606763899996, 37.794376818000046,6)
,('365 10th Street','San Francisco','California',94103,'2009/10','SoMa Pilipinas Filipino Cultural District;Leather & LGBTQ Cultural District', -122.41158496699997 37.77213500200003,34)
,('136 Taylor Street','San Francisco','California',94102,'2014/15','Comptons Transgender Cultural District', -122.41061702499996, 37.78375198500004,36)
,('988 Market Street','San Francisco','California',94102,'2010/11','Comptons Transgender Cultural District', -122.41034000299999, 37.78268899200003,36)
,('201 Middle Road','San Francisco','California',94124,'2014/15','African American Arts and Cultural District', -122.37948797799999 37.733912015000044,1)
,('3215 21st Street','San Francisco','California',94110,'2009/10',NULL, -122.41937896299997, 37.756794988000024,20)
,('3215 21st Street','San Francisco','California',94110,'2019',NULL, -122.41937896299997, 37.756794988000024,20)
,('1620 Armstrong Avenue','San Francisco','California',94124,'2010/11','African American Arts and Cultural District', -122.39247699399999, 37.72685600300008,1)
,('7th Street & Market Street','San Francisco','California',94102,'2010/11',NULL, -122.41250991, 37.78048002500003,34)
,('4700 3rd Street','San Francisco','California',94124,'2011/12','African American Arts and Cultural District', -122.39074403499995, 37.735597993000056,1)
,('600 Kearny Street','San Francisco','California',94108,'2013/14',NULL, -122.40445599099998, 37.79369401200006,6)
,('925 Larkin Street','San Francisco','California',94109,'2009/10',NULL, -122.41846801799994, 37.78643901400005,36)
,('1000 Potrero Avenue','San Francisco','California',94110,'2009/10','Calle 24 Latino Cultural District', -122.40693703399995, 37.75598198500006,20)
,('285 Bartlett Street','San Francisco','California',94110,'2017/2018',NULL, -122.41927502799994, 37.75249599400007,20)
,('355 9th Street','San Francisco','California',94103,'2010/11','SoMa Pilipinas Filipino Cultural District;Leather & LGBTQ Cultural District', -122.41058795499998, 37.77303230000007,34)
,('633 Geary Boulevard','San Francisco','California',94109,'2013/14','Japantown Cultural District', -122.42658471699997, 37.785223028000075,39)
,('1552 Ocean Avenue','San Francisco','California',94112,'2011/12',NULL, -122.45905201999994, 37.72475298400008,41)
,('1641 La Salle Avenue','San Francisco','California',94124,'2013/14','African American Arts and Cultural District', -122.38966696099999, 37.73688599800005,1)
,('3490-3498 18th Street','San Francisco','California',94110,'2020',NULL, -122.42131996100001, 37.76184898200006,20)
,('5070 Mission Street','San Francisco','California',94112,'2011/12',NULL, -122.440746027, 37.71730700400008,28);