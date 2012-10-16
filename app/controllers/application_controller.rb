class ApplicationController < ActionController::Base

  protect_from_forgery

  # Previewify::Control allows you to switch between preview and live mode
  include Previewify::Control

end
