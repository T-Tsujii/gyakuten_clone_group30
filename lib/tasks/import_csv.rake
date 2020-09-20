require "import"
# rake import_csv:aws_texts 実際に入力するコマンド
namespace :import_csv do
  desc "aws_text_data.csv を aws_texts テーブルにインポート"

  task aws_texts: :environment do
    list = Import.csv_data(path: "db/csv_data/aws_text_data.csv")
    AwsText.create!(list)
    puts "インポート完了!!"
  end
  
  #rake import_csv:movies
  desc "movie_data.csv をインポートするタスク"

  task movies: :environment do
    list = Import.csv_data(path: "db/csv_data/movie_data.csv")
    Movie.create!(list)
    puts "インポート完了!!"
  end

end
