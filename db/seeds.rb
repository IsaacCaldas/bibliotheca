# Seed: Genres
fiction = Genre.create!(name: "Fiction")
action = Genre.create!(name: "Action")
romance = Genre.create!(name: "Romance")
scifi = Genre.create!(name: "Scifi")
comedy = Genre.create!(name: "Comedy")
horror = Genre.create!(name: "Horror")
no_fiction = Genre.create!(name: "No fiction")
biography = Genre.create!(name: "Biography")

# Seed: Books
star_wars = Book.create!(name: 'A new Home: Star Wars', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore...', author: 'George Lucas', genre_id: scifi.id)
harry_potter = Book.create!(name: 'Harry Potter', description: '', author: 'J. K. Rowling', genre_id: fiction.id)
war_art = Book.create!(name: 'Arte da Guerra', description: 'Lorem ipsum dolor sit amet, sed do eiusmod tempor incididunt ut labore...', author: 'Sun Tzu', genre_id: no_fiction.id)
diary_of_wimpy_kid = Book.create!(name: 'Diary of a Wimpy Kid', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore...', author: 'Jeff Kinney', genre_id: comedy.id)
pride_and_prejudice = Book.create!(name: 'Pride and Prejudice', description: '', author: 'Jane Austen', genre_id: romance.id)
pele = Book.create!(name: 'Pelé: a auto biografia', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', author: 'Pelé', genre_id: biography.id)
hobbit = Book.create!(name: 'Hobbit', description: '', author: 'J. R. R. Tolkien', genre_id: fiction.id)
first_blood = Book.create!(name: 'First blood', description: 'Lorem ipsum dolor sit amet.', author: 'David Morrell', genre_id: action.id)
