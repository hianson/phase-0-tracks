# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/campus' do
	@campus = db.execute("SELECT * FROM campuses")
  erb :new_campus
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

get '/campus' do
  db.execute("INSERT INTO campuses (campus_name) VALUES (?)", [params['campus']])
  redirect '/campus'
end

get '/students/:campus' do
	camp = params[:campus]
	@campus_students = db.execute("SELECT * FROM students WHERE campus=?", [camp])
	erb :campus
end



# add static resources
