#require File.expand_path('./my_parent_class.rb', File.dirname(__FILE__)) or we can use the code below 👇
require_relative './my_parent_class.rb'
class MyClass < MyParentClass
  
end
