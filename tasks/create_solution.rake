namespace :solutions do
  desc "Create a new solution file and its test template under a type directory; Example: rake solutions:new[type,problem_name]"
  task :new, [:type, :problem_name] do |t, args|
    type = args[:type]
    problem_name = args[:problem_name]

    if type.nil? || type.strip.empty? || problem_name.nil? || problem_name.strip.empty?
      puts "Error: You must provide both a type and a problem name. Usage: rake solutions:new[type,problem_name]"
      next
    end

    # Convert problem name to a snake_case filename
    filename = problem_name.strip.downcase.gsub(/\s+/, '_')

    # Paths
    type_dir = File.join("problems", type.strip.downcase)
    solution_file = File.join(type_dir, "#{filename}.rb")
    test_dir = File.join("tests", type.strip.downcase)
    test_file = File.join(test_dir, "#{filename}_test.rb")

    # Create directories if they don't exist
    FileUtils.mkdir_p(type_dir)
    FileUtils.mkdir_p(test_dir)

    # Check if files already exist
    if File.exist?(solution_file) || File.exist?(test_file)
      puts "Error: A solution or test file for '#{filename}' under type '#{type}' already exists!"
      next
    end

    # Create solution file
    File.open(solution_file, "w") do |file|
      file.write(<<~RUBY)
        # frozen_string_literal: true

        # Solution for #{problem_name} in #{type}
        # @param {TYPE} param
        # @return {TYPE}
        def #{filename}(param)
          # TODO: Implement this solution
        end
      RUBY
    end

    # Create test file
    File.open(test_file, "w") do |file|
      file.write(<<~RUBY)
        # frozen_string_literal: true

        require "minitest/autorun"
        require_relative "../../problems/#{type.strip.downcase}/#{filename}"

        class Test#{filename.split('_').map(&:capitalize).join} < Minitest::Test
          def test_example
            # TODO: Add test cases
            assert_equal expected_result, #{filename}(input)
          end
        end
      RUBY
    end

    puts "Created solution file: #{solution_file}"
    puts "Created test file: #{test_file}"
  end
end
