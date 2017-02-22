# COOKBOOK

This is an app for managing recipes

* Ruby version: 2.3.1p112

* System dependencies: sqlite3

* Configuration: Clone the project, cd into project, bundle install

* Database creation

* Database initialization


### Views:

my recipes
all recipes
{user's} recipes
selected recipes
--------------
List recipes with picture, type, name and discription


recipe
--------------
recipe name, discription and image
recipe ingredients
recipe steps
recipe notes at the bottom


grocery list
--------------
all ingredients from all selected meals organized by grocery section
grocery sections should be orderable


### SCHEMA

recipe
| id | name | description | notes | type | tags | user_id | create_date | modified_date | deleted |

recipe_steps
| id | recipe_id | step_no | text | create_date | modified_date | deleted |

recipe_ingredients
| id | recipe_id | ingredient_id | create_date | modified_date | deleted |

ingredients
| id | name | type | create_date | modified_date | deleted |

users
| id | first_name | last_name | email | pass_hash | permissions | create_date | modified_date | deleted |


### QUERIES

// get general recipe info
SELECT * from recipe where recipe.id = {id};

// get recipe ingredients
SELECT in.name, in.type
FROM recipe as re
JOIN recipe_ingredients AS ri ON ri.recipe_id = re.id
JOIN ingredients AS in ON in.id = ri.ingredient_id
WHERE re.id = {id};

// get recipe stpes
SELECT rs.step_no, rs.test
FROM recipe as re
join recipe_steps as rs on rs.recipe_id = re.id
WHERE re.id = {id};


