# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Role.find_or_create_by!(name: 'Admin') do |role|
  role.name = 'Admin'
end

User.find_or_create_by!(email: 'admin@example.com') do |user|
  user.password = 'changeme'
  user.password_confirmation = 'changeme'
  user.roles = []
  user.roles << Role.find(1)
end

User.find_or_create_by!(email: 'user@example.com') do |user|
  user.password = 'changeme'
  user.password_confirmation = 'changeme'
end

Contest.create(name: 'I BestWine', starts_in: '2016-07-01 20:00:00 UTC')
Contest.create(name: 'V BestWine (Sunny)', starts_in: '2016-07-23 20:00:00 UTC')

Grape.create(name: 'Agiorgitiko')
Grape.create(name: 'Aglianico')
Grape.create(name: 'Aleatico')
Grape.create(name: 'Alfrocheiro')
Grape.create(name: 'Alicante Bouchet')
Grape.create(name: 'Airén')
Grape.create(name: 'Albariño')
Grape.create(name: 'Aligoté')
Grape.create(name: 'Arinto')
Grape.create(name: 'Arneis')
Grape.create(name: 'Arvine')
Grape.create(name: 'Assyrtiko')
Grape.create(name: 'Auxerrois')
Grape.create(name: 'Avesso')
Grape.create(name: 'Alvarinho')
Grape.create(name: 'Airén')
Grape.create(name: 'Baco Noir')
Grape.create(name: 'Baga')
Grape.create(name: 'Barbera')
Grape.create(name: 'Blaufränkisch')
Grape.create(name: 'Bobal')
Grape.create(name: 'Bonarda')
Grape.create(name: 'Brachetto')
Grape.create(name: 'Bacchus')
Grape.create(name: 'Bical')
Grape.create(name: 'Bombino Bianco')
Grape.create(name: 'Bourboulenc')
Grape.create(name: 'Bual')
Grape.create(name: 'Cabernet Franc')
Grape.create(name: 'Cabernet Sauvignon')
Grape.create(name: 'Canaiolo')
Grape.create(name: 'Carignan')
Grape.create(name: 'Carmenère')
Grape.create(name: 'Castelão')
Grape.create(name: 'Catawba')
Grape.create(name: 'Charbono')
Grape.create(name: 'Cinsaut')
Grape.create(name: 'Concord')
Grape.create(name: 'Corvina')
Grape.create(name: 'Counoise')
Grape.create(name: 'Catarratto')
Grape.create(name: 'Chardonnay')
Grape.create(name: 'Chasselas')
Grape.create(name: 'Chenin Blanc')
Grape.create(name: 'Clairette')
Grape.create(name: 'Coda di Volpe')
Grape.create(name: 'Colombard')
Grape.create(name: 'Cortese')
Grape.create(name: 'Cserzegi Fuszeres')
Grape.create(name: 'Caberlot')
Grape.create(name: 'Codega')
Grape.create(name: 'Cercial')
Grape.create(name: 'Cariñena')
Grape.create(name: 'Callet')
Grape.create(name: 'De Chaunac')
Grape.create(name: 'Dolcetto')
Grape.create(name: 'Dornfelder')
Grape.create(name: 'Delaware')
Grape.create(name: 'Donzelinho')
Grape.create(name: 'Erbaluce')
Grape.create(name: 'Encruzado')
Grape.create(name: 'Fer')
Grape.create(name: 'Frappato')
Grape.create(name: 'Freisa')
Grape.create(name: 'Falanghina')
Grape.create(name: 'Feteasca Alba')
Grape.create(name: 'Fiano')
Grape.create(name: 'Folle Blanc')
Grape.create(name: 'Furmint')
Grape.create(name: 'Fernão Pires')
Grape.create(name: 'Gaglioppo')
Grape.create(name: 'Gamay')
Grape.create(name: 'Graciano')
Grape.create(name: 'Grenache/Garnacha')
Grape.create(name: 'Grignolino')
Grape.create(name: 'Grolleau')
Grape.create(name: 'Garganega')
Grape.create(name: 'Gewürztraminer')
Grape.create(name: 'Godello')
Grape.create(name: 'Grechetto')
Grape.create(name: 'Greco')
Grape.create(name: 'Grenache Blanc')
Grape.create(name: 'Gros Manseng')
Grape.create(name: 'Grüner Veltliner')
Grape.create(name: 'Gouveio')
Grape.create(name: 'Godello')
Grape.create(name: 'Hárslevelü')
Grape.create(name: 'Hondarrabi Zuri')
Grape.create(name: 'Inzolia')
Grape.create(name: 'Irsay Oliver')
Grape.create(name: 'Jaen')
Grape.create(name: 'Kadarka')
Grape.create(name: 'Kerner')
Grape.create(name: 'Lagrein')
Grape.create(name: 'Lambrusco')
Grape.create(name: 'Lladoner Pelut')
Grape.create(name: 'Len de L’el')
Grape.create(name: 'Loureiro')
Grape.create(name: 'Malbec')
Grape.create(name: 'Malvasia Nera')
Grape.create(name: 'Maréchal Foch')
Grape.create(name: 'Marzemino')
Grape.create(name: 'Mavrodapne')
Grape.create(name: 'Merlot')
Grape.create(name: 'Meunier')
Grape.create(name: 'Molinara')
Grape.create(name: 'Monica')
Grape.create(name: 'Montepulciano')
Grape.create(name: 'Mourvèdre')
Grape.create(name: 'Macabeo')
Grape.create(name: 'Malagousia')
Grape.create(name: 'Malvasia')
Grape.create(name: 'Marsanne')
Grape.create(name: 'Mauzac')
Grape.create(name: 'Melon de Bourgogne / Muscadet')
Grape.create(name: 'Müller Thurgau')
Grape.create(name: 'Muscadelle')
Grape.create(name: 'Muscat Blanc')
Grape.create(name: 'Muscat of Alexandria')
Grape.create(name: 'Muscat Ottonel')
Grape.create(name: 'Moscato Bianco di Canelli')
Grape.create(name: 'Moscato')
Grape.create(name: 'Mencia')
Grape.create(name: 'Manto Negre')
Grape.create(name: 'Mazuelo')
Grape.create(name: 'Moschofílero')
Grape.create(name: 'Moscatel de Alexandria')
Grape.create(name: 'Muscat de Lunel')
Grape.create(name: 'Monastrell')
Grape.create(name: 'Mantonegro-Fogoneu')
Grape.create(name: 'Nebbiolo')
Grape.create(name: 'Negroamaro')
Grape.create(name: 'Nerello Mascalese')
Grape.create(name: 'Nero D’Avola')
Grape.create(name: 'Norton')
Grape.create(name: 'Niagara')
Grape.create(name: 'Nerello Cappuccio')
Grape.create(name: 'Petit Verdot')
Grape.create(name: 'Petite Sirah')
Grape.create(name: 'Picpoul Noir')
Grape.create(name: 'Piedirosso')
Grape.create(name: 'Pignolo')
Grape.create(name: 'Pineau D’Aunis')
Grape.create(name: 'Pinot Noir')
Grape.create(name: 'Pinotage')
Grape.create(name: 'Plavac Mali')
Grape.create(name: 'Portugieser')
Grape.create(name: 'Palomino')
Grape.create(name: 'Parellada')
Grape.create(name: 'Pedro Ximénez')
Grape.create(name: 'Petite Arvine')
Grape.create(name: 'Petit Manseng')
Grape.create(name: 'Picpoul Blanc')
Grape.create(name: 'Pigato')
Grape.create(name: 'Pinot Blanc')
Grape.create(name: 'Pinot Gris')
Grape.create(name: 'Prosecco')
Grape.create(name: 'Pinot Grigio')
Grape.create(name: 'Prugnolo Gentile')
Grape.create(name: 'Premsal')
Grape.create(name: 'Pinot Bianco')
Grape.create(name: 'Refosco')
Grape.create(name: 'Rondinella')
Grape.create(name: 'Ruby Cabernet')
Grape.create(name: 'Ruché')
Grape.create(name: 'Roditis')
Grape.create(name: 'Riesling')
Grape.create(name: 'Rkatsiteli')
Grape.create(name: 'Roussanne')
Grape.create(name: 'Ribolla Gialla')
Grape.create(name: 'Roupeiro')
Grape.create(name: 'Rodítis')
Grape.create(name: 'Sagrantino')
Grape.create(name: 'Sangiovese')
Grape.create(name: 'Saperavi')
Grape.create(name: 'Schiava')
Grape.create(name: 'Schioppettino')
Grape.create(name: 'St. Laurent')
Grape.create(name: 'Syrah / Shiraz')
Grape.create(name: 'Sauvignon Blanc')
Grape.create(name: 'Savagnin')
Grape.create(name: 'Savatiano')
Grape.create(name: 'Scheurebe')
Grape.create(name: 'Schönburger')
Grape.create(name: 'Semillon')
Grape.create(name: 'Sercial')
Grape.create(name: 'Seyval Blanc')
Grape.create(name: 'Silvaner')
Grape.create(name: 'Sauson')
Grape.create(name: 'Tannat')
Grape.create(name: 'Tempranillo')
Grape.create(name: 'Teroldego')
Grape.create(name: 'Tinta Amarela')
Grape.create(name: 'Tinta Barroca')
Grape.create(name: 'Tinta Negra Mole')
Grape.create(name: 'Tinto Cão')
Grape.create(name: 'Touriga Franca')
Grape.create(name: 'Touriga Nacional')
Grape.create(name: 'Tocai Fruilano')
Grape.create(name: 'Torrontés')
Grape.create(name: 'Trebbiano/Ugni Blanc')
Grape.create(name: 'Traminer Aromatico')
Grape.create(name: 'Tinta Roriz')
Grape.create(name: 'Tempranillo Blanco')
Grape.create(name: 'Tinto Fino')
Grape.create(name: 'Terret')
Grape.create(name: 'Uva di Troia')
Grape.create(name: 'Valdiguié')
Grape.create(name: 'Verdejo')
Grape.create(name: 'Verdelho')
Grape.create(name: 'Verdicchio')
Grape.create(name: 'Vermentino')
Grape.create(name: 'Vernaccia')
Grape.create(name: 'Vidal')
Grape.create(name: 'Vignoles')
Grape.create(name: 'Vilana')
Grape.create(name: 'Viognier')
Grape.create(name: 'Viosinho')
Grape.create(name: 'Viura')
Grape.create(name: 'Welschriesling')
Grape.create(name: 'Xynomavro')
Grape.create(name: 'Xarel-Lo')
Grape.create(name: 'Zinfandel / Primitivo')
Grape.create(name: 'Zweigelt')