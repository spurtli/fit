# frozen_string_literal: true

$LOAD_PATH.unshift File.join(File.dirname(__FILE__))

# Add the lib directory to the search path if it isn't included already
lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'
require 'rake/clean'
require 'yard'
YARD::Rake::YardocTask.new

Dir.glob('tasks/*.rake').each do |fn|
  begin
    load fn
  rescue LoadError
    puts "#{fn.split('/')[1]} tasks unavailable: #{$ERROR_INFO}"
  end
end

task default: :spec
task test: :spec

desc 'Run all unit and spec tests'
