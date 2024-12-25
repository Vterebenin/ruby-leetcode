require "rake/testtask"

namespace :test do
  desc "Run all tests in the tests folder"
  Rake::TestTask.new do |t|
    t.libs << "tests"
    t.test_files = FileList["tests/**/*.rb"]
    t.verbose = true
  end
end

task default: "test:test"

