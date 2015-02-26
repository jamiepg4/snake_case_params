module SnakeCaseParams
  module ApplicationControllerPatch
    extend ActiveSupport::Concern

    included do
      if SnakeCaseParams.add_before_filter_to_application_controller
        before_filter :deep_snake_case_params!
      end
    end

    # convert camelCase json params to under_scored params
    def deep_snake_case_params!(val = params)
      case val
      when Array
        val.map { |v| deep_snake_case_params! v }
      when Hash
        val.keys.each do |k, v = val[k]|
          val.delete k
        val[k.underscore] = deep_snake_case_params!(v)
        end
        val
      else
        val
      end
    end
  end
end
