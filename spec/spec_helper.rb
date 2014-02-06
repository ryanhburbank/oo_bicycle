require 'rubygems'
require 'bundler/setup'
require 'simplecov'
SimpleCov.start
Bundler.require

require_relative '../app/gear'
require_relative '../app/wheel'
require_relative '../app/bicycle'