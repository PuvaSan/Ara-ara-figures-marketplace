require "json"
require "open-uri"

Review.destroy_all
Order.destroy_all
Figure.destroy_all
User.destroy_all
Anime.destroy_all

User.create!([{
  username: "brianUchiha",
  first_name: "Brian",
  last_name: "Inphouva",
  email: "brianisloco@hotmail.com",
  password: "123456",
  bio: "Hello, konichiwa. Lorem ipsum dolor sit amet, ad nam omnes mediocritatem concludaturque, in ignota electram persequeris eos. Eirmod consulatu qui ei, nam insolens conclusionemque in, sit ad malis delenit iudicabit. An alterum corpora.",
  address: "Tokyo"
},
{
  username: "AyyyaSayonara",
  first_name: "Aya",
  last_name: "Fujita",
  email: "Aya0123@gmail.com",
  password: "secret",
  bio: "Hiyyah! Simul labores facilis ius ea. Te mel quem audiam labores, has cu debet homero vivendum. At nec admodum recteque, cum aperiam maluisset rationibus ne.",
  address: "Gunma"
},
{
  username: "HabiOppaiKing",
  first_name: "Habi",
  last_name: "Ruiz",
  email: "Javierisdaman@gmail.com",
  password: "oppai101",
  bio: "Sed massa felis, ultrices sed orci in, tincidunt dignissim risus. Nullam hendrerit venenatis magna eu mattis. Nullam pharetra dui id mauris luctus, in fermentum mi finibus. Curabitur dignissim dui est, non molestie erat pellentesque quis.",
  address: "Kawasaki"
},
{
  username: "SuperSaiyanIkumi",
  first_name: "Ikumi",
  last_name: "Ojiro",
  email: "IkumiOjiro2017@gmail.com",
  password: "mybirthday01",
  bio: "Nunc venenatis consectetur urna, id posuere urna tempor vel. Morbi venenatis ex arcu, vitae fermentum neque aliquam et. Pellentesque sodales consequat lorem.",
  address: "Tokyo"
}])

puts "created #{User.count} users"

animes = ["Naruto", "Bleach", "One Piece", "Spy Family", "Chainsawman", "Jujutsu Kaisen"]

animes.each do |a|
  Anime.create!({
    title: a
  })
end

puts "created #{Anime.count} animes"

