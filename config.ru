require 'rubygems'
require 'sinatra'
require 'app'

set :views, File.dirname(__FILE__) 

run Sinatra::Application