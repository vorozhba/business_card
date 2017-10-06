# The "Business Card" App
## (генерация простой HTML-визитки с использованием `Nokogiri`)
### С чего начать:
Для работы программы требуется установка:
- `ruby` версии `>= 2.3.3`;
- гем `Nokogiri`.  

### Запуск: 
В командной строке: `ruby business_card.rb`  

### Описание:
Программа поочередно запрашивает:
- "Введитее имя и фамилию:"
- "Введите должность:"
- "Введите url фотографии:"
- "Введите телефон:"
- "Введите email:"  

После этого сохраняет HTML-файл визитки с именем вида `%Y-%m-%d_%H-%M.html` в текущую директорию.  
Шаблон для генерации HTML-файла находится в файле `template.html`.

### Пример:
![Окно программы](https://github.com/vorozhba/business_card/blob/master/figures/example1.png)
![Результат](https://github.com/vorozhba/business_card/blob/master/figures/example2.png)