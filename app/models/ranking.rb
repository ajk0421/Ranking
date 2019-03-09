class Ranking < ApplicationRecord
  def self.rank_artist
    artists = Ranking.select("artist_name")

    artist_list = artists.uniq{|artist| artist.artist_name}
  end
end
