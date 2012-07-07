require "minitest/rails/active_support"
require "action_view/test_case"

module MiniTest
  module Rails
    module ActionView
      class TestCase < MiniTest::Rails::ActiveSupport::TestCase
        include ::ActionView::TestCase::Behavior
      end
    end
  end
end

# Register by name, because Helpers are just modules
puts "Registering Helper TestCase!!!"
MiniTest::Spec.register_spec_type(/Helper$/,      MiniTest::Rails::ActionView::TestCase)
MiniTest::Spec.register_spec_type(/HelperTest$/,  MiniTest::Rails::ActionView::TestCase)
MiniTest::Spec.register_spec_type(/Helper Test$/, MiniTest::Rails::ActionView::TestCase)