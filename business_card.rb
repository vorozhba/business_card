require 'nokogiri'

file_name = File.join(File.dirname(__FILE__),'/template.html')
html = File.read(file_name, encoding: 'UTF-8')
doc = Nokogiri::HTML(html)

puts "Введитее имя и фамилию:"
name = gets.chomp
puts "Введите должность:"
position = gets.chomp
puts "Введите url фотографии:"
url = gets.chomp
puts "Введите телефон:"
phone = gets.chomp
puts "Введите email:"
email = gets.chomp

doc.css('h1')[0].content = "#{name}"
doc.css('h2')[0].content = "#{position}"
doc.css('img')[0]['src'] = "#{url}"
doc.css('p')[0].content = "Телефон: #{phone}"
doc.css('p')[1].content = "E-mail: #{email}"

time = Time.now
file_time = time.strftime("%Y-%m-%d_%H-%M")

file_output = File.dirname(__FILE__) + '/' + file_time + '.html'
file = File.new(file_output, "w:UTF-8")
File.write(file, doc.to_html)
file.close

puts "Ваша визитка сохранена в файл #{file_time}.html"
