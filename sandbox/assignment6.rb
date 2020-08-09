require_relative '../config/environment'

puts "--------------- Step 4: User has access to TodoItems ---------------"
user1 = User.first
puts user1.things_todo.pluck(:task_title)


puts "--------------- Step 5: Account Validation ---------------"
# Account Generation
acc1 = Account.create(gender: 'male', age: 25, first_name: 'Joey', last_name: 'Peterson')
user2 = User.last
user2.account = acc1
puts acc1.inspect
puts "Is this account valid?"
puts acc1.valid?
# Validating Account - Gender
puts "Gender = 'nothing' ... valid?"
acc1.gender = "nothing"
puts acc1.valid?
puts "Gender = 'N/A' ... valid?"
acc1.gender = "N/A"
puts acc1.valid?
# Validating Account - Age
puts "What about age between 20 - 100?"
puts "Age = 16 ... valid?"
acc1.age = 16
puts acc1.valid?
puts "Age = 101 ... valid?"
acc1.age = 101
puts acc1.valid?
puts "Age = 99 ... valid?"
acc1.age = 99
puts acc1.valid?


puts "--------------- Step 6: TodoList and TodoItem in ascending order ---------------"
puts "Check if TodoLists are in correct order (by list_due_date):"
puts TodoList.pluck(:list_due_date)
puts "Check if TodoItems are in correct order (by due_date):"
puts TodoItem.pluck(:due_date)


puts "--------------- Final Step: Show generic retrievals ---------------"
puts "1.) Find Lebron user:"
lebron_user = User.find_by(login: "lebron")
puts lebron_user.inspect

puts "2.) And his account info:"
lebrons_account = Account.find_by(user_id: lebron_user.id)
puts lebrons_account.inspect

lebrons_lists = TodoList.where(user_id: lebron_user.id).to_a
puts "3.) Lebron has (#{lebrons_lists.size}) Todo Lists"

puts "4.) Find the names of all lists (not just Lebron):"
puts TodoList.pluck(:list_name)

puts "5.) What todo items are in Lebron's (#{lebrons_lists[1].list_name}) list?"
puts lebrons_lists[1].todo_items.pluck(:task_title)

puts "6.) What tags do those items have:"
tags = Tag.where(id: lebrons_lists[1].todo_items[0].tags[0].id).to_a
puts tags.inspect