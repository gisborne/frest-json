File.delete('default.sqlite') rescue nil
require_relative('../lib/frest/setup.rb')
Frest::Setup::setup

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'frest/json'
