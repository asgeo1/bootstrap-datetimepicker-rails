require "rails"
require "bootstrap-datetimepicker-rails/version"

module BootstrapDatetimepickerRails
  module Rails
    if ::Rails.version < "3.1"
      require "bootstrap-datetimepicker-rails/railtie"
    else
      require "bootstrap-datetimepicker-rails/engine"
    end
  end
end
