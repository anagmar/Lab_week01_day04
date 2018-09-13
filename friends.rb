def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def favorite_food(person, food_to_check)
  for snack in person[:favourites][:snacks]
    if snack == food_to_check
      return true
    end
  end
  return false
end

def add_friend(person, friend)
  person[:friends] << friend
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
end

def total_money(my_array)
total_monies = 0
  for person in my_array
      total_monies += person[:monies]
    end
  return total_monies
end

def lend_money(person_lend, person_lendee, loan)
  person_lend[:monies] -= loan
  person_lendee[:monies] += loan
end

def list_of_snacks(people)
  new_array = []
  for person in people
    new_array.concat(person[:favourites][:snacks])
  end
  return new_array.sort
end

def no_friends(people)
  no mates = []
  for person in people
    if person[:friends].length == 0
      no_mates.push(person)
    end 
  end
  return no_mates
end
