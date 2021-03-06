EMAIL = 'test@example.com'
PASSWORD = 'password'
ADMIN_EMAIL = 'admin@example.com'
ADMIN_PASSWORD = 'password'

#テストユーザ存在しない場合のみ作成
User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  puts 'ユーザの初期データインポートに成功しました。'
end

AdminUser.find_or_create_by!(email: ADMIN_EMAIL) do |user|
  user.password = ADMIN_PASSWORD
  puts '管理者ユーザの初期データインポートに成功しました。'
end
