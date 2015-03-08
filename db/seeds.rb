resume = JSON.parse(File.read('db/flat/resume.json'))
Cv.first_or_initialize(version: resume['meta']['version']).tap do |cv|
  cv.value = resume
end.save

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
