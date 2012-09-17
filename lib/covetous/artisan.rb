module Covetous
  class Artisan
    include HTTParty

    attr_accessor :url, :response

    def initialize(url_option, extra_options={})
      @response = self.class.get @url
    end

    def method_missing(name, *args, &block)
      camelcased_key = name.to_s.camelize(:lower)
      if @response.has_key?(camelcased_key)
        @response[camelcased_key]
      else
        super
      end
    end
  end
end
