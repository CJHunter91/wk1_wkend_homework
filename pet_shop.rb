#notes - @pet_shop pets with keys[name, pet_type,breed, price] is an array, admin key hash value, name 

def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  return pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, no_pets_sold)
  return pet_shop[:admin][:pets_sold] += no_pets_sold
end

def stock_count(pet_shop)
  return pet_shop[:pets].size
end

def pets_by_breed(pet_shop, breed)
  pet_shop[:pets].map{|x| x[:breed] == breed ? x : nil}.compact()
end

def find_pet_by_name(pet_shop, name)
  pet_shop[:pets].each{|x| return x if  x[:name] == name}
  return nil
end

def remove_pet_by_name(pet_shop, name)
  pet_shop[:pets].delete(find_pet_by_name(pet_shop, name))
end

def add_pet_to_stock(pet_shop, new_pet)
  return pet_shop[:pets] << new_pet
end

def customer_pet_count(customer)
  return customer[:pets].size
end