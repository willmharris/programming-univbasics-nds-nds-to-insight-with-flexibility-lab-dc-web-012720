# Provided, don't edit
require 'directors_database'

# A method we're giving you. This "flattens"  Arrays of Arrays so: [[1,2],
# [3,4,5], [6]] => [1,2,3,4,5,6].

def flatten_a_o_a(aoa)
  result = []
  i = 0

  while i < aoa.length do
    k = 0
    while k < aoa[i].length do
      result << aoa[i][k]
      k += 1
    end
    i += 1
  end

  result
end

def movie_with_director_name(director_name, movie_data)
  { 
    :title => movie_data[:title],
    :worldwide_gross => movie_data[:worldwide_gross],
    :release_year => movie_data[:release_year],
    :studio => movie_data[:studio],
    :director_name => director_name
  }
end
# transforms the data for an individual movie to include the director name

# Your code after this point ############################################

def movies_with_director_key(name, movies_collection)
  final_array1 = []
  counter1 = 0 
    while counter1 < movies_collection.length do
      current_movie = movies_collection[counter1] 
      final_array1[counter1] = movie_with_director_name(name, current_movie)
      counter1 += 1 
    end 
  final_array1
end

def gross_per_studio(collection)
  final_hash = {} 
  counter2 = 0 
    while counter2 < collection.length do 
      current_studio = collection[counter2][]
      if final_hash
      counter2 += 1 
    end 
  final_hash 
end

  # INPUT: collection: Array of Hashes where each Hash where each Hash represents a movie
  # RETURN: Hash whose keys are the studio names and whose values are the sum total of all the worldwide_gross numbers for every movie in the input Hash
  # example_hash = {:universal => 1220202020202, :columbia => 923804298347983}
  # for each movie 
    # check if its studio is already a key 
      # if it is not a key, make it a key 
      # if it is a key, use that key 
    # add the movie's earnings to that key's value 

def movies_with_directors_set(source)
  # GOAL: For each director, find their :movies Array and stick it in a new Array
  #
  # INPUT:
  # * source: An Array of Hashes containing director information including
  # :name and :movies
  #
  # RETURN:
  #
  # Array of Arrays containing all of a director's movies. Each movie will need
  # to have a :director_name key added to it.
end

# ----------------    End of Your Code Region --------------------
# Don't edit the following code! Make the methods above work with this method
# call code. You'll have to "see-saw" to get this to work!

def studios_totals(nds)
  a_o_a_movies_with_director_names = movies_with_directors_set(nds)
  movies_with_director_names = flatten_a_o_a(a_o_a_movies_with_director_names)
  return gross_per_studio(movies_with_director_names)
end
