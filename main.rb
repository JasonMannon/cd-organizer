require './lib/cd_library'
require './lib/cd'

def begin_library
  library = Cd_library.new()
  main_menu(library)
end

def main_menu(library)
  puts "Enter 'A' to add a new cd"
  puts "Enter 'V' to view all of your cd's"
  puts "Enter 'S' to search for a cd"
  puts "Enter 'L' to list all artists"
  puts "Enter 'X' to exit"
  user_input = gets.chomp.upcase
  case user_input
  when 'A'
    add_cd(library)
  when 'V'
    view_cds(library)
  when 'S'
    search_cds(library)
  when 'L'
    view_artists(library)
  when 'X'
    puts "peace"
  else
    main_menu(library)
  end
end

def add_cd(library)
  puts "Enter a Artist name"
  new_artist = gets.chomp
  puts "Enter a Album name"
  new_album = gets.chomp
  library.add_cd(new_artist, new_album)
  puts "Cd added"
  main_menu(library)
end

def view_cds(library)
  library.all.each do |cd|
    puts "#{cd.artist}: #{cd.album}"
  end
  main_menu(library)
end

def view_artists(library)
  puts "Type in a artist to view their albums"
  library.all.each do |cd|
    puts "#{cd.artist}"
  end
  user_artist = gets.chomp
  h = library.search_artist(user_artist)
  h.each do |cd|
    puts "#{cd.album}"
  end

  main_menu(library)
end

def search_cds(library)
  puts "Type in an artist to search for"
  current_search = gets.chomp
  cds = library.search_artist(current_search)
  cds.each do |cd|
    puts "#{cd.artist}:  #{cd.album}"
  end
  main_menu(library)
end

begin_library
