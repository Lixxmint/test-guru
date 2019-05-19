# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Categories

categories = Category.create([
  { title: 'Ruby' },
  { title: 'RoR'},
  { title: 'SQL'}])

#Users

users = User.create([
  { name: 'Aleksey Kozlov', username: 'Lixxmint', password: '1q2w3e', email: 'test.first@yandex.ru'},
  { name: 'Dmitriy Prigoch', username: 'DimkU', password: '123890asd', email: 'lololo@gmail.com'}])

#Tests

tests = Test.create([
  { title: 'Ruby basics', level: 0, category_id: categories[0]},
  { title: 'OOP Ruby', level: 1, category_id: categories[0]},
  { title: 'All about Rails', level: 1, category_id: categories[1]},
  { title: 'Simplest SQL constructs', level: 0, category_id: categories[2]},
  ])
  # Question

questions = Question.create([
  { body: 'What keyword defines a method?', test_id: tests[0]},
  { body: 'What keyword defines a class?', test_id: tests[1]},
  { body: 'Which character produces string concatenation?', test_id: tests[0]},
  { body: 'Which keyword removes a table or database?', test_id: tests[3]},
  { body: 'In which directory you can set the time zone?', test_id: tests[2]},
  ])
