require 'active_support/concern'

module Rinterface
  module Abstract
    extend ActiveSupport::Concern

    module ClassMethods
      def abstract(*args)
        args.each do |method_name|
          next unless method_name.is_a?(String) || method_name.is_a?(Symbol)

          abstract_methods << method_name.to_sym
        end
      end

      def abstract_methods
        @@abstruct_methods ||= []
      end
    end
  end
end
