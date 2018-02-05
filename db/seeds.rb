# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
User.create!(username:'yzhou')
User.create!(username:'laurette_the_most_amazing_ever')
User.create!(username:'blanddan')
User.create!(username: 'JILL!!!!!!!!!')

Artwork.destroy_all
Artwork.create!(title: 'Mona Lisa', artist_id: User.first.id, image_url: 'www.greatestartist.com')
Artwork.create!(title: 'Superheroes', artist_id: User.fourth.id, image_url: 'www.marvel.com')
Artwork.create!(title: 'AppAcademy', artist_id: User.first.id, image_url: 'www.intense.com')
Artwork.create!(title: 'WonderWoman!!!!!', artist_id: User.second.id, image_url: 'www.LAURETTE.com')
Artwork.create!(title: 'Untitled - Boring', artist_id: User.third.id, image_url: 'www.dan.com')

ArtworkShare.destroy_all
ArtworkShare.create!(artwork_id: Artwork.first.id, viewer_id: User.first.id)
ArtworkShare.create!(artwork_id: Artwork.first.id, viewer_id: User.second.id)
ArtworkShare.create!(artwork_id: Artwork.second.id, viewer_id: User.second.id)
ArtworkShare.create!(artwork_id: Artwork.fourth.id, viewer_id: User.second.id)
ArtworkShare.create!(artwork_id: Artwork.fifth.id, viewer_id: User.fourth.id)
