# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


clinitian = Clinitian.create([{ jobTitle: 'guy', name: 'guasda', password: 'pword' }, { jobTitle: 'guy2', name: 'guasda2', password: 'pword' }])
user = User.create([{ clinitian_id: '1', name: 'Chicago' , password: 'asdasd' }, { clinitian_id: '1', name: 'asdasda' , password: 'asdasasd' }])
homework = Homework.create([{ startDate:'12/12/2012', title: 'asdasdsa', user_id:  '1'}, { startDate:'12/12/2012', title: 'asdasdsa', user_id:  '1' }])
homeworkItems = HomeworkItem.create([{ content: 'asdasdas', done: '1', dueDate: '12/12/2013', homework_id: '1'}, {  content: 'asdasdas', done: '1', dueDate: '12/12/2013', homework_id: '1' }])
mood = Mood.create([{ message: ' asdasdasd' , mood: 3, user_id: 1}, { message: ' asdasdasd' , mood: 3, user_id: 1 }])
message = Message.create([{ message: 'stuff and otehr things', mood_id: 1 }, { message: 'stuff and otehr things', mood_id: 1 }])
clinitiansMessage = ClinitianMessage.create([{ message: 'stuff and otehr things', mood_id: 1 }, { message: 'stuff and otehr things', mood_id: 1 }])
