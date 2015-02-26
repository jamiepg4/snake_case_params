class EchoController < ApplicationController
  def echo
    render json: params
  end
end
