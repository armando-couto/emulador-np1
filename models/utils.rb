require './models/teste.rb'

class Utils

  def self.create_menu
    puts "------- MENU --------"
    puts "1 - Leitura do arquivo"
    puts "0 - Sair"
    gets.chomp
  end

  def self.create_menu_one
    puts "------- SUB_MENU 1 -------"
    puts "Qual o nome do Arquivo?"
    puts "0 - Voltar"
    name_file = gets.chomp
    if name_file != "0"
      teste= Teste.new
      teste.process= Utils.read_file name_file
      teste.execute
    end
  end

  def self.read_file name
    begin
      lines= []
      f = File.open("./files/#{name}.txt", "r")
      f.each_line do |line|
        lines.push line
      end
      f.close

      lines
    rescue
      print "Arquivo não existente!!!\n"
    end
  end
end