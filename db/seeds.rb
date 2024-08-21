require 'open-uri'
require 'nokogiri'
require 'faker'

Poll.destroy_all
Plan.destroy_all
Bar.destroy_all
User.destroy_all

bar = Bar.create!(
  name: "Craft Beer Bar Monkey Wrench",
  address: "〒214-0032 神奈川県川崎市多摩区枡形3-5-4 1F",
  mood: "Casual",
  price: "$$",
  smoking: true,
  food: true,
  alcohol: "Craft Beer",
  longitude: 35.61685821763033,
  latitude: 139.5605306023052,
  url: "https://tabelog.com/kanagawa/A1405/A140506/14075022/"
)

photo_url = "https://lh3.googleusercontent.com/p/AF1QipPz8eqe8ybBtXmygxakkO-eYg3rEgA19S7Ihgqt=s1360-w1360-h1020"
  file = URI.open(photo_url)
  bar.photo.attach(io: file, filename: 'user1.png', content_type: 'image/png')
  bar.save

bar = Bar.create!(
  name: "Sputnik",
  address: "2-18-6,Ebisunishi,Shibuya,Tokyo,Japan",
  mood: "Casual",
  price: "$$",
  smoking: false,
  food: true,
  alcohol: "Cocktail",
  longitude: 35.65142638822411,
  latitude: 139.7048060202411,
  url: "https://www.instagram.com/hi_sputnik/"
)

photo_url = "https://lh3.googleusercontent.com/p/AF1QipPjOggnwKN0zVZIISLNx7rByM7VsCuUsPUrZbck=s1360-w1360-h1020"
  file = URI.open(photo_url)
  bar.photo.attach(io: file, filename: 'user2.png', content_type: 'image/png')
  bar.save

bar = Bar.create!(
  name: "The Music Bar - Cave Shibuya",
  address: "〒150-0002 Tokyo, Shibuya City, Shibuya, 1 Chome-15-12 LAIDOUT SHIBUYA B1F",
  mood: "Music",
  price: "$$",
  smoking: false,
  food: true,
  alcohol: "Anything",
  longitude: 35.66100916882782,
  latitude: 139.70295191821114,
  url: "https://the-musicbar.jp/wp/wp-content/uploads/2023/10/FOOD_MusicBar_20230929_FIX_ol.pdf"
)

photo_url = "https://lh3.googleusercontent.com/p/AF1QipOe1bx7C9PLI-0xPc4L5hjc0mNyst7bpwCEfA8N=s1360-w1360-h1020"
  file = URI.open(photo_url)
  bar.photo.attach(io: file, filename: 'user3.png', content_type: 'image/png')
  bar.save

bar = Bar.create!(
  name: "DJ Bar Bridge Shibuya",
  address: "〒150-0002 東京都渋谷区渋谷１丁目２５−６ 渋谷パークサイド共同ビル10F",
  mood: "Dance",
  price: "$",
  smoking: true,
  food: false,
  alcohol: "Anything",
  longitude: 35.65970776640392,
  latitude: 139.70148363996984,
  url: "https://djbar-bridge.com/"
)

photo_url = "https://lh3.googleusercontent.com/p/AF1QipPEnKA9-rtKSuidizmad6_MLKZ6t5djNm7yQcTx=s1360-w1360-h1020"
  file = URI.open(photo_url)
  bar.photo.attach(io: file, filename: 'user4.png', content_type: 'image/png')
  bar.save

bar = Bar.create!(
  name: "Muscle Girls",
  address: "〒171-0014 Tokyo, Toshima City, Ikebukuro, 2 Chome-41-2, Hayama Bld, B1F",
  mood: "Theme",
  price: "$$",
  smoking: false,
  food: true,
  alcohol: "Anything",
  longitude: 35.73350037074206,
  latitude: 139.70974154845496,
  url: "https://musclegirls.jimdofree.com/"
)

photo_url = "https://thesmartlocal.jp/wp-content/uploads/2023/03/muscle-girls-3-1024x768.jpg"
  file = URI.open(photo_url)
  bar.photo.attach(io: file, filename: 'user5.png', content_type: 'image/png')
  bar.save

bar = Bar.create!(
  name: "Sky Lounge Stellar Garden",
  address: "〒105-0011 Tokyo, Minato City, Shibakoen, 4 Chome-8-1 33F",
  mood: "Luxury",
  price: "$$$",
  smoking: false,
  food: true,
  alcohol: "Cocktail",
  longitude: 35.65591424418253,
  latitude: 139.7483423020964,
  url: "https://www.princehotels.co.jp/parktower/restaurant/stellargarden/"
)

