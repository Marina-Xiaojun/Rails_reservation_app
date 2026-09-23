# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Room.delete_all

#  東京ホテル一覧
Room.create!(
  name: "ホテル大倉",
  address: "東京都港区",
  description: "2026年リニューアルオープンいたしました。ごゆっくりお過ごしください。",
  price: 30000,
  rating: 5
)

Room.create!(
  name: "OMA5五反田by星空リゾート",
  address: "東京都品川区",
  description: "五反田駅から近く、快適にお過ごしいただけるホテルです。",
  price: 25000,
  rating: 5
)

Room.create!(
  name: "ホテル恵比寿エンペラー",
  address: "東京都渋谷区",
  description: "恵比寿の街を楽しみながら、ゆっくりお過ごしいただけます。サウナルーム、メゾネットルーム有",
  price: 8800,
  rating: 4
)

#  大阪ホテル一覧
Room.create!(
  name: "ホテル鶏飯 ユニ婆猿・タワー",
  address: "大阪府大阪市此花区",
  description: "テーマパークに近い。最高のおもてなし",
  price: 22608,
  rating: 5
)

Room.create!(
  name: "難破シーホテル",
  address: "大阪府大阪市中央区",
  description: "大阪観光を楽しむのに便利なホテルです。",
  price: 16000,
  rating: 3
)

Room.create!(
  name: "大阪リバーサイドホテル",
  address: "大阪府大阪市北区",
  description: "川沿いの落ち着いた雰囲気のホテルです。ゆっくりとお過ごしいただけます。",
  price: 12000,
  rating: 3
)

# 京都ホテル一覧

Room.create!(
  name: "京都嵐山ホテル",
  address: "京都府京都市右京区",
  description: "嵐山の自然を感じながら、ゆっくりお過ごしいただけるホテルです。",
  price: 18000,
  rating: 5
)

Room.create!(
  name: "京都川床ホテル",
  address: "京都府京都市左京区",
  description: "貴船川の川床料亭に近いホテルです。",
  price: 15000,
  rating: 4
)

Room.create!(
  name: "落ち武者ホテル",
  address: "京都府京都市東山区",
  description: "落ち武者が出てくる京都らしいホテルです。",
  price: 22000,
  rating: 5
)


# 札幌ホテル一覧

Room.create!(
  name: "札幌グランドホテル",
  address: "北海道札幌市中央区",
  description: "札幌の中心部にあり、観光やショッピングに便利なホテルです。",
  price: 16000,
  rating: 4
)

Room.create!(
  name: "大通公園ホテル",
  address: "北海道札幌市中央区",
  description: "大通公園に近く、札幌の街を楽しむのに便利なホテルです。",
  price: 13000,
  rating: 3
)

Room.create!(
  name: "レッズすすき野",
  address: "北海道札幌市中央区",
  description: "歓楽街へアクセス良好です。",
  price: 6000,
  rating: 3
)
