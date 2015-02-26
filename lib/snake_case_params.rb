require 'snake_case_params/railtie'

module SnakeCaseParams
  @add_before_filter_to_application_controller = true

  class << self
    attr_accessor :add_before_filter_to_application_controller

    def configure
      yield self if block_given?
    end
  end
end