photo_url = "https://www.princehotels.com/parktower/wp-content/uploads/sites/14/2019/07/res-stellar-platinum.jpg.jpg"
  file = URI.open(photo_url)
  bar.photo.attach(io: file, filename: 'user6.png', content_type: 'image/png')
  bar.save

bar = Bar.create!(
  name: "WOMB",
  address: "2-16 Maruyamacho, Shibuya City, Tokyo 150-0044",
  mood: "Dance",
  price: "$$$",
  smoking: true,
  food: false,
  alcohol: "Anything",
  longitude: 35.66355578251508,
  latitude: 139.69459813396182,
  url: "https://www.womb.co.jp/reservation/"
)

photo_url = "https://media.timeout.com/images/106017162/image.jpg"
  file = URI.open(photo_url)
  bar.photo.attach(io: file, filename: 'user7.png', content_type: 'image/png')
  bar.save

bar = Bar.create!(
  name: "Pintology Craft Beer & Whisky",
  address: "〒151-0073 東京都渋谷区笹塚１丁目３３−１０ 香樹ハイツ 101",
  mood: "Casual",
  price: "$$",
  smoking: false,
  food: false,
  alcohol: "Craft Beer",
  longitude: 35.67272189658194,
  latitude: 139.66581370606173,
  url: "https://www.instagram.com/pintologytokyo/"
)

photo_url = "https://lh3.googleusercontent.com/p/AF1QipNtGDbqngmYCjWZjsq0UP69Q0GHKb4rgKz5F4Rp=s1360-w1360-h1020"
  file = URI.open(photo_url)
  bar.photo.attach(io: file, filename: 'user8.png', content_type: 'image/png')
  bar.save

bar = Bar.create!(
  name: "Rooftop Bar Andaz Tokyo Toranomon Hills",
  address: "〒105-0001 Tokyo, Minato City, Toranomon, 1 Chome−23−4 ヒルズ 森タワ アンダーズ 東京52F 虎ノ門ヒルズ森タワー",
  mood: "Luxury",
  price: "$$$",
  smoking: false,
  food: true,
  alcohol: "Cocktails",
  longitude: 35.66718854657908,
  latitude: 139.7494569872622,
  url: "https://www.andaztokyo.jp/restaurants/jp/rooftop-bar/?utm_source=gmb&utm_medium=organic#menu"
)

photo_url = "https://lh3.googleusercontent.com/p/AF1QipPEnKA9-rtKSuidizmad6_MLKZ6t5djNm7yQcTx=s1360-w1360-h1020"
  file = URI.open(photo_url)
  bar.photo.attach(io: file, filename: 'user9.png', content_type: 'image/png')
  bar.save

  bar = Bar.create!(
  name: "Magic Bar CUORE",
  address: "〒160-0021 Tokyo, Shinjuku City, Kabukicho, 1 Chome−2−13 新光ビル 5階",
  mood: "Theme",
  price: "$$$",
  smoking: false,
  food: false,
  alcohol: "Anything",
  longitude: 35.69863637921583,
  latitude: 139.70459031687258,
  url: "https://cuore.bar/"
)

photo_url = "https://rimage.gnst.jp/rest/img/bcx9dk2w0000/s_000n.jpg?dt=1609101354"
  file = URI.open(photo_url)
  bar.photo.attach(io: file, filename: 'user10.png', content_type: 'image/png')
  bar.save

5.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: '123123'
  )
  gender = 'all'
  age = '26-35'
  ethnicity = 'all'
  url = "https://this-person-does-not-exist.com/new?gender=#{gender}&age=#{age}&etnic=#{ethnicity}"
  json = URI.open(url).string
  src = JSON.parse(json)['src']
  p photo_url = "https://this-person-does-not-exist.com#{src}"
  file = URI.open(photo_url)
  user.photo.attach(io: file, filename: 'user.png', content_type: 'image/png')
  user.save
end

plan = Plan.create!(
  date_time: DateTime.now,
  deadline: DateTime.now + 5.hours,
  location: "Example Location 1",
  user: User.first,
  bar: Bar.first,
  status: "active"
)

plans = Plan.create!(
  date_time: DateTime.now,
  deadline: DateTime.now + 5.hours,
  location: "Example Location 2",
  user: User.last,
  bar: Bar.last,
  status: "pending"
)

User.all.each do |user|
  Poll.create!(
    accepted: [true, false].sample,
    mood: ["Casual", "Cozy", "Music", "Dance", "Luxury", "Theme"].sample,
    price: ["$", "$$", "$$$"].sample,
    smoking: [true, false].sample,
    food: [true, false].sample,
    alcohol: ["Craft Beer", "Cocktail", "Whiskey", "Anything"].sample,
    user: user,
    plan: [plan, plans].sample
  )
end
