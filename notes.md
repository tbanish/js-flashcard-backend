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

- [ ] The application must be an HTML, CSS, and JavaScript frontend with a Rails API backend.
- [ ] All interactions between the client and the server must be handled asynchronously (AJAX) and use JSON as the communication format.
- [ ] JavaScript application must use Object Oriented JavaScript (classes) to encapsulate related data and behavior.
- [ ] The domain model served by the Rails backend must include a resource with at least one has-many relationship.
- [ ] The backend and frontend must collaborate to demonstrate Client-Server Communication. Your application should have:
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
- [ ] generate controllers for for decks and cards
- [ ] create routes for decks: index, show, create, update, destroy
- [ ] create routes for cards: index, show, create, update, destroy
- [ ] generate serializers using fast json api
- [ ] set up both serializers with attributes
- [ ] build controller actions for decks: index, show, create, update, destroy with strong params
- [ ] build controller actions for cards: index, show, create, update, destroy with strong params
- [ ] install cors gem and uncomment cors file in config/initializers
