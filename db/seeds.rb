supplier = Supplier.new({ name: "Doles", email: "doles@example.com", phone_number: "212-432-8374" })
supplier.save!
supplier = Supplier.new({ name: "Greenery", email: "greenery@example.com", phone_number: "292-263-4736" })
supplier.save!
supplier = Supplier.new({ name: "Spice Life", email: "spicelife@example.com", phone_number: "863-283-3746" })
supplier.save!

product = Product.new({ supplier_id: 1, name: "Tropical Juice", price: 3, description: "pineapple, banana, coconut" })
product.save!
product = Product.new({ supplier_id: 2, name: "Green Juice", price: 4, description: "spinach, green apples, pineapple" })
product.save!
product = Product.new({ supplier_id: 1, name: "Berry Juice", price: 3.50, description: "strawberry, blueberry, gojiberry" })
product.save!

image = Image.create!({ product_id: 1, url: "https://www.alsothecrumbsplease.com/wp-content/uploads/2017/05/Tropical-Juice3.jpg" })
image = Image.create!({ product_id: 2, url: "https://www.inspiredtaste.net/wp-content/uploads/2017/05/Green-Juice-Recipe-1-1200.jpg" })
image = Image.create!({ product_id: 3, url: "https://cmkt-image-prd.freetls.fastly.net/0.1.0/ps/6253831/910/607/m2/fpnw/wm1/lvpyvbodjsddlenapltrm5wpcbid8s2kvxvwy4yqt24qnxftfbcbl7ntmavivcqr-.jpg?1555341355&s=cfd7bee7e6d93db9735fc4cf172724a1" })
image = Image.create!({ product_id: 3, url: "https://www.belmarrahealth.com/wp-content/uploads/2016/04/10-health-benefits-of-drinking-blueberry-juice-500x338.jpg" })
