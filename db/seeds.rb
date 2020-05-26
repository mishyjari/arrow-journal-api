mishy = User.create({
  username: 'shelle',
  first_name: 'Mishy',
  last_name: 'Jari',
  email: 'shelle@mishyjari.com',
  password_digest: 'pass'
})

journal = Journal.create({
  name: 'My Journal of Foobar', 
  start_date: Date.new, 
  end_date: Date.new + 1.year,
  user_id: mishy.id
})

100.times do 
  Task.create({
    name: Faker::Verb.base + ' ' + Faker::Appliance.equipment,
    journal_id: journal.id,
    date: Faker::Date.forward(days: 180),
    completed: false,
  })
end 

100.times do
  Event.create({
    name: "Some event",
    start_date: Faker::Date.forward(days: 365),
    location: 'some location',
    journal_id: journal.id
  })
end
