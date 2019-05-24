def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title,books.year FROM books
  JOIN series ON series.id = books.series_id
  WHERE series.id = 1
  ORDER BY books.year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name,motto FROM characters ORDER BY length(motto) DESC LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species,COUNT(species) FROM characters
  GROUP BY species ORDER BY COUNT(species) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name,subgenres.name FROM series
  JOIN authors ON authors.id = series.author_id
  JOIN subgenres ON subgenres.id = series.subgenre_id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series
  JOIN characters ON series.id = characters.series_id
  GROUP BY species,series.id
  HAVING species='human'
  ORDER BY COUNT(species) DESC LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name,COUNT(books.id) FROM character_books
  JOIN characters ON characters.id = character_books.character_id
  JOIN books ON books.id = character_books.book_id
  GROUP BY characters.id
  ORDER BY COUNT(books.id) DESC, characters.name ASC"
end
