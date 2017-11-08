puts 'Creating users...'
james = User.create!(email: 'james@james.com', password: 'testtest', avatar_url: '')
yves = User.create!(email: 'yves@yves.com', password: 'testtest', avatar_url: '')

puts 'Creating monuments...'
cathedral = Monument.create!(
  name: 'Cathédrale Notre-Dame de Paris',
  tagline: "La cathédrale est depuis l'origine l'un des monuments les plus emblématiques de Paris",
  url: "https://fr.wikipedia.org/wiki/Cath%C3%A9drale_Notre-Dame_de_Paris",
  user: james)

church = Monument.create!(
  name: 'Église Saint-Jean de Vidailhac de Cocumont',
  tagline: "L'église est inscrite au titre des monuments historiques en 1927",
  url: "https://fr.wikipedia.org/wiki/%C3%89glise_Saint-Jean_de_Vidailhac_de_Cocumont",
  user: yves)

puts 'Creating votes...'
james.up_votes cathedral
yves.up_votes church
puts 'Finished!'
