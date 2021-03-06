class MP3Importer
  attr_accessor :path

  def initialize(path)
    self.path = path
  end

  def files
    Dir.glob("#{self.path}/*mp3").collect{|file| file.gsub("#{self.path}/", "")}
  end

  def import
    files.each{|file| Song.new_by_filename(file)}
  end
end
