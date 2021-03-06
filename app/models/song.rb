class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    if !Artist.all.find_by(name: "Drake")
      drake = Artist.new({name: "Drake"})
      self.artist = drake
    else 
      self.artist = Artist.all.find_by(name: "Drake")
    end
  end
end