# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

data =  HashWithIndifferentAccess.new(YAML.load(File.read(File.expand_path('../seeds.yml', __FILE__))))

data['projects'].each do |key, value|
	
	p = Project.create(title: key['title'])
	
	
	key['todos'].each do |tkey, tvalue|
	p.todos << Todo.create(tkey)
	puts(tkey)
	
	end
	puts "Success"
  
  
end


