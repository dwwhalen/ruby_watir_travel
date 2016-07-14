module Test
  module Unit
    module Assertions
      def assert(boolean, message="Warning, no assert message was provided")  # same as Test::Unit::Assertions.assert()
        $error_msg = message            # added to save the msg for database reporting later
        _wrap_assertion do
          assertion_message = nil
          case message
            when nil, String, Proc
            when AssertionMessage
              assertion_message = message
            else
              error_message = "assertion message must be String, Proc or "
              error_message << "#{AssertionMessage}: "
              error_message << "<#{message.inspect}>(<#{message.class}>)"
              raise ArgumentError, error_message, filter_backtrace(caller)
          end
          assert_block("assert should not be called with a block.") do
            !block_given?
          end
          assertion_message ||= build_message(message,
                                              "<?> is not true.",
                                              boolean)
          assert_block(assertion_message) do
            boolean
          end
        end
      end
    end
  end
end