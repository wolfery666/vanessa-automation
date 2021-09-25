﻿
///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,ОписаниеШага,ТипШага,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ПокаВыражениеВстроенногоЯзыкаИстинноТогда(Парам01)","ПокаВыражениеВстроенногоЯзыкаИстинноТогда","И пока выражение встроенного языка 'УсловиеНаВстроенномЯзыке' истинно тогда","Цикл. Выполняет шаги пока истинно условие","Встроенный язык","Цикл");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ДляКаждойСтрокиТаблицыЯВыполняю(Парам01)","ДляКаждойСтрокиТаблицыЯВыполняю","И для каждой строки таблицы ""ИмяТаблицы"" я выполняю"
	,"Цикл. Выполняет шаги для каждой строки таблицы.
	|Если передано имя таблицы, то будет попытка перебрать все строки в таблице клиента тестирования. 
	|Если передана таблица Gherkin, то будут перебираться её строки. Первая строка должа содержать имена колонок. 
	|При переходе к следующей строке будет создаваться переменная с именем каждой колонки."
	,"UI.Таблицы.Перебор строк","Цикл");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ДляКаждойСтрокиТаблицыЯВыполняюВОбратномПорядке(Парам01)","ДляКаждойСтрокиТаблицыЯВыполняюВОбратномПорядке","И для каждой строки таблицы ""ИмяТаблицы"" я выполняю в обратном порядке"
	,"Цикл. Выполняет шаги для каждой строки таблицы. Перебор строк таблицы происходит снизу вверх.
	|Если передано имя таблицы, то будет попытка перебрать все строки в таблице клиента тестирования. 
	|Если передана таблица Gherkin, то будут перебираться её строки. Первая строка должа содержать имена колонок. 
	|При переходе к следующей строке будет создаваться переменная с именем каждой колонки."
	,"UI.Таблицы.Перебор строк","Цикл");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ДляКаждойСтрокиТаблицыЯВыполняюИспользуяКолонку(Парам01)","ДляКаждойСтрокиТаблицыЯВыполняюИспользуяКолонку","И для каждой строки таблицы ""ИмяТаблицы"" я выполняю используя колонку ""N"""
	,"Цикл. Выполняет шаги для каждой строки таблицы. При этом будет происходить явный переход по номеру строки.
	|Если передано имя таблицы, то будет попытка перебрать все строки в таблице клиента тестирования. 
	|Если передана таблица Gherkin, то будут перебираться её строки. Первая строка должа содержать имена колонок. 
	|При переходе к следующей строке будет создаваться переменная с именем каждой колонки."
	,"UI.Таблицы.Перебор строк","Цикл");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ДляКаждойСтрокиТаблицыЯВыполняюИспользуяКолонкуВОбратномПорядке(Парам01)","ДляКаждойСтрокиТаблицыЯВыполняюИспользуяКолонкуВОбратномПорядке","И для каждой строки таблицы ""ИмяТаблицы"" я выполняю используя колонку ""N"" в обратном порядке"
	,"Цикл. Выполняет шаги для каждой строки таблицы. При этом будет происходить явный переход по номеру строки снизу вверх.
	|Если передано имя таблицы, то будет попытка перебрать все строки в таблице клиента тестирования. 
	|Если передана таблица Gherkin, то будут перебираться её строки. Первая строка должа содержать имена колонок. 
	|При переходе к следующей строке будет создаваться переменная с именем каждой колонки."
	,"UI.Таблицы.Перебор строк","Цикл");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ПокаВТаблицеКоличествоСтрокТогда(Парам01,Парам02,Парам03)","ПокаВТаблицеКоличествоСтрокТогда","И пока в таблице ""ИмяТаблицы"" количество строк "">"" 0 Тогда","Цикл. Выполняет шаги до тех пор, пока в таблице есть строки","UI.Таблицы.Перебор строк","Цикл");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"СлужебноеУсловиеВКоторомМеняетсяСлужебнаяПеременнаяИстинноТогда()","СлужебноеУсловиеВКоторомМеняетсяСлужебнаяПеременнаяИстинноТогда","Если служебное условие, в котором меняется служебная переменная истинно тогда","","","Условие");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ВТечениеСекундЯВыполняю(Парам01)","ВТечениеСекундЯВыполняю","И в течение 100 секунд я выполняю","Цикл. Выполняет действия в цикле в течение заданного числа секунд. По истечении времени вызывает исключение, если не был вызван шаг <Тогда я прерываю цикл>","Прочее.Циклы","Цикл");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯПрерываюЦикл()","ЯПрерываюЦикл","Тогда я прерываю цикл","Прерывает выполнение цикла аналогично оператору ""Прервать"" из встроенного языка 1С.","Прочее.Циклы");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯПродолжаюЦикл()","ЯПродолжаюЦикл","Тогда я продолжаю цикл","Продолжает выполнение цикла аналогично оператору ""Продолжать"" из встроенного языка 1С.","Прочее.Циклы");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯДелаюРаз(Парам01)","ЯДелаюРаз","И я делаю 10 раз","Цикл. Выполняет нужные действия указанное число раз. Можно прервать с помощью шага <Тогда я прерываю цикл>.","Прочее.Циклы","Цикл");
	
	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
//И Пока выражение встроенного "Контекст.СлужебнаяПеременная < 2" языка истинно тогда
//@ПокаВыражениеВстроенногоЯзыкаИстинноТогда(Парам01)
Процедура ПокаВыражениеВстроенногоЯзыкаИстинноТогда(Выражение) Экспорт
	ИмяЦикла = "_Цикл_" + XMLСтрока(Ванесса.ПолучитьСостояниеVanessaAutomation().ТекущийШаг.ИдСтроки);
	Если НЕ Контекст.Свойство(ИмяЦикла) Тогда
		Контекст.Вставить(ИмяЦикла,Истина);
	КонецЕсли;	 

	Если Контекст.Свойство("ЗавершитьВыполнениеЦикла") Тогда
		Если Контекст.ЗавершитьВыполнениеЦикла = Истина Тогда
			Контекст.ЗавершитьВыполнениеЦикла = Ложь;
			Ванесса.УстановитьРезультатУсловия(Ложь);
			Если Контекст.Свойство(ИмяЦикла) Тогда
				Контекст.Удалить(ИмяЦикла);
			КонецЕсли;	 
			
			Возврат;
		КонецЕсли;	 
	КонецЕсли;	 
	
	ПолучилосьВычислить = Ложь;
	Попытка
		ТекстИсключения = Неопределено;
		Результат = Ванесса.ВычислитьВнутреннееВыражение(Выражение, ТекстИсключения);
		ПолучилосьВычислить = Истина;
	Исключение
		Результат = Выражение;
	КонецПопытки;
	
	Если НЕ ПолучилосьВычислить Тогда
		Попытка
			ТекстИсключения = Неопределено;
			Выражение = Ванесса.ЗаменитьСлужебныеСимволыВВыраженииДляВычисления(
				Ванесса.ЗначениеПараметраТекущегоСценария(0));
			Результат = Ванесса.ВычислитьВнутреннееВыражение(Выражение, ТекстИсключения);
		Исключение
			Результат = Выражение;
		КонецПопытки;
	КонецЕсли;	 
	
	Если Результат Тогда
		Ванесса.УстановитьРезультатУсловия(Истина);
	Иначе	
		Ванесса.УстановитьРезультатУсловия(Ложь);
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//И для каждой строки таблицы "ТабличнаяЧасть1" я выполняю
//@ДляКаждойСтрокиТаблицыЯВыполняю(Парам01)
Процедура ДляКаждойСтрокиТаблицыЯВыполняю(ИмяТЧ,ИмяКолонкиДляПерехода = Неопределено, Направление = "Вниз") Экспорт
	ИмяЦикла = "_Цикл_" + XMLСтрока(Ванесса.ПолучитьСостояниеVanessaAutomation().ТекущийШаг.ИдСтроки);
	СчетчикЦикла = ИмяЦикла + "_Счетчик";
	
	Если Контекст.Свойство("ЗавершитьВыполнениеЦикла") Тогда
		Если Контекст.ЗавершитьВыполнениеЦикла = Истина Тогда
			Контекст.ЗавершитьВыполнениеЦикла = Ложь;
			Ванесса.УстановитьРезультатУсловия(Ложь);
			Если Контекст.Свойство(ИмяЦикла) Тогда
				Контекст.Удалить(ИмяЦикла);
			КонецЕсли;	 
			
			Возврат;
		КонецЕсли;	 
	КонецЕсли;	 
	
	Если ТипЗнч(ИмяТЧ) = Тип("Строка") Тогда
		ТЧ = Ванесса.НайтиТЧПоИмени(ИмяТЧ);
		
		Если НЕ Контекст.Свойство(ИмяЦикла) Тогда
			//значит это блок инициализации
			Контекст.Вставить(ИмяЦикла,Истина);
			Контекст.Вставить(СчетчикЦикла,1);
			
			Если Направление = "Вниз" Тогда
				ТЧ.ПерейтиКПервойСтроке();
			Иначе	
				ТЧ.ПерейтиКПоследнейСтроке();
			КонецЕсли;	 
			Ванесса.УстановитьРезультатУсловия(Истина);
			
			Если ИмяКолонкиДляПерехода <> Неопределено И Направление <> "Вниз" Тогда
				ВыделенныеСтроки = ТЧ.ПолучитьВыделенныеСтроки();
				ТекущееЗначениеСтроки = XMLСтрока(ВыделенныеСтроки[0][ИмяКолонкиДляПерехода]);
				Контекст.Вставить(СчетчикЦикла,Число(ТекущееЗначениеСтроки));
			КонецЕсли;	 
			
			Возврат;
		КонецЕсли;	 
		
		Если ИмяКолонкиДляПерехода <> Неопределено И Направление <> "Вниз" Тогда
			Контекст[СчетчикЦикла] = Контекст[СчетчикЦикла] - 1;		
		Иначе	
			Контекст[СчетчикЦикла] = Контекст[СчетчикЦикла] + 1;		
		КонецЕсли;	 
		
		Попытка
			Если ИмяКолонкиДляПерехода = Неопределено Тогда
				Если Ванесса.Версия8312ИлиВыше И ТЧ.ТекущийРежимРедактирование() Тогда
					ТЧ.ЗакончитьРедактированиеСтроки();
				КонецЕсли;	 
				Если Направление = "Вниз" Тогда
					ТЧ.ПерейтиКСледующейСтроке();
				Иначе	
					ТЧ.ПерейтиКПредыдущейСтроке();
				КонецЕсли;	 
			Иначе	
				ОписаниеСтроки = Новый Соответствие;
				ОписаниеСтроки.Вставить(ИмяКолонкиДляПерехода,XMLСтрока(Контекст[СчетчикЦикла]));
				ВыделенныеСтроки = ТЧ.ПолучитьВыделенныеСтроки();
				ТекущееЗначениеСтроки = ВыделенныеСтроки[0][ИмяКолонкиДляПерехода];
				Если Направление = "Вниз" Тогда
					ТЧ.ПерейтиКСтроке(ОписаниеСтроки);
				Иначе
					ТЧ.ПерейтиКСтроке(ОписаниеСтроки,Вычислить("НаправлениеПереходаКСтроке.Вверх"));
				КонецЕсли;	 
				
				ВыделенныеСтроки = ТЧ.ПолучитьВыделенныеСтроки();
				НовоеЗначениеСтроки = ВыделенныеСтроки[0][ИмяКолонкиДляПерехода];
				Если ТекущееЗначениеСтроки = НовоеЗначениеСтроки Тогда
					Ванесса.УстановитьРезультатУсловия(Ложь);
					Контекст.Удалить(ИмяЦикла);
					Если Контекст.Свойство(СчетчикЦикла) Тогда
						Контекст.Удалить(СчетчикЦикла);
					КонецЕсли;	 
					Возврат;
				КонецЕсли;	 
			КонецЕсли;	 
			
			Ванесса.УстановитьРезультатУсловия(Истина);
		Исключение
			Ванесса.УстановитьРезультатУсловия(Ложь);
			Контекст.Удалить(ИмяЦикла);
			Если Контекст.Свойство(СчетчикЦикла) Тогда
				Контекст.Удалить(СчетчикЦикла);
			КонецЕсли;	 
		КонецПопытки;
	Иначе
		//значит это таблица Gherkin
		ТабПарам = ИмяТЧ;
		
		Если ТабПарам.Количество() <= 1 Тогда
			ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("В таблице должно быть боле 1 строки, а получили <%1> строк.");
			ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ТабПарам.Количество());
			ВызватьИсключение ТекстСообщения;
		КонецЕсли;	 
		
		Если НЕ Контекст.Свойство(ИмяЦикла) Тогда
			//значит это блок инициализации
			Контекст.Вставить(ИмяЦикла,Истина);
			Контекст.Вставить(СчетчикЦикла,0);
		КонецЕсли;	 
		
		Контекст[СчетчикЦикла] = Контекст[СчетчикЦикла] + 1;
		
		Если (Контекст[СчетчикЦикла]) > (ТабПарам.Количество()-1) Тогда
			Ванесса.УстановитьРезультатУсловия(Ложь);
			Контекст.Удалить(ИмяЦикла);
			Если Контекст.Свойство(СчетчикЦикла) Тогда
				Контекст.Удалить(СчетчикЦикла);
			КонецЕсли;	 
			Возврат;
		КонецЕсли;	 
		
		Шапка = ТабПарам[0];
		СтрокаТаблицы = ТабПарам[Контекст[СчетчикЦикла]];
		
		Сч = 0;
		Для Каждого ЭлементШапки Из Шапка Цикл
			Сч = Сч + 1;
			Ключ       = ЭлементШапки.Ключ;
			ИмяКолонки = ЭлементШапки.Значение;
			Значение   = СтрокаТаблицы[Ключ];
			Ванесса.СохранитьЗначениеПеременнойВКонтекст(ИмяКолонки, Значение, Истина);
		КонецЦикла;	 
		
		Ванесса.УстановитьРезультатУсловия(Истина);
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//И для каждой строки таблицы "ТабличнаяЧасть1" я выполняю используя колонку "N"
//@ДляКаждойСтрокиТаблицыЯВыполняюИспользуяКолонку(Парам01)
Процедура ДляКаждойСтрокиТаблицыЯВыполняюИспользуяКолонку(ИмяТЧ,ИмяКолонки) Экспорт
	ДляКаждойСтрокиТаблицыЯВыполняю(ИмяТЧ,ИмяКолонки);
КонецПроцедуры

&НаКлиенте
//Пока в таблице "ТабличнаяЧасть1" количество строк ">" 0 Тогда
//@ПокаВТаблицеКоличествоСтрокТогда(Парам01,Парам02,Парам03)
Процедура ПокаВТаблицеКоличествоСтрокТогда(ИмяТаблицы,Знач Сравнение,КоличествоСтрок) Экспорт
	ИмяЦикла = "_Цикл_" + XMLСтрока(Ванесса.ПолучитьСостояниеVanessaAutomation().ТекущийШаг.ИдСтроки);
	
	Если Контекст.Свойство("ЗавершитьВыполнениеЦикла") Тогда
		Если Контекст.ЗавершитьВыполнениеЦикла = Истина Тогда
			Контекст.ЗавершитьВыполнениеЦикла = Ложь;
			Ванесса.УстановитьРезультатУсловия(Ложь);
			Если Контекст.Свойство(ИмяЦикла) Тогда
				Контекст.Удалить(ИмяЦикла);
			КонецЕсли;	 
			
			Возврат;
		КонецЕсли;	 
	КонецЕсли;	 

	ТЧ      = Ванесса.НайтиТЧПоИмени(ИмяТаблицы);
	Таблица = Ванесса.ПолучитьЗначениеТестируемаяТаблицаФормы(ТЧ);
	Если Таблица = Неопределено Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не смог получить строки ТЧ <%1>");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяТаблицы);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	Контекст.Вставить("_ВременнаяТаблицаВычислитьВыражение",Таблица);
	Сравнение = Ванесса.ПолучитьОператорПоТексту(Сравнение);
	Выражение = "Контекст._ВременнаяТаблицаВычислитьВыражение.Количество() " + Сравнение +  " " + XMLСтрока(КоличествоСтрок);
	
	Попытка
		Результат = Ванесса.ВычислитьВнутреннееВыражение(Выражение);
	Исключение
		Результат = Выражение;
	КонецПопытки;
	
	Если Результат Тогда
		Ванесса.УстановитьРезультатУсловия(Истина);
	Иначе	
		Ванесса.УстановитьРезультатУсловия(Ложь);
	КонецЕсли;
	
	Контекст.Удалить("_ВременнаяТаблицаВычислитьВыражение");
КонецПроцедуры

&НаКлиенте
//Если служебное условие, в котором меняется служебная переменная истинно тогда
//@СлужебноеУсловиеВКоторомМеняетсяСлужебнаяПеременнаяИстинноТогда()
Процедура СлужебноеУсловиеВКоторомМеняетсяСлужебнаяПеременнаяИстинноТогда() Экспорт
	Контекст.СлужебнаяПеременная1 = Контекст.СлужебнаяПеременная1 + 1;
	Если Контекст.СлужебнаяПеременная1 < 4 Тогда
		Ванесса.УстановитьРезультатУсловия(Истина);
		Возврат;
	КонецЕсли;	 
	
	Ванесса.УстановитьРезультатУсловия(Ложь);
КонецПроцедуры


&НаКлиенте
Процедура ОбработчикОжиданияВТечениеСекундЯВыполняю()
	ИмяОбработчика = "ОбработчикОжиданияВТечениеСекундЯВыполняю";
	
	Если НЕ Ванесса.ИдетВыполнениеСценариев() Тогда
		ОтключитьОбработчикОжидания(ИмяОбработчика);
		Возврат;
	КонецЕсли;
	
	Если ТекущаяДата() >= ДатаОкончанияОбработкиОжидания Тогда
		ОтключитьОбработчикОжидания(ИмяОбработчика);
		Ванесса.УстановитьРезультатУсловия(Ложь);
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не удалось дождаться события завершения цикла в течение <%1> секунд.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", КоличествоСекундОбработкаОжидания);
		
		Если Контекст.Свойство("ТекущаяТЧ") Тогда
			Если Контекст.ТекущаяТЧ <> Неопределено Тогда
				ДопПараметры = Новый Структура;
				Попытка
					ЗначениеТЧ = Ванесса.ПолучитьЗначениеТестируемаяТаблицаФормы(Контекст.ТекущаяТЧ, ДопПараметры);
				Исключение
					ЗначениеТЧ = Неопределено;
				КонецПопытки;
				
				Если ЗначениеТЧ <> Неопределено Тогда
					МакетЗначениеТЧ = Ванесса.ПреобразоватьЗначениеВМакет(ЗначениеТЧ);
					Ванесса.ПрикрепитьМакетКСценарию(МакетЗначениеТЧ,Ванесса.Локализовать("ТекущееЗначениеТаблицы"));
				КонецЕсли;	 
			КонецЕсли;	 
		КонецЕсли;	 
		
		Если Контекст.Свойство(ИмяЦикла) Тогда
			Контекст.Удалить(ИмяЦикла);
			Контекст.Удалить(ИмяЦикла + "_ДатаОкончанияОбработкиОжидания");
		КонецЕсли;	 
		
		Ванесса.ПродолжитьВыполнениеШагов(Истина,Ванесса.ПолучитьТекстСообщенияПользователю(ТекстСообщения));
		
		Возврат;
	КонецЕсли;	
	
	Ванесса.УстановитьРезультатУсловия(Истина);
	Ванесса.ПродолжитьВыполнениеШагов();
КонецПроцедуры

&НаКлиенте
//И в течение 10 секунд я выполняю
//@ВТечениеСекундЯВыполняю(Парам01)
Процедура ВТечениеСекундЯВыполняю(КоличествоСекунд) Экспорт
	СостояниеVA = Ванесса.ПолучитьСостояниеVanessaAutomation();
	ИдСтроки                 = СостояниеVA.ТекущийШаг.ИдСтроки;
	ИмяЦикла                 = "_Цикл_" + XMLСтрока(ИдСтроки);
	
	Если Контекст.Свойство("ЗавершитьВыполнениеЦикла") Тогда
		Если Контекст.ЗавершитьВыполнениеЦикла = Истина Тогда
			Контекст.ЗавершитьВыполнениеЦикла = Ложь;
			Ванесса.УстановитьРезультатУсловия(Ложь);
			Если Контекст.Свойство(ИмяЦикла) Тогда
				Контекст.Удалить(ИмяЦикла);
			КонецЕсли;	 
			Если Контекст.Свойство(ИмяЦикла + "_ДатаОкончанияОбработкиОжидания") Тогда
				Контекст.Удалить(ИмяЦикла + "_ДатаОкончанияОбработкиОжидания");
			КонецЕсли;	 
			
			Возврат;
		КонецЕсли;	 
	КонецЕсли;	 
	
	Ванесса.ЗапретитьВыполнениеШагов();
	
	Если Не Контекст.Свойство(ИмяЦикла) Тогда
		//при запуске первой итерации определяем параметры окончания
		Контекст.Вставить(ИмяЦикла, Истина);
		
		ДатаНачалаОбработкиОжидания       = ТекущаяДата();
		КоличествоСекундОбработкаОжидания = Ванесса.ЗначениеТаймаутаДляАсинхронногоШага(КоличествоСекунд);
		ДатаОкончанияОбработкиОжидания    = ДатаНачалаОбработкиОжидания + КоличествоСекундОбработкаОжидания;
		
		Контекст.Вставить(ИмяЦикла + "_ДатаОкончанияОбработкиОжидания", ДатаОкончанияОбработкиОжидания);
	КонецЕсли;	 
	
	ДатаОкончанияОбработкиОжидания = Контекст[ИмяЦикла + "_ДатаОкончанияОбработкиОжидания"];
	
	ПодключитьОбработчикОжидания("ОбработчикОжиданияВТечениеСекундЯВыполняю", 1, Истина);
КонецПроцедуры

&НаКлиенте
//Тогда я прерываю цикл
//@ЯПрерываюЦикл()
Процедура ЯПрерываюЦикл() Экспорт
	Контекст.Вставить("ЗавершитьВыполнениеЦикла",Истина);
	Ванесса.УстановитьПризнакЧтоСледующимШагомДолженБытьШагЦикла();
КонецПроцедуры

&НаКлиенте
//Тогда я продолжаю цикл
//@ЯПродолжаюЦикл()
Процедура ЯПродолжаюЦикл() Экспорт
	Ванесса.УстановитьПризнакЧтоСледующимШагомДолженБытьШагЦикла();
КонецПроцедуры

&НаКлиенте
//И я делаю 10 раз
//@ЯДелаюРаз(Парам01)
Процедура ЯДелаюРаз(Знач КоличествоИтераций) Экспорт
	
	СостояниеVA = Ванесса.ПолучитьСостояниеVanessaAutomation();
	ИдСтроки                 = СостояниеVA.ТекущийШаг.ИдСтроки;
	ИмяЦикла                 = "_Цикл_" + XMLСтрока(ИдСтроки);
	ИмяСвойстваЦикла         = "_Цикл_Свойства" + XMLСтрока(ИдСтроки);
	
	Если Контекст.Свойство("ЗавершитьВыполнениеЦикла") Тогда
		Если Контекст.ЗавершитьВыполнениеЦикла = Истина Тогда
			Контекст.ЗавершитьВыполнениеЦикла = Ложь;
			Ванесса.УстановитьРезультатУсловия(Ложь);
			Если Контекст.Свойство(ИмяЦикла) Тогда
				Контекст.Удалить(ИмяЦикла);
			КонецЕсли;	 
			Если Контекст.Свойство(ИмяСвойстваЦикла) Тогда
				Контекст.Удалить(ИмяСвойстваЦикла);
			КонецЕсли;	 
			
			Возврат;
		КонецЕсли;	 
	КонецЕсли;	 
	
	Если Не Контекст.Свойство(ИмяЦикла) Тогда
		//при запуске первой итерации определяем параметры окончания
		Контекст.Вставить(ИмяЦикла,Истина);
		СвойстваЦикла = Новый Структура;
		ТекущийНомерИтерации = 0;
		МаксЧислоИтераций    = КоличествоИтераций;
		СвойстваЦикла.Вставить("ТекущийНомерИтерации", ТекущийНомерИтерации);
		СвойстваЦикла.Вставить("МаксЧислоИтераций", МаксЧислоИтераций);
		Контекст.Вставить(ИмяСвойстваЦикла, СвойстваЦикла);
		
	КонецЕсли;	 
	
	СвойстваЦикла = Контекст[ИмяСвойстваЦикла];
	
	СвойстваЦикла.ТекущийНомерИтерации = СвойстваЦикла.ТекущийНомерИтерации + 1;
	Если СвойстваЦикла.ТекущийНомерИтерации > СвойстваЦикла.МаксЧислоИтераций Тогда
		Ванесса.УстановитьРезультатУсловия(Ложь);
		
		Если Контекст.Свойство(ИмяЦикла) Тогда
			Контекст.Удалить(ИмяЦикла);
		КонецЕсли;	 
		Если Контекст.Свойство(ИмяСвойстваЦикла) Тогда
			Контекст.Удалить(ИмяСвойстваЦикла);
		КонецЕсли;	 
		
		Возврат;
	КонецЕсли;	 
	
	Ванесса.УстановитьРезультатУсловия(Истина);
	
КонецПроцедуры

&НаКлиенте
//И для каждой строки таблицы 'Товары' я выполняю в обратном порядке
//@ДляКаждойСтрокиТаблицыЯВыполняюВОбратномПорядке(Парам01)
Функция ДляКаждойСтрокиТаблицыЯВыполняюВОбратномПорядке(ИмяТЧ) Экспорт
	ДляКаждойСтрокиТаблицыЯВыполняю(ИмяТЧ, , "Вверх");
КонецФункции


&НаКлиенте
//И для каждой строки таблицы "ТабличнаяЧасть1" я выполняю используя колонку "N" в обратном порядке
//@ДляКаждойСтрокиТаблицыЯВыполняюИспользуяКолонкуВОбратномПорядке(Парам01,Парам02)
Функция ДляКаждойСтрокиТаблицыЯВыполняюИспользуяКолонкуВОбратномПорядке(ИмяТЧ,ИмяКолонки) Экспорт
	ДляКаждойСтрокиТаблицыЯВыполняю(ИмяТЧ,ИмяКолонки,"Вверх");
КонецФункции
