#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# vi:sw=2:ts=2:et

require 'bundler/setup'
Bundler.require :default
require 'sinatra/reloader' if development?

get '/' do
  erb :index
end

get '/shops' do
  "Hello World"
end

get '/shop/:id' do
end

get '/shop/:id/baristas' do
end

get '/shop/:id/barista/:name' do
end

get '/shop/:id/coffees' do
  erb :coffees
end

get '/baristas' do
  erb :baristas
end