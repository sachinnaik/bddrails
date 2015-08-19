require 'rubygems'
require 'spork'
#uncomment the following line to use spork with the debugger
#require 'spork/ext/ruby-debug'

Spork.prefork do
    
  # See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
  RSpec.configure do |config|
    config.expect_with :rspec do |expectations|
      expectations.include_chain_clauses_in_custom_matcher_descriptions = true
    end

    config.mock_with :rspec do |mocks|
      mocks.verify_partial_doubles = true
    end

    # The settings below are suggested to provide a good initial experience
    # with RSpec, but feel free to customize to your heart's content.
    #=begin
      config.filter_run :focus
      config.run_all_when_everything_filtered = true

      config.example_status_persistence_file_path = "spec/examples.txt"

      config.disable_monkey_patching!

      if config.files_to_run.one?
        config.default_formatter = 'doc'
      end

      config.profile_examples = 10

      config.order = :random

      Kernel.srand config.seed
    #=end
  end
end

Spork.each_run do
  # This code will be run each time you run your specs.

end



