require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:MyShop.db"

class Client < ActiveRecord::Base
  validates :name, presence: true
  validates :phone, presence: true
  validates :datestamp, presence: true
  validates :color, presence: true
end

class Barber < ActiveRecord::Base
end

class Product < ActiveRecord::Base
end

before do
  @products = Product.all
  @barbers = Barber.all
end

get '/' do
  erb :index
end

get '/visit' do
  @c = Client.new 
  erb :visit
end

post '/visit' do
  @c = Client.new params[:client]
  if @c.save
    erb "<h2>Ви стали нашим гостем!</h2>"
  else
    @error = @c.errors.full_messages.first
    erb :visit
  end
end

get '/barber/:id' do
  @barber = Barber.find(params[:id])
  erb :barber
end

get '/bookings' do
  @clients = Client.order('created_at DESC')
  erb :bookings
end

get '/client/:id' do
  @client = Client.find(params[:id])
  erb :client
end

get '/about' do
  erb :about
end

post '/cart' do
  erb "Пiца додана!"
end