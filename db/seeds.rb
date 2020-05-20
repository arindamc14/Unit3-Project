# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.create(email: 'abc@email.com', password: 'password')

pet_statuses = PetStatus.create([{ status: 'Lost' }, { status: 'Found' }, {status: 'Case Closed'}])
pet_types = PetType.create([{ typee: 'Dog' }, { typee: 'Cat' }, { typee: 'Rabbit' }, { typee: 'Bird' }, { typee: 'Others' }])
posts = Post.create([{ user_id: 1, location: '255 Clementi Ave 2', description: 'Spotted a whi			te cat with a blue collar', pet_type_id: 2, pet_status_id: 2, url: 'https://www.thesprucepets.com/thmb/73jXPGcRgRBpuObuG7kr0DTe2yQ=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/GettyImages-477238849-9b58e838116d4bdcadc217e4d3d539d2.jpg'}, 
					{ user_id: 1, location: 'Tampines Avenue 1', description: 'Spotted a black dog. looks like a labrodor retriever', pet_type_id: 1, pet_status_id: 2, url: 'https://media.graytvinc.com/images/690*517/black+lab+female+mix.jpg'},
					{ user_id: 1, location: 'Woodlands Avenue 12', description: 'Spotted a brown toy poodle. Brought the dog back to mine to safekeep while finding the owner', pet_type_id: 2, pet_status_id: 2, url: 'https://petcentral.chewy.com/wp-content/uploads/toy-poodle-large-shutterstock-525256504-copy-538x350.jpg'}, 
					{ user: user, location: 'Redhill Mrt', description: 'My pet dog broke free from the leash when we were on our evening walk. Very worried for him! He is a cross breed with a thick brown fur.', pet_type_id: 2, pet_status_id: 1, url: 'https://thumbs.dreamstime.com/b/closeup-cute-brown-dog-facing-forward-portrait-medium-sized-mixed-breed-facign-looking-143097925.jpg'}])