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
