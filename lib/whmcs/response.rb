module WHMCS
  # WHMCS::Response is a wrapper around the xml or json returned
  # by WHMCS
  class Response
    attr_reader :body, :status, :attributes

    def initialize(attributes)
      @attributes = HashWithIndifferentAccess.new(attributes)
    end
  
    def success?
      @attributes['result'] == 'success'
    end
  
    def strip(str)
      str = str.gsub />\.+/, ">"
    end
    
    def key?(k)
      @attributes.key?(k)
    end
  
    def method_missing(m, *args, &block)
      if @attributes.key?(m.to_s)
        @attributes[m.to_s]
      else
        super
      end
    end
  end
end
