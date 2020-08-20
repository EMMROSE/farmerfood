require "open-uri"

# puts 'Create users'
# User.destroy_all
# @user1 = User.new(email: 'mboizet1@gmail.com', password:'Chocolataulait9!')
# @user1.save!
# puts '>>>>>> Done!'
# puts '----------------'

puts "Destroy all Categories"
Category.destroy_all

puts ">>>>>> Done!"
puts "----------"

puts "Create Categories"
c1 = Category.create!(name: "viande")
c1.save!
c2 = Category.create!(name: "fruit et légume")
c2.save!
c3 = Category.create!(name: "laitage")
c3.save!

puts ">>>>>> #{Category.count} Categories created!"
puts "----------"



puts "Destroy all Products"
Product.destroy_all
puts ">>>>>> Done!"
puts "----------"
puts "Create Products"
puts "----------"

p1 = Product.create({:name=>"Fromage de chèvre", :description=>"fromage de chèvre produit par Gaston Seguin", :sku=>"00001", price_cents: 500, stock: 5})
p1.category = c1
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1597919463/food/fromage.png')
p1.cover.attach(io: file, filename: 'fromage.png', content_type: 'image/jpg')
p1.save!

p2 = Product.create({:name=>"Botte de poireaux", :description=>"fromage de chèvre produit par Gaston Seguin", :sku=>"00001", price_cents: 290, stock: 5})
p2.category = c1
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1597919500/food/poireaux.png')
p2.cover.attach(io: file, filename: 'poireaux.jpg', content_type: 'image/jpg')
p2.save!

p3 = Product.create({:name=>"Fromage de chèvre", :description=>"fromage de chèvre produit par Gaston Seguin", :sku=>"00001", price_cents: 500, stock: 5})
p3.category = c1
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1597919463/food/fromage.png')
p3.cover.attach(io: file, filename: 'rfromage.png', content_type: 'image/jpg')
p3.save!

p4 = Product.create({:name=>"Boeuf maturé", :description=>"fromage de chèvre produit par Gaston Seguin", :sku=>"00001", price_cents: 3500, stock: 5})
p4.category = c1
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1597919705/food/cotedeboeuf.png')
p4.cover.attach(io: file, filename: 'cotedeboeuf.png', content_type: 'image/jpg')
p4.save!

p5 = Product.create({:name=>"lot de 4 navets", :description=>"fromage de chèvre produit par Gaston Seguin", :sku=>"00001", price_cents: 230, stock: 5})
p5.category = c1
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1597919488/food/navet.png')
p5.cover.attach(io: file, filename: 'navet.png', content_type: 'image/jpg')
p5.save!

p6 = Product.create({:name=>"Botte de poireaux", :description=>"fromage de chèvre produit par Gaston Seguin", :sku=>"00001", price_cents: 290, stock: 5})
p6.category = c1
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1597919500/food/poireaux.png')
p6.cover.attach(io: file, filename: 'poireaux.jpg', content_type: 'image/jpg')
p6.save!

p7 = Product.create({:name=>"Fromage de chèvre", :description=>"fromage de chèvre produit par Gaston Seguin", :sku=>"00001", price_cents: 500, stock: 5})
p7.category = c1
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1597919463/food/fromage.png')
p7.cover.attach(io: file, filename: 'rfromage.png', content_type: 'image/jpg')
p7.save!

p8 = Product.create({:name=>"Boeuf maturé", :description=>"fromage de chèvre produit par Gaston Seguin", :sku=>"00001", price_cents: 3500, stock: 5})
p8.category = c1
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1597919705/food/cotedeboeuf.png')
p8.cover.attach(io: file, filename: 'cotedeboeuf.png', content_type: 'image/jpg')
p8.save!

p9 = Product.create({:name=>"lot de 4 navets", :description=>"fromage de chèvre produit par Gaston Seguin", :sku=>"00001", price_cents: 230, stock: 5})
p9.category = c1
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1597919488/food/navet.png')
p9.cover.attach(io: file, filename: 'navet.png', content_type: 'image/jpg')
p9.save!
puts "-------"
puts ">>>>>> #{Product.count} products created!"


puts ">>>>>> Done! Seeds achieved"
