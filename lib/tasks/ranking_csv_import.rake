require 'csv'

namespace :ranking_csv_import do
  desc "ranking_csvデータをインポート"


  task rankings: :environment do
    Ranking.delete_all

    path = File.join Rails.root, "db/csv_data/ranking_csv_data.csv"

    list = []
    CSV.foreach(path, headers: true) do |row|
      list << {
          title: row["title"],
          artist_name: row["artist_name"],
      }
    end
    puts "インポート開始"
    begin
      Ranking.create!(list)
      puts "インポート完了"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポート失敗：UnknownAttributeError"
    end
  end
end
