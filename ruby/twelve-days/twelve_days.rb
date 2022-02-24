class TwelveDays
  def self.song
    file = File.open("song.txt")
    file.read
  end
end
