# frozen_string_literal: true

require 'rake'
require 'rspec/core/rake_task'

desc 'Run all RSpec tests in the spec directory'
RSpec::Core::RakeTask.new(:test) do |t|
  t.pattern = 'spec/*_spec.rb'
end
