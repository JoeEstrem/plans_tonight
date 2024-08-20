# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Bar.create!(
  name: "Craft Beer Bar Monkey Wrench",
  address: "〒214-0032 神奈川県川崎市多摩区枡形3-5-4 1F",
  image: "https://lh3.googleusercontent.com/p/AF1QipPz8eqe8ybBtXmygxakkO-eYg3rEgA19S7Ihgqt=s1360-w1360-h1020",
  mood: ["Casual"],
  price: "$$",
  smoking: true,
  food: true,
  alcohol: ["Craft Beer"],
  longitude: 35.61685821763033,
  latitude: 139.5605306023052,
  url: "https://tabelog.com/kanagawa/A1405/A140506/14075022/"
)

Bar.create!(
  name: "Sputnik",
  address: "2-18-6,Ebisunishi,Shibuya,Tokyo,Japan",
  image: "https://lh3.googleusercontent.com/p/AF1QipPjOggnwKN0zVZIISLNx7rByM7VsCuUsPUrZbck=s1360-w1360-h1020",
  mood: ["Casual", "Cozy"],
  price: "$$",
  smoking: false,
  food: true,
  alcohol: ["Cocktail"],
  longitude: 35.65142638822411,
  latitude: 139.7048060202411,
  url: "https://www.instagram.com/hi_sputnik/"
)

Bar.create!(
  name: "The Music Bar - Cave Shibuya",
  address: "〒150-0002 Tokyo, Shibuya City, Shibuya, 1 Chome-15-12 LAIDOUT SHIBUYA B1F",
  image: "https://lh3.googleusercontent.com/p/AF1QipOe1bx7C9PLI-0xPc4L5hjc0mNyst7bpwCEfA8N=s1360-w1360-h1020",
  mood: ["Music", "Casual"],
  price: "$$",
  smoking: false,
  food: true,
  alcohol: ["Anything"],
  longitude: 35.66100916882782,
  latitude: 139.70295191821114,
  url: "https://the-musicbar.jp/wp/wp-content/uploads/2023/10/FOOD_MusicBar_20230929_FIX_ol.pdf"
)

Bar.create!(
  name: "DJ Bar Bridge Shibuya",
  address: "〒150-0002 東京都渋谷区渋谷１丁目２５−６ 渋谷パークサイド共同ビル10F",
  image: "https://lh3.googleusercontent.com/p/AF1QipPEnKA9-rtKSuidizmad6_MLKZ6t5djNm7yQcTx=s1360-w1360-h1020",
  mood: ["Dance"],
  price: "$",
  smoking: true,
  food: false,
  alcohol: ["Anything"],
  longitude: 35.65970776640392,
  latitude: 139.70148363996984,
  url: "https://djbar-bridge.com/"
)

Bar.create!(
  name: "Muscle Girls",
  address: "〒171-0014 Tokyo, Toshima City, Ikebukuro, 2 Chome-41-2, Hayama Bld, B1F",
  image: "https://thesmartlocal.jp/wp-content/uploads/2023/03/muscle-girls-3-1024x768.jpg",
  mood: ["Theme"],
  price: "$$",
  smoking: false,
  food: true,
  alcohol: ["Anything"],
  longitude: 35.73350037074206,
  latitude: 139.70974154845496,
  url: "https://musclegirls.jimdofree.com/"
)

Bar.create!(
  name: "Sky Lounge Stellar Garden",
  address: "〒105-0011 Tokyo, Minato City, Shibakoen, 4 Chome-8-1 33F",
  image: "https://www.princehotels.com/parktower/wp-content/uploads/sites/14/2019/07/res-stellar-platinum.jpg.jpg",
  mood: ["Luxury"],
  price: "$$$",
  smoking: false,
  food: true,
  alcohol: ["Cocktail"],
  longitude: 35.65591424418253,
  latitude: 139.7483423020964,
  url: "https://www.princehotels.co.jp/parktower/restaurant/stellargarden/"
)

Bar.create!(
  name: "WOMB",
  address: "2-16 Maruyamacho, Shibuya City, Tokyo 150-0044",
  image: "https://static.ra.co/images/clubs/lg/mainfloor_rx6a4395.jpg?dateUpdated=1486450735843",
  mood: ["Dance"],
  price: "$$$",
  smoking: true,
  food: false,
  alcohol: ["Anything"],
  longitude: 35.66355578251508,
  latitude: 139.69459813396182,
  url: "https://www.womb.co.jp/reservation/"
)

Bar.create!(
  name: "Pintology Craft Beer & Whisky",
  address: "〒151-0073 東京都渋谷区笹塚１丁目３３−１０ 香樹ハイツ 101",
  image: "https://lh3.googleusercontent.com/p/AF1QipNtGDbqngmYCjWZjsq0UP69Q0GHKb4rgKz5F4Rp=s1360-w1360-h1020",
  mood: ["Casual"],
  price: "$$",
  smoking: false,
  food: false,
  alcohol: ["Craft Beer", "Whiskey"],
  longitude: 35.67272189658194,
  latitude: 139.66581370606173,
  url: "https://www.instagram.com/pintologytokyo/"
)

Bar.create!(
  name: "Rooftop Bar Andaz Tokyo Toranomon Hills",
  address: "〒105-0001 Tokyo, Minato City, Toranomon, 1 Chome−23−4 ヒルズ 森タワ アンダーズ 東京52F 虎ノ門ヒルズ森タワー",
  image: "https://lh3.googleusercontent.com/p/AF1QipPEnKA9-rtKSuidizmad6_MLKZ6t5djNm7yQcTx=s1360-w1360-h1020",
  mood: ["Luxury"],
  price: "$$$",
  smoking: false,
  food: true,
  alcohol: ["Cocktails"],
  longitude: 35.66718854657908,
  latitude: 139.7494569872622,
  url: "https://www.andaztokyo.jp/restaurants/jp/rooftop-bar/?utm_source=gmb&utm_medium=organic#menu"
)

Bar.create!(
  name: "Magic Bar CUORE",
  address: "〒160-0021 Tokyo, Shinjuku City, Kabukicho, 1 Chome−2−13 新光ビル 5階",
  image: "https://rimage.gnst.jp/rest/img/bcx9dk2w0000/s_000n.jpg?dt=1609101354",
  mood: ["Theme"],
  price: "$$$",
  smoking: false,
  food: false,
  alcohol: ["Anything"],
  longitude: 35.69863637921583,
  latitude: 139.70459031687258,
  url: "https://cuore.bar/"
)
