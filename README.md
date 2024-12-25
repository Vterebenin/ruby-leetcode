# Leetcode Solutions with Ruby

This project provides a structured approach to solving Leetcode problems using Ruby. It includes a variety of Rake tasks to help automate the process of solving problems, running tests, and managing solutions.

## Features

- **Create new solution files**: Generate a new solution template for any Leetcode problem, categorized by problem type.
- **Run all tests**: Run all solution tests with a single command.
- **Task help**: Get detailed information on available Rake tasks to help you navigate the project.
- **Organized structure**: Store problems under specific categories (e.g., Two Pointers, Dynamic Programming) for better organization.

## Project Structure

```
.
├── solutions/
│   ├── two_pointers/
│   │   ├── problem_1.rb
│   │   ├── problem_2.rb
│   ├── dynamic_programming/
│   │   ├── problem_3.rb
│   │   ├── problem_4.rb
├── tests/
│   ├── two_pointers/
│   │   ├── problem_1_test.rb
│   ├── dynamic_programming/
│   │   ├── problem_3_test.rb
├── tasks/
│   ├── test.rake
│   ├── help.rake
│   ├── solutions.rake
├── README.md
```

- `solutions/`: Contains your Leetcode solutions categorized by problem types.
- `tests/`: Contains tests corresponding to your solutions.
- `tasks/`: Contains Rake tasks to automate various processes.
- `README.md`: Project documentation.

## Setup

1. Clone the repository:

   ```bash
   git clone https://github.com/yourusername/leetcode-solutions.git
   cd leetcode-solutions
   ```

2. Install necessary gems:

   ```bash
   bundle
   ```

3. Run the default task (run tests):

   ```bash
   rake
   ```

## Rake Tasks

### `solutions:new[type problem_name]`

Create a new solution file with the appropriate template.

**Example**:
```bash
rake solutions:new[two_pointers problem_name]
```

This will generate a new solution file under the `solutions/two_pointers/` directory with a basic template.

### `test:run`

Run all tests in the `tests/` folder.

```bash
rake test:run
```

### `help:print`

List all available Rake tasks and their descriptions.

```bash
rake help:print
```

### Default Task

Running `rake` without any arguments will run all the tests in your `tests/` folder:

```bash
rake
```

## Adding New Solutions

To add a new Leetcode solution:

1. Run the `solutions:new` task to create a new solution file under the correct category.
   
   Example:
   ```bash
   rake solutions:new[dynamic_programming unique_paths]
   ```

2. Implement your solution inside the generated file.
3. Create a corresponding test file under `tests/` following the same naming convention as the solution file.

## Running Tests

The project uses Rake's `TestTask` to run all tests. To run all tests:

```bash
rake test:run
```

### Test File Format

Each test file is expected to match the following format (based on your solution):

```ruby
require 'minitest/autorun'
require_relative '../solutions/your_solution_file'

class YourTestClass < Minitest::Test
  def test_solution
    # Implement your tests for the solution here
    assert_equal expected_result, YourSolution.new.solution_method(input)
  end
end
```

## Example of Creating a New Solution

To create a new solution for a problem under the `two_pointers` category, run:

```bash
rake solutions:new[two_pointers move_zeroes]
```

This will generate a file `solutions/two_pointers/move_zeroes.rb` with the following template:

```ruby
# @param {Integer[]} nums
# @return {Integer[]}
def move_zeroes(nums)
  # Your solution code here
end
```

Then, you can add the corresponding test in `tests/two_pointers/move_zeroes_test.rb`.

## Contributing

Please dont. Just fork it if you want and have fun.



