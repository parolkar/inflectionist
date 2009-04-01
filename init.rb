# Author: Er Abhishek Parolkar

require File.dirname(__FILE__) + '/lib/inflectionist'
require File.dirname(__FILE__) + '/lib/inflections'
require  File.dirname(__FILE__) + '/lib/string_ext'
ActiveSupport::Inflector.send(:extend, ParolkarInnovationLab::Inflectionist)
