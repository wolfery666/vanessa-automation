﻿# language: ru



Функционал: Интерактивная справка. Панель "Дерево каталогов"

Сценарий: Панель "Дерево каталогов"

	* Привет! В этом уроке я расскажу тебе про панель "Дерево каталогов". Давай откроем второй экземпляр Ванессы в режиме обучения.
		И я открываю Vanessa Automation в режиме обучения
		И я делаю клик по элементу формы 'ЭтотСеанс' 'Запуск сценариев' 'TabItem' UI Automation
	
	* Отлично. Смотри. Панель для работы с каталогами фича файлов находится тут. При нажатии на эту кнопку происходит появление или скрытие панели работы с каталогами.
		И Пауза 1
		И Я делаю подсветку кнопки VA с именем "VanessaEditorПоказатьСкрытьДеревоКаталогов" и переход к ней "Панель работы с каталогами"

	* Она позволяет делать навигацию по дереву файлов или быстро найти нужную фичу по имени файла или её содержимому.
		И я перемещаю мышь в центр экрана
		И я делаю подсветку элементов VA "ЭтотСеанс" "Панель файлов" UI Automation
			| 'Имя'                       | 'Тип'  | 'РодительЭлемента'  |
			| 'ПутьКПапкеСФичами'         | ''     | ''                  |
			| 'СтрокаДляПоискаВнутриФичи' | ''     | ''                  |
			| 'ДревоФайлаФич'             | 'List' | 'ПутьКПапкеСФичами' |

	* Чтобы отобразилось дерево файлов нужно в первое поле ввести путь к каталогу, в котором лежат фича файлы. Давай для примера укажем здесь путь к фичам, которые используются при тестировании Vanessa automation.
			И Я делаю подсветку элемента VA "ПутьКПапкеСФичами" "Каталог фича файлов"
		И я ввожу текст в поле VA "ПутьКПапкеСФичами" "$КаталогИнструментов$\features"
		И Пауза 2
	
	* Теперь дерево каталогов заполнилось. Давай откроем какой-нибудь фича файл в редакторе. 
		И я запоминаю элемент "Core" с типом "" процесса "ЭтотСеанс" в переменную "IDЭлемента" UI Automation
		И я делаю клик в поле "$IDЭлемента$" UI Automation
		И Пауза 0.1
		И я нажимаю сочетание клавиш "RIGHT"
		И Пауза 0.1
		И я нажимаю сочетание клавиш "DOWN"
		И Пауза 0.1
		И я нажимаю сочетание клавиш "RIGHT"
		И Пауза 0.1
		И я нажимаю сочетание клавиш "DOWN"
		И Пауза 0.1
		И я делаю клик по элементу формы 'ЭтотСеанс' 'Issue-34-ОтчетAllure' '' UI Automation
		И я нажимаю сочетание клавиш "ENTER"
		И Пауза 1

	* Фича файл загрузился. При этом строка стала выделена жирным шрифтом, т.к. этот файл является в данный момент активным в редакторе.
		И я запоминаю элемент "Issue-34-ОтчетAllure" с типом "ListItem" процесса "ЭтотСеанс" в переменную "IDЭлемента" UI Automation
		И я делаю подсказку балун у элемента "$IDЭлемента$" UI Automation
			| 'text' | 'Открытый файл' |

	* О структуре фича файла и как правильно писать сценарии мы поговорим в другом уроке.

	* Теперь давай попробуем поискать фича файл по его имени или содержимому. Для этого в это поле нужно ввести строку поиска. Например поищем файлы по строке: Video.
		И Я делаю подсветку элемента VA "СтрокаДляПоискаВнутриФичи" "Фильтр"
		И я ввожу текст в поле VA "СтрокаДляПоискаВнутриФичи" "Video"
		И Пауза 1
		
	* При этом произошел отбор. Вверху списка оказались файлы, в имени которых есть заданная строка.
		И я запоминаю элемент "Issue-148-Video-Make" с типом "" процесса "ЭтотСеанс" в переменную "IDЭлемента" UI Automation
		И я делаю подсказку балун у элемента "$IDЭлемента$" UI Automation
			| 'text' | 'В имени файла есть строка "Video"' |

	* Далее идут файлы, для которых эта строка была найдена в их тексте.
	
	* Таким образом можно быстро найти нужный фича файл.

	* На этом всё, переходи к следующему уроку интерактивной справки.
	
