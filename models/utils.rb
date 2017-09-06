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
      Utils.read_file name_file
    end
  end

  def self.read_file name
    begin
      f = File.open("./files/#{name}.txt", "r")
      f.each_line do |line|
        puts line
      end
      f.close
    rescue
      print "Arquivo não existente!!!\n"
    end
  end
end