Tag.destroy_all
TodoItem.destroy_all
TodoList.destroy_all
Account.destroy_all
User.destroy_all

User.create! [
  { login: "Matt", password: "abc123" },
  { login: "lebron", password: "lejames" },
  { login: "billg", password: "no_idea" },
  { login: "kalman", password: "abc123" },
  { login: "johnw", password: "123abc" },
  { login: "michael", password: "password" },
  { login: "josh", password: "not_telling" },
  { login: "john", password: "secret" },
  { login: "Tim", password: "abc123" },
]

user1 = User.first
user1.create_account! gender: 'male', age: 33, first_name: 'Matt', last_name: 'Matthews'
user1.todo_lists.create! [
  { list_name: 'Disney', list_due_date: '2020-08-01 00:39:20' },
  { list_name: 'Party', list_due_date: '2020-07-25 00:39:20' },
  { list_name: 'Christmas', list_due_date: '2020-12-25 00:39:20' },
  { list_name: 'Easter', list_due_date: '2021-2-25 00:39:20' },
  { list_name: 'Trip to Japan', list_due_date: '2021-11-25 00:39:20' },
  { list_name: 'Celebrate Kwanza', list_due_date: '2021-12-24 00:39:20' }
]
user1.todo_lists[0].todo_items.create! [
  { due_date: '2020-07-22 00:39:20', task_title: "Get Drinks", description: "Beer" },
  { due_date: '2020-07-22 00:39:20', task_title: "Get Music", description: "Lady Gaga" },
  { due_date: '2020-07-22 00:39:20', task_title: "Get Friends", description: "Yeah... need more of those" },
  { due_date: '2020-07-22 00:39:20', task_title: "Get Pizza", description: "Papa Johns" },
  { due_date: '2020-07-22 00:39:20', task_title: "Get Cups", description: "Solo cups" },
  { due_date: '2020-07-22 00:39:20', task_title: "Get Shots?", description: "Jack Daniels" },
  
]
user1.todo_lists[1].todo_items.create! [
  { due_date: '2020-07-30 00:39:20', task_title: "Buy tickets", description: "Buy 2 tickets @ Disney.com" },
  { due_date: '2020-07-29 00:39:20', task_title: "Schedule trip", description: "Pick which coasters to ride" }
]
user1.todo_lists[2].todo_items.create! [
  { due_date: '2020-12-24 00:39:20', task_title: "Buy Xmas gifts", description: "Buy $20 Amazon gift cards" }
]
user1.todo_lists[3].todo_items.create! [
  { due_date: '2021-2-24 00:39:20', task_title: "Buy Easter gifts", description: "Buy $20 Amazon gift cards" }
]
user1.todo_lists[4].todo_items.create! [
  { due_date: '2021-10-24 00:39:20', task_title: "Look at Japanese spots", description: "Buy $20 Amazon gift cards" }
]


user2 = User.last
user2.create_account! gender: 'male', age: 50, first_name: 'Tim', last_name: 'Timothy'
user2.todo_lists.create! [
  { list_name: 'Disneyland', list_due_date: '2020-08-01 00:39:20' },
  { list_name: 'Stay Home', list_due_date: '2020-07-25 00:39:20' },
  { list_name: 'Kwanza', list_due_date: '2020-12-25 00:39:20' },
  { list_name: 'Easter', list_due_date: '2021-2-25 00:39:20' },
  { list_name: 'Trip to Japan', list_due_date: '2021-11-25 00:39:20' },
  { list_name: 'Celebrate Xmas', list_due_date: '2021-12-24 00:39:20' }
]
user2.todo_lists[0].todo_items.create! [
  { due_date: '2020-07-22 00:39:20', task_title: "Get Computer", description: "Alienware" },
  { due_date: '2020-07-22 00:39:20', task_title: "Get Music", description: "Lady Gaga" },
  { due_date: '2020-07-22 00:39:20', task_title: "Get Chat Server", description: "Discord server" },
  { due_date: '2020-07-22 00:39:20', task_title: "Get Pizza", description: "Papa Johns" },
  { due_date: '2020-07-22 00:39:20', task_title: "Get Games", description: "Fall Guys" },
  { due_date: '2020-07-22 00:39:20', task_title: "Get Shots?", description: "Jack Daniels" },
  
]
user2.todo_lists[1].todo_items.create! [
  { due_date: '2020-07-30 00:39:20', task_title: "Buy tickets", description: "Buy 2 tickets @ Disneyland.com" },
  { due_date: '2020-07-29 00:39:20', task_title: "Schedule trip", description: "Pick which coasters to ride" }
]
user2.todo_lists[2].todo_items.create! [
  { due_date: '2020-12-24 00:39:20', task_title: "Buy Kwanza gifts", description: "Buy $20 Amazon gift cards" }
]
user2.todo_lists[3].todo_items.create! [
  { due_date: '2021-2-24 00:39:20', task_title: "Buy Easter gifts", description: "Buy $20 Amazon gift cards" }
]
user2.todo_lists[4].todo_items.create! [
  { due_date: '2021-10-24 00:39:20', task_title: "Look at Japanese spots", description: "Buy $20 Amazon gift cards" }
]


Tag.create! [
  { tag_name: "holidays" },
  { tag_name: "vacations" },
  { tag_name: "recreation" }
]

tag1 = Tag.first
user1.todo_lists[2].todo_items[0].tags << tag1

tag2 = Tag.last
tag2.todo_items << user1.todo_lists[1].todo_items[0]