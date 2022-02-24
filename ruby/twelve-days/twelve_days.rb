class TwelveDays
  def self.song
    gifts = {
      'first' => 'a Partridge in a Pear Tree',
      'second' => 'two Turtle Doves',
      'third' => 'three French Hens',
      'fourth' => 'four Calling Birds',
      'fifth' => 'five Gold Rings',
      'sixth' => 'six Geese-a-Laying',
      'seventh' => 'seven Swans-a-Swimming',
      'eighth' => 'eight Maids-a-Milking',
      'ninth' => 'nine Ladies Dancing',
      'tenth' => 'ten Lords-a-Leaping',
      'eleventh' => 'eleven Pipers Piping',
      'twelfth' => 'twelve Drummers Drumming'
    }
    song = []

    12.times do |i|
      keys = gifts.keys[0, i + 1].reverse
      line = "On the #{keys[0]} day of Christmas my true love gave to me:"
      keys.each do |key|
        if keys.length > 1
          line += " #{gifts[key]}," unless key == keys.last
          line += " and #{gifts[key]}.\n" if key == keys.last
        else
          line += " #{gifts[key]}.\n"
        end
      end
      song << line
    end
    song.join("\n")
  end
end
