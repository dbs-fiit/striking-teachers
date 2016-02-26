# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

faculties = ['FIIT STU', 'FEI STU', 'FMFI UK', 'PriFUK']

faculties.each do |faculty|
  Faculty.create(name: faculty)
end

fiit = Faculty.where(name: 'FIIT STU').first
fiit.teachers.create(name: 'Michal Barla', email: 'michal.barla@stuba.sk')
fiit.teachers.create(name: 'Jakub Simko', email: 'jakub.simko@stuba.sk')