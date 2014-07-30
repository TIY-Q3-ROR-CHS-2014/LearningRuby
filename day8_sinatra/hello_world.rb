require 'sinatra'

class Person
  attr_accessor :first_name
  attr_accessor :last_name
end

get '/' do
  'Hello world'
end

get '/sam_is_awesome' do
  "Only sam wants to be awesome today"
end

get '/hello_world' do
  erb :hello_world
end

get '/display_names' do
  @dude = "Sup"
  @names = [ 
    { first_name: "Sam", last_name: "Waller"},
    { first_name: "Jamie", last_name: "Kingston"},
    { first_name: "Jim", last_name: "Rambow"},
    { first_name: "John", last_name: "Hammond"}
  ]
  erb :display_names
end

get '/test_objects' do
  person1 = Person.new
  person1.first_name = "Ben"
  person1.last_name = "Linville"
  person2 = Person.new
  person2.first_name = "Rob"
  person2.last_name = "Rice"
  @people = [
    person1, person2
  ]
  erb :test_objects
end

get '/hello/:name' do
  p params
  @name = params[:name]
  erb :hello
end

get '/test/:name/:hello/:jamie' do |asdf, hello, jamie|
  p params
  p params[:name]
  p params[:hello]
  p params[:jamie]
  p asdf
  p hello
  p jamie
end

get '/layout1' do
  erb :test_route, layout: :layout1
end

get '/layout2' do
  erb :test_route2, layout: :layout1
end
