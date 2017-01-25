require 'rubygems'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:html) do |t|
  t.cucumber_opts = "--format html > x.html" # Any valid command line option can go here.
end

Cucumber::Rake::Task.new(:json) do |t|
  t.cucumber_opts = "--format json > x.json" # Any valid command line option can go here.
end

Cucumber::Rake::Task.new(:headless) do |t|
  t.cucumber_opts = "BROWSER_TYPE=headless BROWSER=firefox --format html > x.html" # Any valid command line option can go here.
end