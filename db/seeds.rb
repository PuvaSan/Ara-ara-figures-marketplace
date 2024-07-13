User.destroy_all

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
}])

puts "Created #{User.count} users"
