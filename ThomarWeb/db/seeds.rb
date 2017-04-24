# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.destroy_all
Monument.destroy_all
Beacon.destroy_all
Poi.destroy_all


@c1 = Category.create(name:'Castelo')

@b1 = Beacon.create(uuid:'1',manufacturer:'cisco',battery:'22-04-2017')
@b2 = Beacon.create(uuid:'2',manufacturer:'cisco',battery:'23-04-2017')

@m1 = Monument.create(name:'Castelo dos Templarios',description:'Castelo',image:'image',longitude:'123',latitude:'321',address:'rua', category:@c1)

@p1 = Poi.create(name:'Charola',description:'charola',image:'image',longitude:'123',latitude:'321',monument:@m1, beacon:@b2)

#@a1 = Access.create(date:)