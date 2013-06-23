# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


clinitian = Clinitian.create([{ jobTitle: 'Psychiatric Nurse', name: 'Kerry Delaney', password: 'password' }, { jobTitle: 'GP', name: 'Dr Brian Loe', password: 'password' }])
user = User.create([{ clinitian_id: '1', name: 'Lenny Jenkins' , password: 'password' }, { clinitian_id: '1', name: 'Dr John Smith' , password: 'password' }])
homework = Homework.create([{ startDate:'12/12/2012', title: 'asdasdsa', user_id:  '1'}, { startDate:'12/12/2012', title: 'asdasdsa', user_id:  '1' }])
homeworkItems = HomeworkItem.create([{ content: 'Go for walk with family.', done: '1', dueDate: '12/12/2013', homework_id: '1'}, {  content: 'Have coffee with Joan.', done: '1', dueDate: '12/12/2013', homework_id: '1' }])
mood = Mood.create([{ message: ' Feeling OK today, bit slow, not much happening. Off work.' , mood: 3, user_id: 1}, { message: 'Very low this week in general, medication has changed recently.' , mood: 1, user_id: 1 }])
message = Message.create([{ message: 'Thanks, will do.', mood_id: 1 }, { message: 'Going to make an appointment asap.', mood_id: 2 }])
clinitiansMessage = ClinitianMessage.create([{ message: 'Good to hear your coping ok, try to keep busy while off work!', mood_id: 1 }, { message: 'Sorry to hear things are so tough, dont forget to call the helpline if you need to.', mood_id: 2 }])
