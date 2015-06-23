a = ARGV[0]
b = ARGV[1]

if a == '--help'
  abort('to hide content: first arg = image file, second arg = zip file | to show content: type in --ds')
end

  if a != '--ds'
    if a && b != nil
      puts "Choose an image filename to hide content to (same filetype as image in argument 1):"
      c = STDIN.gets.chomp
      stegano = `cat #{a} #{b} > #{c}`
    else
      abort("invalid input")
    end
    puts "steganography done!"
  else
    puts "Choose a filename to unveil hidden content:"
    d = STDIN.gets.chomp
    destegano = `unzip #{d}`
  end
