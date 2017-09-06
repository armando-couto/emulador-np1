# require 'models/cpu'
# require 'models/buffer'
# require 'models/memory'
require './models/utils.rb'

while true
  option = Utils.create_menu
  case option.to_i
    when 1
      Utils.create_menu_one
    else
      exit
  end
end
