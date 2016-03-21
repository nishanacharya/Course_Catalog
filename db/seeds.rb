# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
Instructor.delete_all
Subject.delete_all
Course.delete_all

instructor_data = File.read('instructor.json')
instructor_hash = JSON.parse(instructor_data)
instructor_hash.each do |data|
	first_name = data['first']
	last_name = data['last']
	email = data['email']
	Instructor.create(First_name: first_name, Last_name: last_name, Email: email)
end

subject_data = File.read('subject.json')
subject_hash = JSON.parse(subject_data)
subject_hash.each do |data|
	name = data['name']
	term = data['term']
	abbrev = data['abbreviation']
	subject_id = data['id']
	Subject.create(Name: name, Abbrev: abbrev, Subject_id: subject_id)
end

course_data = File.read('course.json')
course_hash = JSON.parse(course_data)
course_hash.each do |data|
	name = data['name']
	code = data['code']
	independent_study = data['independent_study']
	requirements = data['requirements']
	course = Course.create(Name: name, Code: code, Independent_study: independent_study, Requirements: requirements)
	data['subjects'].each do |subjectHash|
		subject_id = subjectHash['id']
		subject = Subject.find_by(Subject_id: subject_id)
		CourseSubject.create(course_id: course.id, subject_id: subject.id) if !subject.nil?
	end	
end