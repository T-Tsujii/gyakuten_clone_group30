require "import"
# rake import_csv:aws_texts 実際に入力するコマンド
namespace :import_csv do
  desc "aws_text_data.csv を aws_texts テーブルにインポート"

  task aws_texts: :environment do
    list = Import.csv_data(path: "db/csv_data/aws_text_data.csv")
    begin
      AwsText.create!(list)
      puts "インポート完了!!"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗：UnknownAttributeError"
    end
  end
end
