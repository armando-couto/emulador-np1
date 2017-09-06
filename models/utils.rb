class Utils

  def self.create_menu
    puts "------- MENU --------"
    puts "1 - Leitura do arquivo"
    puts "0 - Sair"
    gets.chomp
  end

  def self.read_file name
    f = File.open("./files/#{name}.txt", "r")
    f.each_line do |line|
      puts line
    end
    f.close
  end
end