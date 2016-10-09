require 'test_helper'
require 'generators/configure/configure_generator'

class ConfigureGeneratorTest < Rails::Generators::TestCase
  tests ConfigureGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
