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
INSERT INTO murals (
  artist,
  street_address,
  city,
  us_state,
  zip_code,
  year,
  cultural_district,
  long,
  lat,
  neighborhood,
  img)
VALUES
        ('Rattlecan Blasters (Cameron Moberg and Aaron Vickery)','65 Oak Grove Street', 'San Francisco','California',94107,'2009/10','SoMa Pilipinas Filipino Cultural District;Leather & LGBTQ Cultural District',-122.40164796899994, 37.77755298100004,'South of Market','')
        ,('Wes Wong','835 Pacific Avenue','San Francisco','California',94133,'2010/11',NULL,-122.40907802399994, 37.79643900100007, 'Chinatown','')
        ,('Tirso Gonzalez','1089 Market Street','San Francisco','California',94103,'2010/11','SoMa Pilipinas Filipino Cultural District',-122.41189098999997, 37.780426004000056,'South of Market','')
        ,('Bryana Fleming','4901-4911 3rd Street','San Francisco','California',94124,'2009/10','African American Arts and Cultural District',-122.390731965, 37.73366701200007,'Hunters Point','https://live.staticflickr.com/4153/5055405888_8d99438fdb_b.jpg' )
        ,('Mel Waters','754 Washington Street','San Francisco','California',94108,'2014/15',NULL,-122.406187307, 37.79526736100007, 'Chinatown','')
        ,('Cameron Moberg','209 Jones Street','San Francisco','California',94102,'2010/11',NULL,-122.41248731099996, 37.78309751200004, 'Tenderloin','')
        ,('Francisco Aquino','2957 22nd Street','San Francisco','California',94110,'2013/14','Calle 24 Latino Cultural District',-122.41357902199996, 37.75552898500007,'The Mission','')
        ,('Mel Waters','1233-1235 Divisadero Street','San Francisco','California',94115,'2013/14',NULL,-122.43932202599994, 37.78105401800008, 'Western Addition','')
        ,('Cruptic c/o Ian Ross Gallery','435 Duboce Avenue','San Francisco','California',94117,'2013/14',NULL, -122.42986103599999, 37.76916500100003,'The Castro','')
        ,('Eli Lippert','866 Valencia Street','San Francisco','California',94110,'2011/12',NULL, -122.421635037, 37.75898199400007,'The Mission','')
        ,('Kara Maria','1330 Polk Street','San Francisco','California',94109,'2020',NULL, -122.42020298799997, 37.789322011000024,'Nob Hill','')
        ,('Chor Boogie','838 Pacific Avenue','San Francisco','California',94133,'2010/11',NULL, -122.40934196999996, 37.79706898500007, 'Chinatown','')
        ,('Mel Waters','4744 3rd Street','San Francisco','California',94124,'2014/15','African American Arts and Cultural District', -122.39094201599995, 37.735120015000064,'Hunters Point','')
        ,('Cameron Moberg','1325 Valencia Street','San Francisco','California',94110,'2011/12',NULL, -122.42029200399998, 37.751714004000064,'The Mission','')
        ,('Nils Thorsen','2000 Judah Street','San Francisco','California',94122,'2010/11','Sunset Chinese Cultural District', -122.48361895899995, 37.761655989000076,'Sunset','')
        ,('Ian Ross','466 Brannan Street','San Francisco','California',94107,'2011/12','SoMa Pilipinas Filipino Cultural District', -122.39603796199998, 37.779026016000046,'South of Market','')
        ,('Katya Kahn','355 9th Street','San Francisco','California',94103,'2010/11','SoMa Pilipinas Filipino Cultural District;Leather & LGBTQ Cultural District', -122.41058795499998, 37.77303230000007,'South of Market','')
        ,('Keena Ramono','4923 3rd Street','San Francisco','California',94124,'2011/12','African American Arts and Cultural District', -122.39084595899999, 37.733619990000086,'Hunters Point','')
        ,('Vera Lowdermilk','1 Lowell Street','San Francisco','California',94112,'2010/11',NULL, -122.44612402399997, 37.71128200800007,'Crocker-Amazon','')
        ,('Francisco Aquino','2700 24th Street','San Francisco','California',94110,'2014/15','Calle 24 Latino Cultural District', -122.40669102499999, 37.75314798000005,'The Mission','')
        ,('Francisco Twick Aquino','900 Vermont Street','San Francisco','California',94107,'2011/12',NULL, -122.40385681599997, 37.75791557700006,'Portrero Hill','')
        ,('Vera Lowdermilk','93 Monterey Boulevard','San Francisco','California',94131,'2010/11',NULL, -122.43738303999997, 37.731404988000065, 'Twin Peaks','')
        ,('Rattlecan Blasters (Cameron Moberg and Aaron Vickery)','423 Mount Vernon Avenue','San Francisco','California',94112,'2010/11',NULL, -122.44892299299994, 37.718349000000046,'Oceanview/Ingleside','')
        ,('Jason Jagel','2400 Cesar Chavez','San Francisco','California',94124,'2019',NULL, -122.40112996799996, 37.74991600200008,'Hunters Point','')
        ,('Ian Ross','41 Freelon Street','San Francisco','California',94107,'2013/14','SoMa Pilipinas Filipino Cultural District', -122.39623501999996, 37.779183010000054,'South of Market','')
        ,('Locust','1154 Post Street','San Francisco','California',94109,'2014/15',NULL, -122.42079955699995, 37.78679236700003,'Nob Hill','')
        ,('Bryana Fleming','1596 Hudson Street','San Francisco','California',94124,'2014/15','African American Arts and Cultural District', -122.38792897299999, 37.740154982000035,'Hunters Point','')
        ,('Marina Perez-Wong','485 Scott Street','San Francisco','California',94117,'2009/10',NULL, -122.43613899799999, 37.77411501800003,'Hayes Valley','')
        ,('Cameron Moberg','2352 Mission Street','San Francisco','California',94110,'2014/15',NULL, -122.41943000899992, 37.75940699900008,'The Mission','')
        ,('Aaron Vickery','1605 Jerrold Ave','San Francisco','California',94124,'2011/12','African American Arts and Cultural District', -122.38972202999997, 37.73875801300005,'Hunters Point','https://s3-media0.fl.yelpcdn.com/bphoto/05CA9Q4z6ivOmj8tdUs7tQ/348s.jpg')
        ,('Cameron Moberg','398 7th Street','San Francisco','California',94103,'2014/15','SoMa Pilipinas Filipino Cultural District;Leather & LGBTQ Cultural District', -122.40656797899997, 37.775537007000025, 'Hunters Point','')
        ,('Vera Lowdermilk','1450 Noriega Street','San Francisco','California',94122,'2009/10','Sunset Chinese Cultural District', -122.47941602099998, 37.75437002000007,'Sunset','')
        ,('Cameron Moberg','3728 Cesar Chavez','San Francisco','California',94110,'2013/14',NULL, -122.42326003599999, 37.74831501700004,'The Mission','')
        ,('Nico Berry','1354 York Street','San Francisco','California',94110,'2010/11','Calle 24 Latino Cultural District', -122.40822399099994, 37.75029398400005,'The Mission','')
        ,('Francisco Aquino','3241-3247 23rd Street','San Francisco','California',94110,'2009/10','Calle 24 Latino Cultural District', -122.41726496399998, 37.75377301900005,'The Mission','')
        ,('Nico Berry','290 Pacific Avenue','San Francisco','California',94111,'2011/12',NULL, -122.40063401099997, 37.79783199000008,'Financial District','')
        ,('Francisco Twick Aquino','999 Van Ness Avenue','San Francisco','California',94109,'2011/12',NULL, -122.42166202599999, 37.78443699600007, 'Western Addition','')
        ,('Chor Boogie','1054 Market Street','San Francisco','California',94102,'2009/10','Comptons Transgender Cultural District', -122.41111171799997, 37.78168079500006, 'Tenderloin','')
        ,('Marina Perez-Wong','485 Scott Street','San Francisco','California',94117,'2010/11',NULL, -122.43613899799999, 37.77411501800003,'Hayes Valley','')
        ,('Francisco Aquino','4744 3rd Street','San Francisco','California',94124,'2011/12','African American Arts and Cultural District', -122.39094201599995, 37.735120015000064,'Hunters Point','')
        ,('Cameron Moberg','2070 Mission Street','San Francisco','California',94110,'2017/2018','American Indian Cultural District', -122.41987902799997, 37.76391101400003,'The Mission','')
        ,('Shawn Bullen','4049 24th Street','San Francisco','California',94114,'2014/15',NULL, -122.43297600299995, 37.75111599700006,'Noe Valley','')
        ,('Francisco Twick Aquino','710 Grant Avenue','San Francisco','California',94108,'2010/11',NULL, -122.40597898299995, 37.793630980000046, 'Chinatown','')
        ,('Mel Waters','21st Street and Mission Street','San Francisco','California',94110,'2014/15',NULL, -122.41891988699996, 37.75702004200008,'The Mission','')
        ,('Bryanna Fleming','1397 Revere Avenue','San Francisco','California',94124,'2011/12','African American Arts and Cultural District', -122.38647395899994, 37.72926999200007,'Hunters Point','')
        ,('Paz de la Cazada','127 Market Street','San Francisco','California',94103,'2010/11',NULL, -122.39587731299997, 37.793547432000025,'Financial District','')
        ,('Shawn Bullen','1496 Oakdale Avenue','San Francisco','California',94124,'2011/12','African American Arts and Cultural District', -122.388165008, 37.73367401100006,'Hunters Point','')
        ,('Shawn Bullen','1601 Fillmore Street','San Francisco','California',94115,'2013/14','Japantown Cultural District', -122.43341697499994, 37.78456301800003, 'Japantown','')
        ,('Bryanna Fleming','506 Clement Street','San Francisco','California',94118,'2011/12',NULL, -122.46470703899996, 37.783197983000036,'Richmond','')
        ,('Francisco Aquino','776 Clay Street','San Francisco','California',94108,'2014/15',NULL, -122.40606763899996, 37.794376818000046, 'Chinatown','')
        ,('Meagan Spendlove','365 10th Street','San Francisco','California',94103,'2009/10','SoMa Pilipinas Filipino Cultural District;Leather & LGBTQ Cultural District', -122.41158496699997, 37.77213500200003,'South of Market','')
        ,('Cameron Moberg','136 Taylor Street','San Francisco','California',94102,'2014/15','Comptons Transgender Cultural District', -122.41061702499996, 37.78375198500004, 'Tenderloin','')
        ,('Robert Harris','988 Market Street','San Francisco','California',94102,'2010/11','Comptons Transgender Cultural District', -122.41034000299999, 37.78268899200003, 'Tenderloin','')
        ,('Eli Lippert','201 Middle Road','San Francisco','California',94124,'2014/15','African American Arts and Cultural District', -122.37948797799999, 37.733912015000044,'Hunters Point','')
        ,('Jeff Petersen','3215 21st Street','San Francisco','California',94110,'2009/10',NULL, -122.41937896299997, 37.756794988000024,'The Mission','')
        ,('Sirron Norris','3215 21st Street','San Francisco','California',94110,'2019',NULL, -122.41937896299997, 37.756794988000024,'The Mission','')
        ,('Apex','7th Street & Market Street','San Francisco','California',94102,'2010/11',NULL, -122.41250991, 37.78048002500003,'South of Market', 'https://sfai.edu/images/made/uploads/immaterial/tumblr_pigw9edw7J1v7uqw4o1_1280_950_777.jpg')
        ,('Eli Lippert','4700 3rd Street','San Francisco','California',94124,'2011/12','African American Arts and Cultural District', -122.39074403499995, 37.735597993000056,'Hunters Point','')
        ,('Shawn Bullen','600 Kearny Street','San Francisco','California',94108,'2013/14',NULL, -122.40445599099998, 37.79369401200006, 'Chinatown','')
        ,('Jet Martinez','925 Larkin Street','San Francisco','California',94109,'2009/10',NULL, -122.41846801799994, 37.78643901400005, 'Tenderloin','')
        ,('Max Ehrman','1000 Potrero Avenue','San Francisco','California',94110,'2009/10','Calle 24 Latino Cultural District', -122.40693703399995, 37.75598198500006,'The Mission','')
        ,('Michelle Fleck','285 Bartlett Street','San Francisco','California',94110,'2017/2018',NULL, -122.41927502799994, 37.75249599400007,'The Mission','')
        ,('Kristin Brandt','355 9th Street','San Francisco','California',94103,'2010/11','SoMa Pilipinas Filipino Cultural District;Leather & LGBTQ Cultural District', -122.41058795499998, 37.77303230000007,'South of Market','')
        ,('Bryanna Fleming','633 Geary Boulevard','San Francisco','California',94109,'2013/14','Japantown Cultural District', -122.42658471699997, 37.785223028000075, 'Western Addition','')
        ,('Meagan Spendlove','1552 Ocean Avenue','San Francisco','California',94112,'2011/12',NULL, -122.45905201999994, 37.72475298400008, 'Twin Peaks','')
        ,('Francisco Aquino','1641 La Salle Avenue','San Francisco','California',94124,'2013/14','African American Arts and Cultural District', -122.38966696099999, 37.73688599800005,'Hunters Point','')
        ,('Twin Walls Mural Co.','3490-3498 18th Street','San Francisco','California',94110,'2020',NULL, -122.42131996100001, 37.76184898200006,'The Mission','')
        ,('Rattlecan Blasters (Cameron Moberg and Aaron Vickery)','5070 Mission Street','San Francisco','California',94112,'2011/12',NULL, -122.440746027, 37.71730700400008,'Outer Mission','');

