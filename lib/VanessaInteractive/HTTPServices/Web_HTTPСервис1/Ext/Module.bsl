﻿
Функция StartPageHTML(Запрос)
	
	Ответ = Новый HTTPСервисОтвет(200);
	Параметры = Запрос.ПараметрыURL;
	
	СоставУРЛ = СтрРазделить(Запрос.БазовыйURL, "/");
	
	МакетТекст = ПолучитьОбщийМакет("Web_IndexHTML").ПолучитьТекст();
	ТекстСтраницы = СтрШаблон(МакетТекст, СоставУРЛ[2], СоставУРЛ[3]);
	Ответ.УстановитьТелоИзСтроки(ТекстСтраницы);
	
	Ответ.Заголовки.Вставить("Content-Type", "text/html; charset=UTF-8");
	
	Возврат Ответ;
	
КонецФункции

Функция ПолутьСкриптыGetScript(Запрос)
	
	Ответ = Новый HTTPСервисОтвет(200);
	ИмяФайлаJS = СтрЗаменить(Запрос.ПараметрыURL["ИмяФайла"], ".", "_");
	
	ИмяМакета = СтрШаблон("Web_%1", ИмяФайлаJS);
	Макет = ПолучитьОбщийМакет(ИмяМакета);
	ТекстМакета = Макет.ПолучитьТекст();
	Если ИмяМакета = "Web_script_js" Тогда
		
		СоставУРЛ = СтрРазделить(Запрос.БазовыйURL, "/");
		
		//СтрокаОтладки = "";
		//Если Константы.Web_РежимОтладки.Получить() Тогда
		//	СтрокаОтладки = СтрШаблон(ТекстМакета, , , "&debug=tcp&debuggerurl=""tcp://localhost"" ");
		//КонецЕсли;
		
		ТекстМакета = СтрШаблон(ТекстМакета, СоставУРЛ[2], СоставУРЛ[3]);
		
	КонецЕсли;
	
	СоставИмени = СтрРазделить(ИмяМакета, "_");
	Если СоставИмени[СоставИмени.ВГраница()] = "js" Тогда
		Ответ.Заголовки.Вставить("Content-Type", "application/javascript; charset=UTF-8");
	ИначеЕсли СоставИмени[СоставИмени.ВГраница()] = "css" Тогда
		Ответ.Заголовки.Вставить("Content-Type", "text/css; charset=UTF-8");
	КонецЕсли;
	
	Ответ.УстановитьТелоИзСтроки(ТекстМакета);
	
	Возврат Ответ;
	
КонецФункции

Функция ПолучитьЗвуковойФайлGetSound(Запрос)
	
	Ответ = Новый HTTPСервисОтвет(200);
	АдресФайлаЗвука = Запрос.Заголовки["AudioSrc"];
	Если АдресФайлаЗвука = Неопределено Тогда
		Ответ.УстановитьТелоИзСтроки("Звуковой файл не найден.");
		Возврат Ответ;
	КонецЕсли;
	
	ДвоичныеДанныеЗвука = ПолучитьОбщийМакет("Web_ЗвуковойФайл");
	//ДвоичныеДанныеЗвука = ПолучитьИзВременногоХранилища(АдресФайлаЗвука);
	
	Ответ.УстановитьТелоИзДвоичныхДанных(ДвоичныеДанныеЗвука);
	Возврат Ответ;
	
КонецФункции

Функция ПолучитьРесурсыGetSrc(Запрос)
	
	Ответ = Новый HTTPСервисОтвет(200);
	Параметры = Запрос.ПараметрыURL;
	
	ЗначениеПараметра = Параметры.Получить("*");
	ЗапрашиваемоеИмя = СтрРазделить(ЗначениеПараметра, "/")[2];
	ИмяБезТочек = СтрЗаменить("Web_" + ЗапрашиваемоеИмя, ".", "_");
	ИмяМакета = СтрЗаменить(ИмяБезТочек, "-", "_");
	Макет = ПолучитьОбщийМакет(ИмяМакета);
	
	Ответ.УстановитьТелоИзДвоичныхДанных(Макет);
	
	МассивПроверкиРасширения = СтрРазделить(ИмяМакета, "_");
	Расширение = МассивПроверкиРасширения[МассивПроверкиРасширения.ВГраница()];
	Если Расширение = "woff" Тогда
		Ответ.Заголовки.Вставить("Content-Type", "font/woff");
	ИначеЕсли Расширение = "ttf" Тогда
		Ответ.Заголовки.Вставить("Content-Type", "font/ttf");
	КонецЕсли;
	
	Возврат Ответ;
	
КонецФункции
