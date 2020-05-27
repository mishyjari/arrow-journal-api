Task.destroy_all
Event.destroy_all
Journal.destroy_all
User.destroy_all

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
  d = Faker::Date.forward(days: 365)
  Event.create({
    name: Faker::Hacker.ingverb,
    start_date: d,
    end_date: d + 1.hour,
    location: 'some location',
    journal_id: journal.id
  })
end
