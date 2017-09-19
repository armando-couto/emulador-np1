class Teste
  attr_accessor :process

  # (mov)\s+(\w+),\s+(\d+)
  def execute
    process.each do |line|
      if /(mov)/.match(line) != nil
        puts "MOV"
      elsif /(add)/.match(line) != nil
        puts "ADD"
      elsif /(inc)/.match(line) != nil
        puts "INC"
      elsif /(imul)/.match(line) != nil
        puts "IMUL"
      else
        puts "Error"
      end
    end
  end
end