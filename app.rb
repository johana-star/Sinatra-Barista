#!/usr/bin/env ruby
# -*- coding: utf-8 -*-
# vi:sw=2:ts=2:et

require 'bundler/setup'
Bundler.require :default, ENV['RACK_ENV'].to_sym
#require 'sinatra/reloader'

get '/' do
  'hello world'
end
