# Models

## Deck
- has_many :cards
- subject:string

## Card
- belongs_to :deck
- question:string
- answer:string
- deck_id:integer

# User Story
A user should be able to create a new deck and add cards to each deck containing a question and answer. A user should also be able to edit and delete each deck and it's cards.

# Specs

- [x] The application must be an HTML, CSS, and JavaScript frontend with a Rails API backend.
- [x] All interactions between the client and the server must be handled asynchronously (AJAX) and use JSON as the communication format.
- [x] JavaScript application must use Object Oriented JavaScript (classes) to encapsulate related data and behavior.
- [x] The domain model served by the Rails backend must include a resource with at least one has-many relationship.
- [x] The backend and frontend must collaborate to demonstrate Client-Server Communication. Your application should have:
  - at least 3 AJAX calls, covering at least 2 of Create, Read, Update, and Delete (CRUD).
  - Your client-side JavaScript code must use fetch with the appropriate HTTP verb
  - your Rails API should use RESTful conventions.

# Sprints

## BACKEND
### Sprint 1: Models and Migrations
- [x] generate models and migrations for deck and card
- [x] add associations to models
- [x] create database and migrate tables
- [x] create seed data
- [x] test model associations

### Sprint 2: Routes, Controllers and Serializers
- [x] generate controllers for for decks and cards
- [x] create routes for decks: index, show, create, update, destroy
- [x] create routes for cards: index, show, create, update, destroy
- [x] generate serializers using fast json api
- [x] set up both serializers with attributes
- [x] build controller actions for decks: index, show, create, update, destroy with strong params
- [x] build controller actions for cards: index, show, create, update, destroy with strong params
- [x] install cors gem and uncomment cors file in config/initializers

### Sprint 3: Validations
- [x] create model validations to protect bad data from persisting to the database


## Test Feature
A user should be able to:
- test themselves in timed session
- keep track of right and wrong answers for each test and each card
- start each test with a shuffled deck
- sort wrong answers to top of deck after first test

### Associations and Attributes
## Test
- belongs_to :deck
- duration :integer => 75 min
- score :float => 0.5 (score * 100 ${%})
- correct_ids (string)=> "1, 3, 5, 7, 9"
- incorrect_ids (string)=> "2, 4, 6, 8, 10"

## Card
- correct :integer
- incorrect :integer

## Deck
- has_many :tests

### Sprint 1: Models and Migrations
- [x] generate test model and migration table
- [x] update card attributes and migrate changes
- [x] add associations to test, card and deck models
- [x] create seed data
- [x] test associations
