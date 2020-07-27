# Job.destroy_all
# PersonalInfo.destroy_all
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

# Person.first.jobs.create! [
#   { title: 'Sr. Developer', company: 'Microsoft', position_id: '#1234' },
#   { title: 'Player', company: 'NBA', position_id: '#positionless' }
# ]

# Person.last.jobs.create! [
#   { title: 'Duplication Specialist', company: 'SSA', position_id: '#333' },
#   { title: 'Sr. Developer', company: 'Microsoft', position_id: '#2234' }
# ]