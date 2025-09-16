class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    class_eval %Q{
      def #{attr_name}
        @#{attr_name}
      end

      def #{attr_name}=(value)
        if !defined?(@#{attr_name}_history)
          @#{attr_name}_history = [nil]
        end
        @#{attr_name}_history << value
        @#{attr_name} = value
      end

      def #{attr_name}_history
        if !defined?(@#{attr_name}_history)
          @#{attr_name}_history = [nil]
        end
        @#{attr_name}_history
      end
    }
  end
end


