require 'pry'

class MP3Importer

  attr_accessor :path, :file_names

  def initialize(path)
    @path = path
    @file_names = []
  end

  def files
    self.file_names = Dir.glob("*.mp3", base: self.path).select {|f| !File.directory? f}
    binding.pry
  end

  def import
    self.files.collect do |x|
      Song.new_by_filename(x)
    end
  end

end
