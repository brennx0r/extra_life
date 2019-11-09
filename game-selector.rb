filename = "game_list.txt"

# read in the text file and save values as an array
def arraycreate(filename)
	array = IO.readlines(filename)
	selector(array, filename)
end

# select the tsumtsum using sample method
def selector(array, filename)
	selected = array.sample
	modifyfile(selected, filename)
end

# delete the selected item from the text file
def modifyfile(selected, filename)
	filetext = File.read(filename) 
	new_contents = filetext.gsub(selected, "" )
	File.open(filename, "w") { |file| file.puts new_contents }
	puts selected.strip+" has been selected! Enjoy your game."
end

arraycreate(filename)