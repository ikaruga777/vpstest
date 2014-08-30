# encoding: utf-8

#main.rb  
require "rubygems"
require "sinatra"
require 'sinatra/reloader'
require './SDVXScore'


get '/' do
v= ""
s= "にっこにっこにー"
while(v.slice(v.size - s.size, v.size) != s)
	v += ("にっこにっこにー")[rand(s.size)]
end
	puts(v)
printf("%d回目でおわり",v.size())end

get '/:id' do
	users = Array.new()
	users.push params[:id]
	users.push 'fm'

	playdata = SDVXScore.new(users[0])
	p playdata.music_scores
	out = ""
	out << playdata.music_scores.each{
		|track|p track["title"].to_s
	}.class
	out
end