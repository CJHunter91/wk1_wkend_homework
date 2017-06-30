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
  breed_array = []
  pet_shop[:pets].each{|x| breed_array << breed if x[:breed] == breed}
  return breed_array
end