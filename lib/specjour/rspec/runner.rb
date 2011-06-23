module Specjour::RSpec::Runner
  def self.run(spec, output)
    reset
    args = ['--format=Specjour::RSpec::LillqFormatter', spec]
    ::RSpec::Core::Runner.run_in_process args, $stderr, output
  end

  def self.reset
    ::RSpec.world.instance_variable_set(:@example_groups, [])
    ::RSpec.configuration.instance_variable_set(:@formatter, nil)
  end
end
