require 'watir'
require 'page-object'
require 'data_magic'
require 'rspec/expectations'
require 'rspec/matchers'
require 'allure-cucumber'
require 'require_all'
require 'test/unit/assertions'
require_rel '../../PageObjects'

include Test::Unit::Assertions

DataMagic.yml_directory = 'data'


include AllureCucumber::DSL

AllureCucumber.configure do |config|
  config.output_dir = "allure"
end

if ENV['HEADLESS']
  require 'headless'
  headless = Headless.new
  headless.start
  at_exit do
    headless.destroy
  end
end