require 'snake_case_params/application_controller_patch'

module SnakeCaseParams
  class Railtie < ::Rails::Railtie
    config.to_prepare do
      ::ApplicationController.send(:include, SnakeCaseParams::ApplicationControllerPatch)
    end
  end
end
