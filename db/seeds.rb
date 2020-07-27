Tag.destroy_all
TodoItem.destroy_all
TodoList.destroy_all
Account.destroy_all
User.destroy_all

User.create! [
  { login: "lebron", password: "lejames" },
  { login: "billg", password: "no_idea" },
  { login: "kalman", password: "abc123" },
  { login: "johnw", password: "123abc" },
  { login: "michael", password: "password" },
  { login: "josh", password: "not_telling" },
  { login: "john", password: "secret" }
]

user1 = User.first
user1.create_account! gender: 'male', age: 33, first_name: 'LeBron', last_name: 'James'
user1.todo_lists.create! [
  { list_name: 'Disney', list_due_date: '2020-08-01 00:39:20' },
  { list_name: 'Christmas', list_due_date: '2020-12-25 00:39:20' }
]
user1.todo_lists[0].todo_items.create! [
  { due_date: '2020-07-28 00:39:20', task_title: "Buy tickets", description: "Go to Disney.com and buy 2 tickets" },
  { due_date: '2020-07-29 00:39:20', task_title: "Schedule trip", description: "Schedule plan of where to go at Disney" }
]
user1.todo_lists[1].todo_items.create! [
  { due_date: '2020-12-24 00:39:20', task_title: "Buy Xmas gifts", description: "Buy everyone a $20 Amazon gift card" }
]

Tag.create! [
  { tag_name: "holidays" },
  { tag_name: "vacations" },
  { tag_name: "recreation" }
]

tag1 = Tag.first
user1.todo_lists[1].todo_items[0].tags << tag1

tag2 = Tag.last
tag2.todo_items << user1.todo_lists[0].todo_items[0]