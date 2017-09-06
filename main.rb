$LOAD_PATH.unshift( File.join( File.dirname(__FILE__), 'lib' ) )
# require 'models/cpu'
# require 'models/buffer'
# require 'models/memory'
require './models/utils.rb'

option = Utils.create_menu
case option.to_i
  when 1
    puts "------- SUB_MENU -------"
    puts "Qual o nome do Arquivo?"
    puts "0 - Voltar"
    name_file = gets.chomp
    Utils.read_file name_file
  else
    exit
end