figures = [{
  user: User.first,
  name: "Itachi Uchiha KRGNPLE",
  description: "KRGNPLE Toy Model Decoration Cartoon Figure Action Figure Naruto Teki Uchiha Itachi (Design: Itachi Uchiha - Type A, 1 Piece)",
  price: 5999,
  anime: Anime.first,
  pick_up: false,
  delivery: false,
  image: "https://res.cloudinary.com/dzfjdlafz/image/upload/v1721218502/oxolzetqz5gldhwez6tp.jpg"
  },
  {
  user: User.first,
  name: "Gear 5 Luffy",
  description: "Banpresto One Piece DXF THE GRANDLINE SERIES EXTRA MONKEY D. LUFFY",
  price: 4500,
  anime: Anime.all[2],
  pick_up: false,
  delivery: false,
  image: "https://res.cloudinary.com/dzfjdlafz/image/upload/v1721218506/tuceozpptymsdtq1wzg2.jpg"
  },
  {
  user: User.first,
  name: "Nami-Swan :heart:",
  description: "Standing Bikini Girl Series Nami Girl Figure Garage Kit Scene Pedestal Figure Collection Grade Handmade Painted Finished Product Made by POLYSTONE GK Craft Collection Assembly Statue Ornament Model Toys [Parallel Import]",
  price: 4500,
  anime: Anime.all[2],
  pick_up: false,
  delivery: false,
  image: "https://res.cloudinary.com/dzfjdlafz/image/upload/v1721218350/dldpfnoptkcri2hnk5gn.jpg"
  },
  {
  user: User.all[1],
  name: "Spy Family- Anya Forger & Bond Forger",
  description: "Figuarts Zero SPY x FAMILY Anya Forger & Bond Forger - Missho Konpurito! Approx. 3.9 inches (100 mm), PVC & ABS, Painted Finished Figure",
  price: 6000,
  anime: Anime.all[3],
  pick_up: false,
  delivery: false,
  image: "https://res.cloudinary.com/dzfjdlafz/image/upload/v1721218352/wzmskhi2lyvgkehg80x0.jpg"
  },
  {
  user: User.all[1],
  name: "Chainsawman",
  description: "AAGWW Chainsawman 10.2 inches (26 cm), Pre-painted Action Figure, Figurine, Figurine, Collection",
  price: 5999,
  anime: Anime.all[4],
  pick_up: false,
  delivery: false,
  image: "https://res.cloudinary.com/dzfjdlafz/image/upload/v1721218353/pfsgzne0wxj8natjgmav.jpg"
  },
  {
  user: User.all[1],
  name: "Naruto - Naruto Fukai Shuriken",
  description: "Figuarts Zero Naruto Shippuden (Super Fierce Battle), Naruto Uzumaki - Senpo & Fukai Shuriken, Approx. 9.4 inches (240 mm), PVC & ABS, Painted Finished",
  price: 4500,
  anime: Anime.first,
  pick_up: false,
  delivery: false,
  image: "https://res.cloudinary.com/dzfjdlafz/image/upload/v1721218355/lfrmk5xxoif092skatho.jpg"
  },
  {
  user: User.all[2],
  name: "Bleach- TYBW Fullbring Bankai Ichigo",
  description: "BANDAI SPIRITS Figuarts Zero Bleach Millennial Blood War: Kokutan Ichigo Kurosaki - Thousand Years Blood War: Approx. 8.7 inches (220 mm), PVC & ABS Pre-painted Complete Figure",
  price: 9500,
  anime: Anime.all[1],
  pick_up: false,
  delivery: false,
  image: "https://res.cloudinary.com/dzfjdlafz/image/upload/v1721218356/dzk3sbj2b2lfaotqodqy.jpg"
  },
  {
  user: User.all[2],
  name: "Bleach- Orihime Inoue",
  description: "Banpresto Bleach Relax Time Orihime Inoue",
  price: 2000,
  anime: Anime.all[1],
  pick_up: false,
  delivery: false,
  image: "https://res.cloudinary.com/dzfjdlafz/image/upload/v1721218358/osfitn6f0wy9fw2rbxpf.jpg"
  },
  {
  user: User.all[2],
  name: "JJK- Toji",
  description: "King of Artist The Tokyo Fushiguro",
  price: 3000,
  anime: Anime.all[5],
  pick_up: false,
  delivery: false,
  image: "https://res.cloudinary.com/dzfjdlafz/image/upload/v1721218359/tgutkgqjgcjxrs2efnjd.jpg"
  },
  {
  user: User.all[3],
  name: "One Piece_ Nami Bikini Beer ",
  description: "Portrait.Of.Pirates One Piece “LIMITED EDITION” NAMI Ver.BB_SP",
  price: 42761,
  anime: Anime.all[2],
  pick_up: false,
  delivery: false,
  image: "https://res.cloudinary.com/dzfjdlafz/image/upload/v1721218361/ibps0tmthrab2jcqp3jf.jpg"
  },
  {
  user: User.all[3],
  name: "One Piece - Gear 5 Luffy googles",
  description: "Luffy Gear 5 Nika Figure, One Piece King of ARTIST THE MONKEY.D.LUFFY GEAR5 II, Luffy Figure, Gear 5, Nika, Official Figure Merchandise",
  price: 3888,
  anime: Anime.all[2],
  pick_up: false,
  delivery: false,
  image: "https://res.cloudinary.com/dzfjdlafz/image/upload/v1721218362/lpckx9cg1wbmlddtfpwu.jpg"
  },
  {
  user: User.all[3],
  name: "Naruto - Jiraiya",
  description: "Naruto Shippuden Banpresto Figure Colosseum Zoukei Ninja World War, Jiraiya",
  price: 2734,
  anime: Anime.first,
  pick_up: false,
  delivery: false,
  image: "https://res.cloudinary.com/dzfjdlafz/image/upload/v1721218364/n60yiopknjvnpaixqhba.jpg"
  }
]

figures.each do |figure|
  Figure.create!(
    user: figure[:user],
    name: figure[:name],
    description: figure[:description],
    price: figure[:price],
    anime: figure[:anime],
    pick_up: figure[:pick_up],
    delivery: figure[:delivery]
  )
  Figure.last.photos.attach(io: URI.open(figure[:image]), filename: "figure_#{Figure.last.id}.jpg")
end

puts "created #{Figure.count} figures"

puts "creating orders"

users = User.all
figures = Figure.all

users.each do |user|
  figures.sample(3).each do |figure|
    Order.create!(
      buyer: user,
      figure: figure,
      mode_of_delivery: ["pickup", "delivery"].sample,
      status: ["pending", "completed", "cancelled"].sample
    )
  end
end

puts "created #{Order.count} orders"