-- INSERT INTO neighborhoods (id, neighborhood) 
-- VALUES 
--         (35,'Sunset')
--         ,(11,'Richmond')
--         ,(9,'Hayes Valley')
--         ,(15, 'Japantown')
--         ,(39, 'Western Addition')
--         ,(21,'Nob Hill')
--         ,(36, 'Tenderloin')
--         ,(6, 'Chinatown')
--         ,(8,'Financial District')
--         ,(5,'The Castro')
--         ,(1,'Hunters Point')
--         ,(20,'The Mission')
--         ,(34,'South of Market')
--         ,(28,'Outer Mission')
--         ,(26, 'Portrero Hill')
--         ,(24,'Oceanview/Ingleside')
--         ,(22, 'Noe Valley')
--         ,(7,'Crocker-Amazon')
--         ,(41, 'Twin Peaks');


-- INSERT INTO artists (name) VALUES 
-- ('Wes Wong')
-- ,('Vera Lowdermilk')
-- ,('Twin Walls Mural Co.')
-- ,('Tirso Gonzalez')
-- ,('Sirron Norris')
-- ,('Shawn Bullen')
-- ,('Robert Harris')
-- ,('Paz de la Cazada')
-- ,('Rattlecan Blasters (Cameron Moberg and Aaron Vickery)')
-- ,('Nils Thorsen')
-- ,('Nico Berry')
-- ,('Michelle Fleck')
-- ,('Mel Waters')
-- ,('Meagan Spendlove')
-- ,('Max Ehrman')
-- ,('Marina Perez-Wong')
-- ,('Locust')
-- ,('Kristin Brandt')
-- ,('Keena Ramono')
-- ,('Katya Kahn')
-- ,('Kara Maria')
-- ,('Jet Martinez')
-- ,('Jeff Petersen')
-- ,('Jason Jagel')
-- ,('Francisco Twick Aquino')
-- ,('Francisco Aquino')
-- ,('Eli Lippert')
-- ,('Cruptic c/o Ian Ross Gallery')
-- ,('Chor Boogie')
-- ,('Cameron Moberg')
-- ,('Bryanna Fleming')
-- ,('Blake Westrate')
-- ,('Apex')
-- ,('Aaron Vickery')

-- INSERT INTO artist_mural (artist_id, mural_id )VALUES
-- ()
-- ,()
-- ,()
-- ,()
