# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# DECKS
javascript = Deck.create(subject: "JavaScript")
ruby = Deck.create(subject: "Ruby")
music = Deck.create(subject: "Music Theory")

# CARDS
# JS
this = Card.create(question: "What is 'this'?", answer: "The JavaScript this keyword refers to the object it belongs to.", deck_id: javascript.id)
scope = Card.create(question: "What is scope in JS?", answer: "Scope in JavaScript refers to the current context of code, which determines the accessibility of variables to JavaScript. The two types of scope are local and global: Global variables are those declared outside of a block. Local variables are those declared inside of a block.", deck_id: javascript.id)
hoisting = Card.create(question: "What is hoisting?", answer: "Hoisting is JavaScript's default behavior of moving declarations to the top.", deck_id: javascript.id)

# Ruby
self_keyword = Card.create(question: "What is 'self'?", answer: "Self is a special variable that points to the object that 'owns' the currently executing code.", deck_id: ruby.id)
hash = Card.create(question: "What is a hash?", answer: "A Hash is a collection of key-value pairs like this: 'employee' = > 'salary'. It is similar to an Array, except that indexing is done via arbitrary keys of any object type, not an integer index.", deck_id: ruby.id)
methods = Card.create(question: "What is '.methods'?", answer: "If you've ever wondering what methods are available for a specific object, just call .methods on it. This will return an array of symbols (names) of all publicly accessible methods of the object and its ancestors.", deck_id: ruby.id)

# Music Theory
modes = Card.create(question: "What are the 7 musical modes?", answer: "Ionian, Dorian, Phrygian, Lydian, Mixolydian, Aeolian, and Locrian", deck_id: music.id)
keys = Card.create(question: "How many keys are there?", answer: "Since there are 12 major scales, there are 12 major keys. Likewise, there are 12 minor scales and, therefore, 12 minor keys. So there are 24 keys all together.", deck_id: music.id)
eflat = Card.create(question: "How many flats are in the key of e flat?", answer: "E-flat major (or the key of E-flat) is a major scale based on E flat, with the pitches E flat, F, G, A flat, B flat, C, and D. Its key signature has three flats: B, E, and A.", deck_id: music.id)
