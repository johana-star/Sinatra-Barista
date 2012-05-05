#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# vi:sw=2:ts=2:et:ft=ruby

require 'bundler/setup'
Bundler.require :default, ENV['RACK_ENV']
require 'sinatra/reloader' if development?

APP_DIR = File.dirname(__FILE__)

configure :development do
  DataMapper.setup(:default, "sqlite:///#{APP_DIR}/app.db")
end

configure :production do
  # port 5432
  DataMapper.setup(:default, 'postgres://wttaflmvpjlqwe:NrGwd1c6FNXnuDB4gJx5DsnNju@pg57.sharedpg.heroku.com/simple_stream_45147')
end

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

get '/dm/:action' do
  require  'dm-migrations'

  Dir.glob("#{APP_DIR}/models/*.rb", &method(:require))
  DataMapper.finalize

  case params[:action]
  when 'migrate'
    DataMapper.auto_migrate!
    'migrated'
  when 'upgrade'
    DataMapper.auto_upgrade!
    'upgraded'
  else
    'unknown action'
  end
end

