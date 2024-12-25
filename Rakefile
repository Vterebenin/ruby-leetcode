require "rake/testtask"

Rake::TestTask.new do |t|
  t.libs << "tests"
  t.test_files = FileList["tests/**/*.rb"]
  t.verbose = true
end

Dir.glob("tasks/**/*.rake").each { |r| import r }

task default: :test