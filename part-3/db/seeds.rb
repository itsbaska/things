User.destroy_all
Potluck.destroy_all
Attendance.destroy_all

User.create(name: "a", username: "a", email: "a@a.com", password: "111222")
User.create(name: "b", username: "b", email: "b@b.com", password: "111222")
User.create(name: "c", username: "c", email: "c@c.com", password: "111222")


potlucks = [
  { name: "Halloween Potluck",
    starts_at: "2017-10-26 11:00:00",
    location: "#{Faker::Address.street_address}, Chicago IL, #{Faker::Address.zip}",
    host_id: 1},
  { name: "Graduation Potluck",
    starts_at: "2017-10-26 11:00:00",
    location: "#{Faker::Address.street_address}, Chicago IL, #{Faker::Address.zip}",
    host_id: 1},
  { name: "Sad Potluck",
    starts_at: "2017-10-26 12:00:00",
    location: "#{Faker::Address.street_address}, Chicago IL, #{Faker::Address.zip}",
    host_id: 2},
  { name: "Ancient Potluck",
    starts_at: "1400-10-26 20:00:00",
    location: "#{Faker::Address.street_address}, Chicago IL, #{Faker::Address.zip}",
    host_id: 2}
]

Potluck.create(potlucks)

Attendance.create(attendee_id: 2, potluck_id: 1, dish: "Potato Salad")
Attendance.create(attendee_id: 2, potluck_id: 3, dish: "Some Love")
Attendance.create(attendee_id: 2, potluck_id: 2, dish: "Cheese")
Attendance.create(attendee_id: 1, potluck_id: 3, dish: "Beer")
Attendance.create(attendee_id: 1, potluck_id: 4, dish: "Some Love")
Attendance.create(attendee_id: 3, potluck_id: 1, dish: "Cheese")
Attendance.create(attendee_id: 3, potluck_id: 2, dish: "Potato Salad")
Attendance.create(attendee_id: 3, potluck_id: 3, dish: "Tacos")
Attendance.create(attendee_id: 3, potluck_id: 4, dish: "Cheese")

