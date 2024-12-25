namespace :help do
  desc "List available Rake tasks"
  task :print do
    puts "\nAvailable Rake Tasks:"
    puts "======================"
    Rake.application.tasks.each do |task|
      next if task.comment.nil? || task.name =~ /^rake[[:space:]]/

      puts "#{task.name.ljust(20)} # #{task.comment}"
    end
  end
end
