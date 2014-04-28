# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1. Hunter Chapman
# 2. Greg Knudsen
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to add items to my list
# As a user, I want to check-off items from my list
# As a user, I want to display the items from my list
# As a user, I want to specify quantities of items on my list

 
# Pseudocode
# Variables -- list, and checked_list (hashes)
# 

# Create class List
#  METHOD initialize that takes two arguments (item(s) and quantity default set to 1
#  assign instance variables 
#  @list = new hash
#  @item = item
#  @quantity = quantity
#  END METHOD
#
#  METHOD add_item takes a two arguments
#    push item and quantity to list hash
#  END METHOD
#
#  METHOD remove_item which takes a single argument
#    remove item from list hash
#  END METHOD
#
#  METHOD display_items which takes no arguments
#   puts "list contains"
#   displays list hash
#  END METHOD
#  
#  
# Your fabulous code goes here....

# class List
#   def initialize
#     @list = Hash.new
#   end
  
#   def add_item(item,quantity=1)
#     @list[item] = quantity 
#   end

#   def remove_item(item)
#     if @list.include?(item)
#       @list.delete(item)
#     else
#       p "These aren't the droids your looking for..."
#     end
#   end  
    
#   def display_items
#     if @list.empty? 
#       puts "Your list contains no items!"
#     else
#       @list.each { |key,value| puts "#{key}: #{value}\n" }
#     end
#   end

# end


# REFACTOR

class List
  def initialize
    @list = Hash.new
  end
  
  def add_item(item,quantity=1)
    @list[item] = quantity 
  end

  def remove_item(item)
    if @list.include?(item)
      @list.delete(item)
    else
      p "These aren't the droids your looking for..."
    end
  end  
    
  def display_items
    if @list.empty? 
      puts"Your list contains no items!"
    else
      @list.each { |key,value| puts "#{key}: #{value}" }
    end
  end

end

# DRIVER CODE GOES HERE. 

# shopping_list.display_items == "Your list contains no items!"

shopping_list = List.new
shopping_list.add_item("apple",5)
shopping_list.add_item("banana")
p shopping_list.display_items.include?("banana")
p shopping_list.display_items.include?("apple")
p shopping_list.add_item("orange",2)
shopping_list.display_items

p shopping_list.display_items.include?("orange")


p shopping_list.remove_item("apple")
p shopping_list.display_items.include?("orange")

p shopping_list.remove_item("steaks") == "These aren't the droids your looking for..."
 
 
 