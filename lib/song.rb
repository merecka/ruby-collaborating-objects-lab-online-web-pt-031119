require 'pry'

class Song

  attr_accessor :name, :artist, :file_name

  def initialize(name)
    @name = name
  end

  def new_by_filename(file_name)
    song_name = MP3Importer.files
    binding.pry

  end

end
