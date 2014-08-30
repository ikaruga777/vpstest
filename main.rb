# encoding: utf-8

#main.rb  
require "rubygems"
require "sinatra"
require 'sinatra/reloader'



get '/' do
	v= ""
	s= "にっこにっこにー"
	while(v.slice(v.size - s.size, v.size) != s)
		v += ("にっこにっこにー")[rand(s.size)]
	end
	
	return v + v.size.to_s+"回目でおわり"
end