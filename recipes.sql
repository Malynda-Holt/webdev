DROP DATABASE IF EXISTS recipes;
CREATE DATABASE recipes;

DROP TABLE IF EXISTS recipes.recipes;
DROP TABLE IF EXISTS recipes.proteins;


CREATE TABLE recipes (
    recipe_id INT AUTO_INCREMENT, PRIMARY KEY (recipe_id),
    recipe_name VARCHAR(255) NOT NULL,
    protein_id INT DEFAULT NULL, FOREIGN KEY (protein_id) REFERENCES proteins(protein_id),
    instructions TEXT NOT NULL,
    ingredients VARCHAR(255) NOT NULL,


);

INSERT INTO recipes.recipes (recipe_id, recipe_name, protein_id, instructions, ingredients) VALUES
(1, 'Easy Chicken Creole', 1,  'In a large skillet over medium heat, saute the celery, green pepper and onion in oil until tender; Add garlic; cook 1 minute longer. Add flour; cook and stir for 5 minutes or until browned.
Stir in broth. Bring to a boil; cook and stir for 2 minutes. Add remaining ingredients except rice. Return to a boil. Reduce heat; cover and simmer for 10 minutes or until heated through. Serve with rice. If desired, top with additional chopped parsley.', '1 cup sliced celery
1 cup chopped green pepper
1 cup chopped onion
1/4 cup canola oil
2 garlic cloves, minced
1/4 cup all-purpose flour
5 cups chicken broth
6 cups shredded or cubed cooked chicken
2 cans (6 ounces each) tomato paste
1/4 cup chopped fresh parsley
4 teaspoons Worcestershire sauce
2 teaspoons lemon juice
1 teaspoon salt
1/2 teaspoon each pepper, sugar and dried thyme
12 to 16 drops hot pepper sauce
Hot cooked rice'),
(2, 'Herbed Chicken Caesar Salad', 1, 'Brush chicken with oil. Combine the basil, oregano, garlic salt if desired, pepper and paprika; sprinkle over chicken. Grill, uncovered, over medium-low heat for 12-15 minutes or until a thermometer reads 170°, turning several times.
Arrange romaine and tomato on plates. Cut chicken into strips; arrange over salads. Drizzle with dressing. Sprinkle with croutons if desired.', '2 boneless skinless chicken breast halves (1/2 pound)
2 teaspoons olive oil
1/8 teaspoon dried basil
1/8 teaspoon dried oregano
1/4 teaspoon garlic salt, optional
1/4 teaspoon pepper
1/4 teaspoon paprika
4 cups torn romaine
1 small tomato, thinly sliced
Creamy Caesar salad dressing
Caesar salad croutons, optional'),
(3, 'Teriyaki Grilled Chicken', 1, 'In a large resealable plastic bag, combine first seven ingredients; add chicken. Seal bag and turn to coat; refrigerate at least 5 hours.
Drain and discard marinade. Prepare grill for indirect heat, using a drip pan. Place chicken skin side down on grill rack. Grill, covered, over indirect medium heat 20 minutes. Turn; grill 20-30 minutes or until a thermometer reads 170°.', '1/3 cup reduced-sodium soy sauce
1/4 cup canola oil
2 green onions, thinly sliced
2 tablespoons plus 1-1/2 teaspoons honey
2 tablespoons sherry or chicken broth
2 garlic cloves, minced
1 teaspoon minced fresh gingerroot
6 bone-in chicken breast halves (8 ounces each)'),
(4, 'Chicken Lo Mein', 1, 'Cook pasta according to package directions. Meanwhile, in a small bowl, combine the cornstarch, soy sauce, vinegar, hoisin sauce, ginger and garlic; set aside.
In a large skillet or wok, stir-fry chicken in 1 tablespoon oil for 5-8 minutes or until no longer pink. Remove with a slotted spoon. Stir-fry broccoli and carrots in remaining oil for 5-6 minutes or until crisp-tender.
Drain pasta. Stir cornstarch mixture and add to the pan. Bring to a boil; cook and stir for 2 minutes or until thickened. Stir in chicken and pasta; heat through. Sprinkle with peanuts.', '4 ounces uncooked angel hair pasta
2 teaspoons cornstarch
1/4 cup reduced-sodium soy sauce
2 tablespoons rice vinegar
2 tablespoons hoisin sauce
1 tablespoon minced fresh gingerroot
1 teaspoon minced garlic
1 pound boneless skinless chicken breasts, cut into strips
2 tablespoons canola oil, divided
2 cups fresh broccoli florets
1 cup julienned carrots
1/4 cup salted peanuts, finely chopped'),
(5, 'Buffalo Chicken Chili', 'In a 4- or 5-qt. slow cooker, combine the first 7 ingredients. Add chicken. Cover and cook on low 5-6 hours or until chicken is tender.
Remove chicken; shred with 2 forks. Return to slow cooker. Stir in cream cheese. Cover and cook on low until cheese is melted, about 30 minutes. Stir until blended. Serve with toppings as desired.', '1 can (15-1/2 ounces) navy beans, rinsed and drained
1 can (14-1/2 ounces) chicken broth
1 can (14-1/2 ounces) fire-roasted diced tomatoes
1 can (8 ounces) tomato sauce
1/2 cup Buffalo wing sauce
1/2 teaspoon onion powder
1/2 teaspoon garlic powder
1 pound boneless skinless chicken breast halves
1 package (8 ounces) cream cheese, cubed and softened
Optional toppings: Crumbled blue cheese, chopped celery and chopped green onions'),
(6, 'Tenderloin Steak Diane', 2,'Sprinkle steaks with steak seasoning. In a large skillet, heat butter over medium heat. Add steaks; cook until meat reaches desired doneness, 4-5 minutes on each side. Remove steaks from pan.
Add mushrooms to skillet; cook and stir over medium-high heat until tender. Add broth, stirring to loosen browned bits from pan. Stir in cream, steak sauce and garlic salt. Bring to a boil; cook and stir until sauce is slightly thickened, 1-2 minutes.
Return steaks to pan and turn to coat; heat through. Stir in chives.', '4 beef tenderloin steaks (6 ounces each)
1 teaspoon steak seasoning
2 tablespoons butter
1 cup sliced fresh mushrooms
1/2 cup reduced-sodium beef broth
1/4 cup heavy whipping cream
1 tablespoon steak sauce
1 teaspoon garlic salt with parsley
1 teaspoon minced chives' ),
(7, 'Cast-Iron Steak', 2, 'Remove steak from refrigerator and sprinkle with 2 teaspoons salt; let stand 45-60 minutes.
Preheat a cast-iron skillet over high heat until extremely hot, 4-5 minutes. Sprinkle remaining 1 teaspoon salt in bottom of skillet; pat beef dry with paper towels. Place steak in skillet and cook until easily moved, 1-2 minutes; flip, placing steak in a different section of the skillet. Cook 30 seconds and then begin moving steak, occasionally pressing slightly to ensure even contact with skillet.
Continue turning and flipping until cooked to desired degree of doneness (for medium-rare, a thermometer should read 135°; medium, 140°; medium-well, 145°), 1-2 minutes.', '1 beef New York strip or ribeye steak (1 pound), 1 inch thick
3 teaspoons kosher salt, divided'),
(8, 'Quick Pepper Steak', 2, 'In a bowl, combine the cornstarch, brown sugar, ginger and garlic powder. Stir in broth until smooth. Add soy sauce and molasses; set aside.
In a nonstick skillet or wok, stir-fry steak in oil for 4-5 minutes; remove and keep warm. Stir-fry peppers, celery and onions until crisp-tender, about 5 minutes. Stir broth mixture and add to the vegetables. Return meat to the pan. Bring to a boil; cook and stir until thickened, about 2 minutes. Stir in lemon juice. Serve over noodles if desired.', '2 tablespoons cornstarch
2 tablespoons brown sugar
2 tablespoons minced fresh gingerroot
3/4 teaspoon garlic powder
1 can (14-1/2 ounces) beef broth
3 tablespoons reduced-sodium soy sauce
1 tablespoon molasses
1-1/2 pounds beef top sirloin steak, cut into 1/4-inch strips
1 tablespoon canola oil
2 large green peppers, cut into 1/2-inch strips
1-1/2 cups sliced celery
3 green onions, chopped
4 teaspoons lemon juice
Hot cooked noodles, optional'),
(9, 'Beef Steaks with Blue Cheese', 2, 'Place meat on broiler pan. Broil 4-6 in. from the heat for 5-8 minutes on each side or until meat is browned and cooked to desired doneness (for medium-rare, a thermometer should read 135°; medium, 140°; medium-well, 145°).
Meanwhile, in a bowl, combine the blue cheese and butter; set aside. In a skillet, saute bread cubes in oil until golden brown. Sprinkle with Parmesan cheese. Top steaks with blue cheese mixture and sprinkle with croutons; broil 1 minute longer or until cheese is slightly melted.', '2 beef tenderloin steaks (1-1/2 inches thick and 8 ounces each)
2 ounces blue cheese, crumbled
2 tablespoons butter, softened
2 slices white bread, crusts removed and cut into cubes
1 tablespoon olive oil
2 tablespoons grated Parmesan cheese'),
(10, 'Spicy Pork and Butternut Squash Ragu', 3, 'Combine first 5 ingredients in bottom of a 6- or 7-qt. slow cooker. Sprinkle ribs with salt, garlic powder and pepper; place in slow cooker. Cook, covered, on low 5-6 hours or until pork is tender.
Remove cover; stir to break pork into smaller pieces. Serve with pasta. If desired, top with Parmesan cheese.','2 cans (14-1/2 ounces each) stewed tomatoes, undrained
1 package (12 ounces) frozen cooked winter squash, thawed
1 large sweet onion, cut into 1/2-inch pieces
1 medium sweet red pepper, cut into 1/2-inch pieces
1-1/2 teaspoons crushed red pepper flakes
2 pounds boneless country-style pork ribs
1 teaspoon salt
1/4 teaspoon garlic powder
1/4 teaspoon pepper
Hot cooked pasta
Shaved Parmesan cheese, optional'),
(11, 'Smoked Pork Butt', 3, 'Let roast stand at room temperature for 1 hour. Preheat smoker to 275°. Add wood chips or pellets to smoker according to manufacturer’s directions.
Trim excess fat from pork, leaving some exterior fat. Pat roast dry; rub with mustard and sprinkle with spice rub. Place pork in smoker. In a spray bottle, combine apple cider and vinegar; lightly spritz pork. Smoke, spritzing pork every hour, until pork reaches 165° and is a dark brown color, about 5 hours.
Transfer pork to a 13x9-in. baking pan or large cast iron skillet; liberally spritz with cider mixture. Cover tightly with foil and return to smoker. Cook until pork reaches desired degree of doneness. For sliced pork, cook until pork reaches 190° to 195°, 2-3 hours longer. For pulled pork, cook until 200° to 205°. Remove and let rest at room temperature, covered, 45-60 minutes. For slices, cut around bone and cut roast into slices. For pulled pork, remove bone and shred pork. Skim fat from cooking juices; toss pork with cooking juices.', '1 bone-in pork shoulder roast (8 to 10 pounds)
Applewood chips or pellets
3 tablespoons spicy brown mustard
1/4 cup All-Purpose Meat Seasoning or favorite spice rub
1/3 cup apple cider or juice
3 tablespoons cider vinegar'),
(12, 'Meat Lovers Pizza Rice Skillet', 3, 'In a large skillet, cook sausage over medium heat 5-7 minutes or until no longer pink, breaking into crumbles; drain. Return to skillet with next 4 ingredients. Bring to a boil; cover and remove from heat. Let stand 5 minutes.
Fluff with a fork; stir in cheese. Top with pepperoni and, if desired, additional Parmesan cheese and basil.', '1 pound bulk Italian sausage
1 can (14-1/2 ounces) diced tomatoes with basil, oregano and garlic
1 can (15-1/2 ounces) cannellini beans, rinsed and drained
1-1/2 cups water
1-1/2 cups uncooked instant rice
1/4 cup grated Parmesan cheese
1/2 cup (2 ounces) sliced mini pepperoni
Optional: Additional grated Parmesan cheese and chopped fresh basil'),
(13, 'Pennsylvania Pot Roast', 3, 'Place roast in a 5-qt. slow cooker; add broth, onions and seasonings. Cook, covered, on high for 4 hours. Add potatoes, carrots and mushrooms. Cook, covered, on high 1 hour longer or until vegetables are tender. Remove meat and vegetables; keep warm. Discard bay leaf.
In a saucepan, combine flour and cold water until smooth; stir in 1-1/2 cups cooking juices. Bring to a boil. Cook and stir until thickened, 2 minutes. If desired, add browning sauce. Serve with roast and vegetables.', '1 boneless pork shoulder butt roast (2-1/2 to 3 pounds), halved
1-1/2 cups beef broth
1/2 cup sliced green onions
1 teaspoon dried basil
1 teaspoon dried marjoram
1/2 teaspoon salt
1/2 teaspoon pepper
1 bay leaf
6 medium red potatoes, cut into 2-inch chunks
4 medium carrots, cut into 2-inch chunks
1/2 pound medium fresh mushrooms, quartered
1/4 cup all-purpose flour
1/2 cup cold water
Browning sauce, optional'),
(14, 'Spicy Sausage Meatball Sauce', 3, 'Place first 8 ingredients in a 6-qt. slow cooker. Chop onion and peppers; stir into tomato mixture.
Shape sausage into 1-3/4-in. balls; roll in flour to coat lightly. In a large skillet, heat oil over medium-high heat; cook meatballs in batches until lightly browned, 5-8 minutes, turning occasionally. Drain on paper towels. Add to slow cooker, stirring gently into sauce.
Cook, covered, on low 5-6 hours or until meatballs are cooked through and vegetables are tender. Serve with pasta.', '2 cans (28 ounces each) crushed tomatoes
2 cans (14-1/2 ounces each) diced tomatoes, undrained
3/4 pound sliced fresh mushrooms
5 garlic cloves, minced
4 teaspoons Italian seasoning
1 teaspoon pepper
1/4 teaspoon salt
1/4 teaspoon crushed red pepper flakes
1 large sweet onion
1 large green pepper
1 medium sweet red pepper
1 medium sweet orange pepper
1 medium sweet yellow pepper
10 hot Italian sausage links (4 ounces each), casings removed
1/4 cup all-purpose flour
2 tablespoons canola oil
Hot cooked pasta'),
(15, 'Sweet n Sour Ribs', 3, 'Place ribs in an ungreased 5-qt. slow cooker. Combine the next 11 ingredients; pour over ribs. Cook, covered, on low until meat is tender, 8-10 hours.
To make sauce, transfer cooking juices to a small saucepan; bring to a boil. Meanwhile, in a small bowl, combine cornstarch and water until smooth; stir into juices. Return to a boil, stirring constantly; cook and stir until thickened, 1-2 minutes. Serve with ribs.', '3 to 4 pounds boneless country-style pork ribs
1 can (20 ounces) pineapple tidbits, undrained
2 cans (8 ounces each) tomato sauce
1/2 cup thinly sliced onion
1/2 cup thinly sliced green pepper
1/2 cup packed brown sugar
1/4 cup cider vinegar
1/4 cup tomato paste
2 tablespoons Worcestershire sauce
1 garlic clove, minced
1/2 teaspoon salt
1/2 teaspoon pepper
1 tablespoon cornstarch
1 tablespoon cold water')
(16, 'Greek Tortellini Skillet', 4, 'Cook tortellini according to package directions. Meanwhile, in a large skillet, cook the beef, zucchini and onion over medium heat until meat is no longer pink; crumble beef; drain.
Drain tortellini; add to skillet. Stir in the marinara sauce, water and pepper. Bring to a boil. Reduce heat; simmer, uncovered, for 5 minutes. Add the tomatoes, cheese, olives and 1 tablespoon basil. Sprinkle with remaining basil.', 'Cook tortellini according to package directions. Meanwhile, in a large skillet, cook the beef, zucchini and onion over medium heat until meat is no longer pink; crumble beef; drain.
Drain tortellini; add to skillet. Stir in the marinara sauce, water and pepper. Bring to a boil. Reduce heat; simmer, uncovered, for 5 minutes. Add the tomatoes, cheese, olives and 1 tablespoon basil. Sprinkle with remaining basil.'),
(17, 'Cheeseburger Pizza', 4, 'Preheat oven to 425°. In a large skillet, cook beef over medium heat until no longer pink, 3-4 minutes, breaking it into crumbles; drain.
Meanwhile, place crust on an ungreased baking sheet or pizza pan. Mix ketchup and mustard; spread over crust. Add ground beef; bake 5 minutes. Sprinkle with cheese; bake until cheese is bubbly and crust is lightly browned, 8-10 minutes longer.
Top with lettuce, pickle and onion. Whisk mayonnaise and enough pickle juice to reach desired consistency; drizzle over pizza.', '1/2 pound ground beef
1 prebaked 12-inch pizza crust
1/2 cup ketchup
1/4 cup prepared mustard
1-1/2 cups shredded cheddar cheese
2 cups shredded lettuce
1/2 cup chopped dill pickle
1/4 cup chopped onion
1/2 cup mayonnaise
2 to 3 tablespoons dill pickle juice'),
(18, 'Sesame Beef Skewers', 4, 'In a bowl, toss beef with 3 tablespoons dressing and soy sauce; let stand 10 minutes. Meanwhile, in a large bowl, combine pineapple, apples, chili sauce, lime juice and pepper; toss to combine.
Thread beef onto 4 metal or soaked wooden skewers; discard remaining marinade. Grill kabobs, covered, over medium heat or broil 4 in. from heat until desired doneness, 7-9 minutes, turning occasionally; brush generously with remaining dressing during the last 3 minutes. Sprinkle with sesame seeds. Serve with pineapple mixture.', '1 pound beef top sirloin steak, cut into 1-inch cubes
6 tablespoons sesame ginger salad dressing, divided
1 tablespoon reduced-sodium soy sauce
2 cups chopped fresh pineapple
2 medium apples, chopped
1 tablespoon sweet chili sauce
1 tablespoon lime juice
1/4 teaspoon pepper
1 tablespoon sesame seeds, toasted'),
(19, 'Skillet Lasagna', 4, 'In a large skillet, cook beef and garlic over medium heat until meat is no longer pink, breaking up beef into crumbles; drain. Stir in tomatoes and spaghetti sauce; heat through. Transfer to a large bowl.
In a small bowl, combine the soup, eggs, cottage cheese and Italian seasoning.
Return 1 cup meat sauce to the skillet; spread evenly. Layer with 1 cup cottage cheese mixture, 1-1/2 cups meat sauce and half the noodles, breaking to fit. Repeat layers of cottage cheese mixture, meat sauce and noodles. Top with remaining meat sauce. Bring to a boil. Reduce heat; cover and simmer for 15-17 minutes or until noodles are tender.', '3/4 pound ground beef
2 garlic cloves, minced
1 can (14-1/2 ounces) diced tomatoes with basil, oregano and garlic, undrained
2 jars (14 ounces each) spaghetti sauce
2/3 cup condensed cream of onion soup, undiluted
2 large eggs, lightly beaten
1-1/4 cups 1% cottage cheese
3/4 teaspoon Italian seasoning
9 no-cook lasagna noodles
1/2 cup shredded Colby-Monterey Jack cheese
1/2 cup shredded part-skim mozzarella cheese'),
(20, 'Chipotle Citrus-Glazed Turkey Tenderloins', 5, 'Sprinkle turkey with salt and pepper. In a large skillet, brown turkey in oil on all sides.
Meanwhile, in a small bowl, whisk the juices, brown sugar, molasses and chipotle peppers; add to skillet. Reduce heat and simmer for 12-16 minutes or until turkey reaches 165°. Transfer turkey to a cutting board; let rest for 5 minutes.
Simmer glaze until thickened, about 4 minutes. Slice turkey and serve with glaze. Top with cilantro.', '4 turkey breast tenderloins (5 ounces each)
1/4 teaspoon salt
1/4 teaspoon pepper
1 tablespoon canola oil
3/4 cup orange juice
1/4 cup lime juice
1/4 cup packed brown sugar
1 tablespoon molasses
2 teaspoons minced chipotle peppers in adobo sauce
2 tablespoons minced fresh cilantro',)
(21,'Tangy Turkey Tostadas', 5, 'In a large skillet, cook turkey, mushrooms, pepper and onion over medium heat 6-8 minutes or until turkey is no longer pink and vegetables are tender, breaking turkey into crumbles; drain. Stir in garlic; cook 1 minute longer.
Stir in beans, salsa, green chiles, chili powder, cumin, salt and pepper sauce. Cook, uncovered, 4-5 minutes or until heated through. Add cheese and corn; heat through. Spread about 1/3 cup filling over each tostada shell. Sprinkle with lettuce, tomatoes and cilantro.', '1-1/4 pounds lean ground turkey
3/4 cup sliced fresh mushrooms
1 medium green pepper, chopped
1 small onion, chopped
2 garlic cloves, minced
1 can (16 ounces) kidney beans, rinsed and drained
1 cup salsa
1 can (4 ounces) chopped green chiles
1 tablespoon chili powder
1 teaspoon ground cumin
1/2 teaspoon salt
4 drops hot pepper sauce
1-1/2 cups (6 ounces) reduced-fat Mexican cheese blend
1/2 cup frozen corn, thawed
16 tostada shells
2 cups shredded lettuce
1 cup chopped tomatoes
1/4 cup minced fresh cilantro'),
(22, 'Cranberry Appetizer Meatballs', 5, 'Preheat oven to 400°. Combine the first nine ingredients. Crumble beef over mixture and mix well. Shape into 1-in. balls.
Place meatballs on a rack in a shallow baking pan. Bake until no longer pink, about 15 minutes. Transfer to a 3-qt. slow cooker or chafing dish.
Meanwhile, in a large saucepan, combine all sauce ingredients; simmer 10 minutes, stirring occasionally. Pour over meatballs. Serve warm.', '2 large eggs, lightly beaten
1 cup dry bread crumbs
1/3 cup minced fresh parsley
1/3 cup ketchup
2 tablespoons finely chopped onion
2 tablespoons soy sauce
2 garlic cloves, minced
1/2 teaspoon salt
1/4 teaspoon pepper
2 pounds ground beef
cranberry sauce:
1 can (14 ounces) whole-berry cranberry sauce
1 bottle (12 ounces) chili sauce
1 tablespoon brown sugar
1 tablespoon prepared mustard
1 tablespoon lemon juice
2 garlic cloves, minced'),
(23, 'Mexican Turkey Roll-Ups', 5, 'In a bowl, combine turkey, 1/2 cup sour cream, 1-1/2 teaspoons taco seasoning, half the soup, 1 cup cheese, onion, salsa and olives. Place 1/3 cup filling on each tortilla. Roll up and place, seam side down, in a greased 13x9-in. baking dish. Combine remaining sour cream, taco seasoning and soup; pour over tortillas. Cover and bake at 350° for 30 minutes or until heated through. Sprinkle with remaining cheese. Serve with shredded lettuce and chopped tomatoes. Top with additional salsa and sliced ripe olives if desired.', '2-1/2 cups cubed cooked turkey
1-1/2 cups sour cream, divided
3 teaspoons taco seasoning, divided
1 can (10-3/4 ounces) condensed cream of mushroom soup, undiluted, divided
1-1/2 cups shredded cheddar cheese, divided
1 small onion, chopped
1/2 cup salsa
1/4 cup sliced ripe olives
10 flour tortillas (6 inches)
Shredded lettuce
Chopped tomatoes
Additional salsa and sliced ripe olives, optional'),
(24, 'Terrific Turkey Enchiladas', 5, 'Preheat oven to 350°. Place first 6 ingredients in a food processor; cover and pulse until blended.
In a large skillet, cook turkey, onion and garlic in oil over medium heat until meat is no longer pink. Remove from heat; stir in salsa, cornmeal and seasonings.
Spoon 1/3 cup turkey mixture down the center of each tortilla; top with 2 tablespoons cheese. Roll up and place seam side down in a greased 11x7-in. baking dish. Spoon corn mixture over top; sprinkle with olives and remaining cheese.
Cover and bake 30 minutes. Uncover; bake 5-10 minutes or until heated through. If desired, top with additional chopped cilantro.', '1-1/4 cups frozen corn, thawed
1 can (4 ounces) chopped green chiles
1 cup fresh cilantro leaves
1/3 cup heavy whipping cream
1/4 teaspoon salt
1/4 teaspoon pepper
enchiladas:
3/4 pound ground turkey
1/3 cup chopped onion
1 garlic clove, minced
1 tablespoon olive oil
3/4 cup salsa
1 tablespoon cornmeal
2 teaspoons chili powder
1-1/2 teaspoons ground cumin
1 teaspoon dried oregano
1/8 teaspoon salt
1/8 teaspoon pepper
6 flour tortillas (8 inches), warmed
1-1/4 cups shredded Mexican cheese blend, divided
1/4 cup sliced ripe olives'),
(25, 'Pear and Pomegranate Lamb Tagine', 6, 'Place lamb in a 5- or 6-qt. oval slow cooker. Add pears and shallots. Combine 1/4 cup orange juice, 1/4 cup pomegranate juice, honey and seasonings; add to slow cooker.
Cook, covered, on low until meat is tender, 6-8 hours. Remove lamb to a rimmed serving platter; keep warm. Stir remaining orange and pomegranate juices into cooking liquid; pour over lamb. Sprinkle with pomegranate seeds and parsley. If desired, serve over couscous.', '2-1/2 pounds lamb shanks
2 large pears, finely chopped
3 cups thinly sliced shallots
1/2 cup orange juice, divided
1/2 cup pomegranate juice, divided
1 tablespoon honey
1-1/2 teaspoons ground cinnamon
1 teaspoon salt
1 teaspoon ground allspice
1 teaspoon ground cardamom
1/4 cup pomegranate seeds
1/4 cup minced fresh parsley
Cooked couscous, optional'),
(26, 'Mint Lamb Stew', 6, 'In a large shallow dish, combine the flour, salt and pepper. Add the meat, a few pieces at a time, and turn to coat. In a large skillet, brown meat and shallots in oil in batches.
Transfer to a 5- or 6-qt. slow cooker. Add wine to the skillet, stirring to loosen browned bits from pan. Bring to a boil. Reduce heat; simmer, uncovered, for 1-2 minutes. Add to slow cooker.
Stir in the broth, potatoes, sweet potato, carrots, parsnips and garlic. Cover and cook on low for 6-8 hours or until meat is tender. Stir in jelly; sprinkle with bacon. If desired, sprinkle with fresh mint before serving.', '1/2 cup all-purpose flour
1/2 teaspoon salt
1/4 teaspoon pepper
1-1/2 pounds lamb stew meat, cubed
2 shallots, sliced
2 tablespoons olive oil
1/2 cup red wine
2 cans (14-1/2 ounces each) beef broth
2 medium potatoes, cubed
1 large sweet potato, peeled and cubed
2 large carrots, cut into 1-inch pieces
2 medium parsnips, peeled and cubed
1 garlic clove, minced
1 tablespoon mint jelly
4 bacon strips, cooked and crumbled
Minced fresh mint, optional'),
(27, 'Irish Stew Pie', 6, 'Preheat oven to 350°. In a shallow bowl, mix 1/2 cup flour, 1/2 teaspoon salt and 1/2 teaspoon pepper. Add lamb, a few pieces at a time, and toss to coat; shake off excess. In a Dutch oven, heat oil over medium-high heat. Brown lamb in batches. Remove from pan. Add carrots and onion to same pan; cook and stir until crisp-tender, 6-8 minutes. Stir in remaining 1 tablespoon flour until blended; gradually whisk in stock. Bring to a boil, stirring to loosen browned bits from pan.
Add potatoes, thyme, bay leaf, Worcestershire sauce, tomato paste, the remaining 1/4 teaspoon salt and 1/4 teaspoon pepper, and lamb; return to a boil. Reduce heat. Simmer, uncovered, until sauce is thickened and lamb is tender, 25-30 minutes. Discard thyme sprig and bay leaf. Stir in mint. Transfer to a greased 9-in. deep-dish pie plate. Whisk egg yolk and cream; brush around edge of pie plate to help pastry adhere.
On a lightly floured surface, unfold 1 sheet puff pastry; top with remaining sheet. Roll to fit over pie plate. Carefully place over filling; trim to fit. Using a fork, press crust firmly onto rim of pie plate to seal edge. Brush with remaining egg mixture; cut slits in top. Place on a rimmed baking sheet. Bake until golden brown, 35-40 minutes. Let stand 10 minutes before serving.', '1/2 cup plus 1 tablespoon all-purpose flour, divided
3/4 teaspoon salt, divided
3/4 teaspoon pepper, divided
1 pound boneless lamb shoulder roast, cubed
2 tablespoons canola oil
2 medium carrots, finely chopped
1 medium onion, halved and sliced
1-1/4 cups beef stock
2 medium Yukon Gold potatoes, peeled and cubed
1 fresh thyme sprig
1 bay leaf
1 teaspoon Worcestershire sauce
1 teaspoon tomato paste
3 tablespoons chopped fresh mint
1 large egg yolk
2 tablespoons heavy whipping cream
1 package (17.3 ounces) frozen puff pastry, thawed'),
(28, 'Santorini Lamb Sliders', 6, 'Line a strainer or colander with 4 layers of cheesecloth or 1 coffee filter; place over a bowl. Place yogurt in prepared strainer; cover yogurt with sides of cheesecloth. Refrigerate 2-4 hours. Meanwhile, place cucumber in a colander over a plate; sprinkle with 1/4 teaspoon salt and toss. Let stand 30 minutes.
For burgers, in a large bowl, combine lamb, lemon zest, 2 garlic cloves, oregano, 3/4 teaspoon salt and 1/4 teaspoon pepper, mixing lightly but thoroughly. Shape into ten 1/2-in.-thick patties. Refrigerate 30 minutes.
For sauce, remove yogurt from cheesecloth to a bowl; discard strained liquid. Squeeze cucumber and blot dry with paper towels. Add cucumber, lemon juice, dill, and the remaining 2 garlic cloves, 1/4 teaspoon salt and 1/8 teaspoon pepper to yogurt, stirring until combined.
Grill burgers, covered, over medium heat 3-4 minutes on each side or until a thermometer reads 160°. Grill buns over medium heat, cut sides down, for 30-60 seconds or until toasted. Serve burgers on buns with lettuce, red onion, feta and sauce.', '1 cup plain Greek yogurt
1/2 cup shredded peeled cucumber
1-1/4 teaspoons salt, divided
1 pound ground lamb
1 tablespoon grated lemon zest
4 garlic cloves, minced and divided
2 teaspoons dried oregano
1/4 teaspoon plus 1/8 teaspoon pepper, divided
1 teaspoon lemon juice
1 teaspoon dill weed
10 mini buns or mini ciabatta buns
10 Bibb lettuce leaves or Boston lettuce leaves
1 medium red onion, thinly sliced
1 cup crumbled feta cheese'),
(29, 'Roast Rack of Lamb with Herb Sauce', 6, 'Mix rosemary, pepper and salt; rub over lamb. Refrigerate, covered, 8 hours or overnight.
Preheat oven to 375°. Place lamb in a shallow roasting pan, fat side up; drizzle with oil.
Roast 35-45 minutes or until meat reaches desired doneness (for medium-rare, a thermometer should read 135°; medium, 140°; medium-well, 145°). Remove lamb from oven; tent with foil. Let stand 10 minutes before serving.
Meanwhile, place herbs, shallots and garlic in a food processor; pulse until herbs are chopped. Add lemon zest, lemon juice, mustard, salt and pepper; process until blended. Continue processing while gradually adding oil in a steady stream. Serve lamb with sauce.','1/4 cup minced fresh rosemary
1-1/2 teaspoons coarsely ground pepper
1-1/2 teaspoons salt
2 racks of lamb (1-1/2 pounds each)
1 tablespoon olive oil
sauce:
3/4 cup fresh parsley leaves
2/3 cup fresh basil leaves
1/3 cup each fresh cilantro leaves, mint leaves, oregano leaves and thyme leaves
1/3 cup coarsely chopped fresh chives
1/3 cup chopped shallots
2 garlic cloves, crushed
3 tablespoons grated lemon zest
1/2 cup lemon juice
2 tablespoons Dijon mustard
3/4 teaspoon salt
1/2 teaspoon pepper
1/3 cup olive oil');

CREATE TABLE proteins (
    protein_id INT, 
    protein_name VARCHAR(255),
    PRIMARY KEY (protein_id),

);

INSERT INTO recipes.proteins (protein_id, protein_name) VALUES
(1, 'Chicken'),
(2, 'Steak'),
(3, 'Pork'),
(4, 'Beef'),
(5, 'Turkey'),
(6, 'Lamb');