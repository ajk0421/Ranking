class RankingsController < ApplicationController
  def index
    @rankings = Ranking.all
    @artists = Ranking.rank_artist
  end
end
