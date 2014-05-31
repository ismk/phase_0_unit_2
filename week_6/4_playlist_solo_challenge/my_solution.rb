# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself, with: ].


# Pseudocode
# DEFINE CLASS Song
	# METHOD initialize(2 PARAMETERS: <title>(String Value), <artist>(String Value))
	# initialize instance variables title
	# initialize instance variables artist
	# END METHOD
	# METHOD title
	# 	RETURN instance title
	# END METHOD
	# METHOD artist
	# 	RETURN instance artist
	# END METHOD
	# METHOD play
	# 	print "#{@title} by #{@artist} is playing" 
	# END METHOD

# END CLASS

# DEFINE CLASS Playlist INHERITS CLASS Song
# 	METHOD initialize('n' NUMBER OF PARAMETER(s): <list>(Object Type))
# 	initialize instance variables title
# 	initialize instance variables artist
# 	END METHOD
# 	METHOD title
# 		RETURN instance title
# 	END METHOD
# 	METHOD artist
# 		RETURN instance artist
# 	END METHOD
# 	METHOD play
# 		print "#{@title} by #{@artist} is playing" 
# 	END METHOD

# END CLASS



# Initial Solution
# class Song
# 	def initialize(title, artist)
# 		@title = title
# 		@artist = artist
# 	end
# 	def title
# 		@title
# 	end
# 	def artist
# 		@artist
# 	end
# 	def play
# 		p "#{@title} by #{@artist} is playing"
# 	end
# end

# class Playlist < Song
# 	def initialize(*list)
# 		@play_list = []
# 		list.each{ |song|
# 			@play_list << song
# 		}
# 	end

# 	def add(*songs_to_add)
# 		songs_to_add.each {|song|
# 			@play_list << song
# 		}
# 	end

# 	def num_of_tracks
# 		@play_list.count
# 	end


# 	def remove(song_to_remove)
# 		@play_list.delete(song_to_remove)
# 	end

# 	def includes?(check_song)
# 		@play_list.include?(check_song)
# 	end

# 	def play_all
# 		@play_list.each{ |song|
# 			song.play
# 		}
# 	end

# 	def display
# 		@play_list.each {|song|
# 			p "#{song.title} by #{song.artist}"
# 		}
# 	end
# end


# Refactored Solution


class Song
	attr_reader :title, :artist

	def initialize(title, artist)
		@title = title
		@artist = artist
	end
	def play
		p "#{@title} by #{@artist} is playing"
	end
end

class Playlist < Song
	def initialize(*list)
		@list = list
	end

	def add(*songs_to_add)
		songs_to_add.each {|song|
		@list << song
	}
	end

	def num_of_tracks
		@list.count
	end


	def remove(song_to_remove)
		@list.delete(song_to_remove)
	end

	def includes?(check_song)
		@list.include?(check_song)
	end

	def play_all
		@list.each{ |song|
			song.play
		}
	end

	def display
		@list.each {|song|
			p "#{song.title} by #{song.artist}"
		}
	end

end






# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection
# I learned a lot from this challenge especially how to inherit classes
# in ruby, at first I had implemented a rudimentary display and play method
# in the playlist class but after reading a bit more about inheritance 
# in Ruby I figured out how I can implement the previous class methods in 
# the Playlist class.

# I also learned a lot about the attribute reader, attribute writer, and 
# attribute accessor and how they work, using the attributes definitely minimizes
# the lines to write.
