

# in case active_support/inflector is required without the rest of active_support
require 'active_support/inflections'
require 'active_support/core_ext/string/inflections'
require 'active_support/inflector' unless defined?(ActiveSupport::Inflector)

module ActiveSupport
  module CoreExtensions
    module String #:nodoc:
       module Inflections
        def past_tensed
           Inflector.past_tensed(self)
        end
        def to_past_tense
           past_tensed
        end
      end
    end
  end
end
    
String.send :include, ActiveSupport::CoreExtensions::String::Inflections # this is required for above changes to take effect
      