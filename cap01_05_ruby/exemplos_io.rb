print "Escreva um texto: "
texto = gets
File.open("caelum.txt", "w") do |f|
  f << texto
end

Dir.entries('caelum').each do |file_name|
  idea = File.read(file_name)
  puts idea
end

require 'net/http'
Net::HTTP.start('www.caelum.com.br', 80) do |http|
  print(http.get('/').body)
end
