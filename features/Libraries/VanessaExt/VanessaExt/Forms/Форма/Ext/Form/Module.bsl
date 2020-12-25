﻿///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Automation
Перем Ванесса;

&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;

&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Automation.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;
	
	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,ОписаниеШага,ТипШага,Транзакция,Параметр);
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯНажимаюСочетаниеКлавиш(Текст)",
		"ЯНажимаюСочетаниеКлавиш",
		"И я нажимаю сочетание клавиш ""Ctrl+O""",
		"Эмуляция нажатия клавиш при помощи внешней компоненты VanessaExt.
		|Допустимо передавать следующие имена клавиш:
			|<LBUTTON> (1)
			|<RBUTTON> (2)
			|<CANCEL> (3)
			|<MBUTTON> (4)
			|<XBUTTON1> (5)
			|<XBUTTON2> (6)
			|<BACK> (8)
			|<TAB> (9)
			|<CLEAR> (12)
			|<RETURN> (13)
			|<ENTER> (13)
			|<SHIFT> (16)
			|<CONTROL> (17)
			|<CTRL> (17)
			|<ALT> (18)
			|<MENU> (18)
			|<PAUSE> (19)
			|<BREAK> (19)
			|<CAPITAL> (20)
			|<KANA> (21)
			|<HANGUEL> (21)
			|<HANGUL> (21)
			|<JUNJA> (23)
			|<FINAL> (24)
			|<HANJA> (25)
			|<KANJI> (25)
			|<ESC> (27)
			|<ESCAPE> (27)
			|<CONVERT> (28)
			|<NONCONVERT> (29)
			|<ACCEPT> (30)
			|<MODECHANGE> (31)
			|<SPACE> (32)
			|<PRIOR> (33)
			|<NEXT> (34)
			|<END> (35)
			|<HOME> (36)
			|<LEFT> (37)
			|<UP> (38)
			|<RIGHT> (39)
			|<DOWN> (40)
			|<SELECT> (41)
			|<PRINT> (42)
			|<EXECUTE> (43)
			|<SNAPSHOT> (44)
			|<INS> (45)
			|<INSERT> (45)
			|<DEL> (46)
			|<DELETE> (46)
			|<HELP> (47)
			|<0> (48)
			|<1> (49)
			|<2> (50)
			|<3> (51)
			|<4> (52)
			|<5> (53)
			|<6> (54)
			|<7> (55)
			|<8> (56)
			|<9> (57)
			|<A> (65)
			|<B> (66)
			|<C> (67)
			|<D> (68)
			|<E> (69)
			|<F> (70)
			|<G> (71)
			|<H> (72)
			|<I> (73)
			|<J> (74)
			|<K> (75)
			|<L> (76)
			|<M> (77)
			|<N> (78)
			|<O> (79)
			|<P> (80)
			|<Q> (81)
			|<R> (82)
			|<S> (83)
			|<T> (84)
			|<U> (85)
			|<V> (86)
			|<W> (87)
			|<X> (88)
			|<Y> (89)
			|<Z> (90)
			|<WIN> (91)
			|<LWIN> (91)
			|<RWIN> (92)
			|<APPS> (93)
			|<SLEEP> (95)
			|<NUMPAD0> (96)
			|<NUMPAD1> (97)
			|<NUMPAD2> (98)
			|<NUMPAD3> (99)
			|<NUMPAD4> (100)
			|<NUMPAD5> (101)
			|<NUMPAD6> (102)
			|<NUMPAD7> (103)
			|<NUMPAD8> (104)
			|<NUMPAD9> (105)
			|<MULTIPLY> (106)
			|<*> (106)
			|<ADD> (107)
			|<+> (107)
			|<SEPARATOR> (108)
			|<SUBTRACT> (109)
			|<-> (109)
			|<DECIMAL> (110)
			|<DECIMAL> (110)
			|<.> (110)
			|<DIVIDE> (111)
			|</> (111)
			|<F1> (112)
			|<F2> (113)
			|<F3> (114)
			|<F4> (115)
			|<F5> (116)
			|<F6> (117)
			|<F7> (118)
			|<F8> (119)
			|<F9> (120)
			|<F10> (121)
			|<F11> (122)
			|<F12> (123)
			|<F13> (124)
			|<F14> (125)
			|<F15> (126)
			|<F16> (127)
			|<F17> (128)
			|<F18> (129)
			|<F19> (130)
			|<F20> (131)
			|<F21> (132)
			|<F22> (133)
			|<F23> (134)
			|<F24> (135)
			|<NUMLOCK> (144)
			|<SCROLL> (145)
			|<LSHIFT> (160)
			|<RSHIFT> (161)
			|<LCONTROL> (162)
			|<RCONTROL> (163)
			|<LMENU> (164)
			|<RMENU> (165)
			|<BROWSER_BACK> (166)
			|<BROWSER_FORWARD> (167)
			|<BROWSER_REFRESH> (168)
			|<BROWSER_STOP> (169)
			|<BROWSER_SEARCH> (170)
			|<BROWSER_FAVORITES> (171)
			|<BROWSER_HOME> (172)
			|<VOLUME_MUTE> (173)
			|<VOLUME_DOWN> (174)
			|<VOLUME_UP> (175)
			|<MEDIA_NEXT_TRACK> (176)
			|<MEDIA_PREV_TRACK> (177)
			|<MEDIA_STOP> (178)
			|<MEDIA_PLAY_PAUSE> (179)
			|<LAUNCH_MAIL> (180)
			|<LAUNCH_MEDIA_SELECT> (181)
			|<LAUNCH_APP1> (182)
			|<LAUNCH_APP2> (183)
			|<OEM_1> (186)
			|<;> (186)
			|<OEM_PLUS> (187)
			|<=> (187)
			|<OEM_COMMA> (188)
			|<,> (188)
			|<OEM_MINUS> (189)
			|<-> (189)
			|<OEM_PERIOD> (190)
			|<.> (190)
			|<OEM_2> (191)
			|</> (191)
			|<OEM_3> (192)
			|<`> (192)
			|<OEM_4> (219)
			|<[> (219)
			|<OEM_5> (220)
			|<\> (220)
			|<OEM_6> (221)
			|<]> (221)
			|<OEM_7> (222)
			|<'> (222)
			|<OEM_8> (223)
			|<OEM_102> (226)
			|<PROCESSKEY> (229)
			|<PACKET> (231)
			|<ATTN> (246)
			|<CRSEL> (247)
			|<EXSEL> (248)
			|<EREOF> (249)
			|<PLAY> (250)
			|<ZOOM> (251)
			|<NONAME> (252)
			|<PA1> (253)
			|<OEM_CLEAR> (254)
		|",
		"Прочее.Ввод текста");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯВращаюКолесоМыши(Направление)",
		"ЯВращаюКолесоМыши",
		"И я вращаю колесо мыши ""Ctrl+Forward""",
		"Эмуляция вращения колеса мыши при помощи внешней компоненты VanessaExt. Необхоимо указать направление вращения: ""Forward"" или ""Back""",
		"Прочее.Ввод текста");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯВыбираюФайлВК(ИмяФайла)",
		"ЯВыбираюФайлВК",
		"И я выбираю файл ""ИмяФайла"" ВК",
		"Открывает произвольный внешний файл, например файл внешней обработки с помощью эмуляции клавиатуры. Необходимо включить использование внешней компоненты."
		+ "Для выполнения шага необходимо разрешение на использование синхронных вызовов. "
		+ "Окно клиента тестирования должно быть активно. "
		+ "В тексте сценария при указании имени файла для Windows не забывайте использовать двойной обратный слеш.",
		"Файлы.Выбор файла");
	
		Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯВывожуНаКонсольТекст(Текст)",
		"ЯВывожуНаКонсольТекст",
		"Тогда я вывожу на консоль текст ""ПроизвольныйТекст\n""",
		"Выводит на консоль родительского процесса произвольный текст."
		+ "В конце текста рекомендуется вставить перенос строки.",
		"Прочее.Ввод текста");
	
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
// Функция выполняется перед началом каждого сценария
Функция ПередНачаломСценария() Экспорт
	
КонецФункции

&НаКлиенте
// Функция выполняется перед окончанием каждого сценария
Функция ПередОкончаниемСценария() Экспорт
	
КонецФункции


///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
Процедура ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам)
	Если ТабПарам = Неопределено Тогда
		Возврат;
	КонецЕсли;
	
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		ДанныеПараметров.Вставить(СтрокаТабПарам.Кол1, СтрокаТабПарам.Кол2);
	КонецЦикла;
КонецПроцедуры

&НаКлиенте
Функция ОбернутьВАпострофы(Стр)
	Если Прав(СокрП(Стр), 1) = ")" Тогда
		Возврат Стр;
	КонецЕсли;
	
	Возврат "'" + Стр + "'";
КонецФункции

&НаКлиенте
Функция ПолучитьКлавиши() Экспорт
	
	Map = New Map;
	Map.Insert("LBUTTON", 1);
	Map.Insert("RBUTTON", 2);
	Map.Insert("CANCEL", 3);
	Map.Insert("MBUTTON", 4);
	Map.Insert("XBUTTON1", 5);
	Map.Insert("XBUTTON2", 6);
	Map.Insert("BACK", 8);
	Map.Insert("TAB", 9);
	Map.Insert("CLEAR", 12);
	Map.Insert("RETURN", 13);
	Map.Insert("ENTER", 13);
	Map.Insert("SHIFT", 16);
	Map.Insert("CONTROL", 17);
	Map.Insert("CTRL", 17);
	Map.Insert("ALT", 18);
	Map.Insert("MENU", 18);
	Map.Insert("PAUSE", 19);
	Map.Insert("BREAK", 19);
	Map.Insert("CAPITAL", 20);
	Map.Insert("KANA", 21);
	Map.Insert("HANGUEL", 21);
	Map.Insert("HANGUL", 21);
	Map.Insert("JUNJA", 23);
	Map.Insert("FINAL", 24);
	Map.Insert("HANJA", 25);
	Map.Insert("KANJI", 25);
	Map.Insert("ESC", 27);
	Map.Insert("ESCAPE", 27);
	Map.Insert("CONVERT", 28);
	Map.Insert("NONCONVERT", 29);
	Map.Insert("ACCEPT", 30);
	Map.Insert("MODECHANGE", 31);
	Map.Insert("SPACE", 32);
	Map.Insert("PRIOR", 33);
	Map.Insert("NEXT", 34);
	Map.Insert("END", 35);
	Map.Insert("HOME", 36);
	Map.Insert("LEFT", 37);
	Map.Insert("UP", 38);
	Map.Insert("RIGHT", 39);
	Map.Insert("DOWN", 40);
	Map.Insert("SELECT", 41);
	Map.Insert("PRINT", 42);
	Map.Insert("EXECUTE", 43);
	Map.Insert("SNAPSHOT", 44);
	Map.Insert("INS", 45);
	Map.Insert("INSERT", 45);
	Map.Insert("DEL", 46);
	Map.Insert("DELETE", 46);
	Map.Insert("HELP", 47);
	Map.Insert("0", 48);
	Map.Insert("1", 49);
	Map.Insert("2", 50);
	Map.Insert("3", 51);
	Map.Insert("4", 52);
	Map.Insert("5", 53);
	Map.Insert("6", 54);
	Map.Insert("7", 55);
	Map.Insert("8", 56);
	Map.Insert("9", 57);
	Map.Insert("A", 65);
	Map.Insert("B", 66);
	Map.Insert("C", 67);
	Map.Insert("D", 68);
	Map.Insert("E", 69);
	Map.Insert("F", 70);
	Map.Insert("G", 71);
	Map.Insert("H", 72);
	Map.Insert("I", 73);
	Map.Insert("J", 74);
	Map.Insert("K", 75);
	Map.Insert("L", 76);
	Map.Insert("M", 77);
	Map.Insert("N", 78);
	Map.Insert("O", 79);
	Map.Insert("P", 80);
	Map.Insert("Q", 81);
	Map.Insert("R", 82);
	Map.Insert("S", 83);
	Map.Insert("T", 84);
	Map.Insert("U", 85);
	Map.Insert("V", 86);
	Map.Insert("W", 87);
	Map.Insert("X", 88);
	Map.Insert("Y", 89);
	Map.Insert("Z", 90);
	Map.Insert("WIN", 91);
	Map.Insert("LWIN", 91);
	Map.Insert("RWIN", 92);
	Map.Insert("APPS", 93);
	Map.Insert("SLEEP", 95);
	Map.Insert("NUMPAD0", 96);
	Map.Insert("NUMPAD1", 97);
	Map.Insert("NUMPAD2", 98);
	Map.Insert("NUMPAD3", 99);
	Map.Insert("NUMPAD4", 100);
	Map.Insert("NUMPAD5", 101);
	Map.Insert("NUMPAD6", 102);
	Map.Insert("NUMPAD7", 103);
	Map.Insert("NUMPAD8", 104);
	Map.Insert("NUMPAD9", 105);
	Map.Insert("MULTIPLY", 106);
	Map.Insert("*", 106);
	Map.Insert("ADD", 107);
	Map.Insert("+", 107);
	Map.Insert("SEPARATOR", 108);
	Map.Insert("SUBTRACT", 109);
	Map.Insert("-", 109);
	Map.Insert("DECIMAL", 110);
	Map.Insert("DECIMAL", 110);
	Map.Insert(".", 110);
	Map.Insert("DIVIDE", 111);
	Map.Insert("/", 111);
	Map.Insert("F1", 112);
	Map.Insert("F2", 113);
	Map.Insert("F3", 114);
	Map.Insert("F4", 115);
	Map.Insert("F5", 116);
	Map.Insert("F6", 117);
	Map.Insert("F7", 118);
	Map.Insert("F8", 119);
	Map.Insert("F9", 120);
	Map.Insert("F10", 121);
	Map.Insert("F11", 122);
	Map.Insert("F12", 123);
	Map.Insert("F13", 124);
	Map.Insert("F14", 125);
	Map.Insert("F15", 126);
	Map.Insert("F16", 127);
	Map.Insert("F17", 128);
	Map.Insert("F18", 129);
	Map.Insert("F19", 130);
	Map.Insert("F20", 131);
	Map.Insert("F21", 132);
	Map.Insert("F22", 133);
	Map.Insert("F23", 134);
	Map.Insert("F24", 135);
	Map.Insert("NUMLOCK", 144);
	Map.Insert("SCROLL", 145);
	Map.Insert("LSHIFT", 160);
	Map.Insert("RSHIFT", 161);
	Map.Insert("LCONTROL", 162);
	Map.Insert("RCONTROL", 163);
	Map.Insert("LMENU", 164);
	Map.Insert("RMENU", 165);
	Map.Insert("BROWSER_BACK", 166);
	Map.Insert("BROWSER_FORWARD", 167);
	Map.Insert("BROWSER_REFRESH", 168);
	Map.Insert("BROWSER_STOP", 169);
	Map.Insert("BROWSER_SEARCH", 170);
	Map.Insert("BROWSER_FAVORITES", 171);
	Map.Insert("BROWSER_HOME", 172);
	Map.Insert("VOLUME_MUTE", 173);
	Map.Insert("VOLUME_DOWN", 174);
	Map.Insert("VOLUME_UP", 175);
	Map.Insert("MEDIA_NEXT_TRACK", 176);
	Map.Insert("MEDIA_PREV_TRACK", 177);
	Map.Insert("MEDIA_STOP", 178);
	Map.Insert("MEDIA_PLAY_PAUSE", 179);
	Map.Insert("LAUNCH_MAIL", 180);
	Map.Insert("LAUNCH_MEDIA_SELECT", 181);
	Map.Insert("LAUNCH_APP1", 182);
	Map.Insert("LAUNCH_APP2", 183);
	Map.Insert("OEM_1", 186);
	Map.Insert(";", 186);
	Map.Insert("OEM_PLUS", 187);
	Map.Insert("=", 187);
	Map.Insert("OEM_COMMA", 188);
	Map.Insert(",", 188);
	Map.Insert("OEM_MINUS", 189);
	Map.Insert("-", 189);
	Map.Insert("OEM_PERIOD", 190);
	Map.Insert(".", 190);
	Map.Insert("OEM_2", 191);
	Map.Insert("/", 191);
	Map.Insert("OEM_3", 192);
	Map.Insert("`", 192);
	Map.Insert("OEM_4", 219);
	Map.Insert("[", 219);
	Map.Insert("OEM_5", 220);
	Map.Insert("\", 220);
	Map.Insert("OEM_6", 221);
	Map.Insert("]", 221);
	Map.Insert("OEM_7", 222);
	Map.Insert("'", 222);
	Map.Insert("OEM_8", 223);
	Map.Insert("OEM_102", 226);
	Map.Insert("PROCESSKEY", 229);
	Map.Insert("PACKET", 231);
	Map.Insert("ATTN", 246);
	Map.Insert("CRSEL", 247);
	Map.Insert("EXSEL", 248);
	Map.Insert("EREOF", 249);
	Map.Insert("PLAY", 250);
	Map.Insert("ZOOM", 251);
	Map.Insert("NONAME", 252);
	Map.Insert("PA1", 253);
	Map.Insert("OEM_CLEAR", 254);
	Возврат Map;
	
КонецФункции

&НаКлиенте
Функция ЯНажимаюСочетаниеКлавиш(Текст) Экспорт
	
	СоответствиеКлавиш = ПолучитьКлавиши();
	КодыКлавиш = Новый Массив;
	НаборКлавиш = Ванесса.РазложитьСтрокуВМассивПодстрокКлиент(Текст, "+");
	Для каждого Стр Из НаборКлавиш Цикл
		Стр = ВРег(СокрЛП(Стр));
		Код = СоответствиеКлавиш.Получить(Стр);
		Если Код = Неопределено Тогда
			ТекстСообщения = Ванесса.Локализовать("Не удалось определить код клавиши <%1>.");
			ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", Стр);
			ВызватьИсключение ТекстСообщения;
		Иначе
			КодыКлавиш.Добавить(Код);
		КонецЕсли;
	КонецЦикла;
	
	ТекстJSON = Ванесса.ЗаписатьОбъектJSON(КодыКлавиш);
	Если НЕ Ванесса.Объект.ИспользоватьКомпонентуVanessaExt Тогда
		ВызватьИсключение Ванесса.Локализовать("Необходимо включить использование внешней компоненты VanessaExt.");
	КонецЕсли;	 
	
	Ванесса.ЗапретитьВыполнениеШагов();
	ДопПараметры = Новый Структура;
	ОписаниеОповещения = Новый ОписаниеОповещения("ОкончаниеНачатьВызовЭмуляцияНажатияКлавиши", ЭтаФорма, ДопПараметры);
	Ванесса.ВнешняяКомпонентаДляСкриншотов.НачатьВызовЭмуляцияНажатияКлавиши(ОписаниеОповещения, ТекстJSON);
	
КонецФункции

&НаКлиенте
Процедура ОкончаниеНачатьВызовЭмуляцияНажатияКлавиши(ДвоичныеДанные, ПараметрыВызова, ДополнительныеПараметры) Экспорт
	Ванесса.ПродолжитьВыполнениеШагов();
КонецПроцедуры

&НаКлиенте
//И я открываю внешний файл "ИмяФайла"
Процедура ЯВращаюКолесоМыши(Текст) Экспорт
	
	Направления = Новый Соответствие;
	Направления.Вставить("FORWARD", 1);
	Направления.Вставить("ВПЕРЁД", 1);
	Направления.Вставить("ВПЕРЕД", 1);
	Направления.Вставить("BACK", - 1);
	Направления.Вставить("НАЗАД", - 1);
	
	СоответствиеКлавиш = ПолучитьКлавиши();
	Направление = Неопределено;
	КодыКлавиш = Новый Массив;
	НаборКлавиш = Ванесса.РазложитьСтрокуВМассивПодстрокКлиент(Текст, "+");
	Для каждого Стр Из НаборКлавиш Цикл
		Стр = ВРег(СокрЛП(Стр));
		Напр = Направления.Получить(Стр);
		Если Напр = Неопределено Тогда
			Код = СоответствиеКлавиш.Получить(Стр);
			Если Код = Неопределено Тогда
				ТекстСообщения = Ванесса.Локализовать("Не удалось определить код клавиши <%1>.");
				ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", Стр);
				ВызватьИсключение ТекстСообщения;
			Иначе
				КодыКлавиш.Добавить(Код);
			КонецЕсли;
		Иначе
			Направление = Напр;
		КонецЕсли;
	КонецЦикла;
	
	Если Направление = Неопределено Тогда
		ТекстСообщения = Ванесса.Локализовать("Не удалось определить направление вращения мыши <%1>.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения, "%1", Текст);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;

	Если КодыКлавиш.Количество() > 0 Тогда
		ТекстJSON = Ванесса.ЗаписатьОбъектJSON(КодыКлавиш);
		Ванесса.ВнешняяКомпонентаДляСкриншотов.ЭмуляцияКолесаМыши(Направление, ТекстJSON);
	Иначе
		Ванесса.ВнешняяКомпонентаДляСкриншотов.ЭмуляцияКолесаМыши(Направление, Неопределено);
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
//"И я выбираю файл ""ИмяФайла"" ВК"
Процедура ЯВыбираюФайлВК(ИмяФайла) Экспорт
	Если НЕ Ванесса.Объект.ИспользоватьКомпонентуVanessaExt Тогда
		ВызватьИсключение Ванесса.Локализовать("Необходимо включить использование внешней компоненты VanessaExt.");
	КонецЕсли;	 
	
	ВнКомп = Ванесса.ВнешняяКомпонентаДляСкриншотов;
	ВнКомп.ЭмуляцияНажатияКлавиши("[17,79]");
	Если Ванесса.ТекущийTestclientЭтоWebКлиент Тогда
		Ванесса.ВыполнитьJavaScriptБраузер("document.getElementById('fileSelectButton').click()");
	КонецЕсли;
	ВнКомп.Пауза(500);
	ВнКомп.ЭмуляцияВводаТекста(ИмяФайла, 0);
	ВнКомп.Пауза(500);
	ВнКомп.ЭмуляцияНажатияКлавиши("[13]");
	ВнКомп.Пауза(500);
	Если Ванесса.ТекущийTestclientЭтоWebКлиент Тогда
		Ванесса.ВыполнитьJavaScriptБраузер("document.getElementById('fileSelectDialogOk').click()");
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
//"Тогда я вывожу на консоль текст ""ПроизвольныйТекст\n"""
Процедура ЯВывожуНаКонсольТекст(Текст) Экспорт

	Если НЕ Ванесса.Объект.ИспользоватьКомпонентуVanessaExt Тогда
		ВызватьИсключение Ванесса.Локализовать("Необходимо включить использование внешней компоненты VanessaExt.");
	КонецЕсли;	 

	Ванесса.ЗапретитьВыполнениеШагов();
	ТекстКонсоли = СтрЗаменить(Текст, "\n", Символы.ПС);
	ОписаниеОповещения = Новый ОписаниеОповещения("ОкончаниеВыводаТекстаНаКонсоль", ЭтаФорма);
	Ванесса.ВнешняяКомпонентаДляСкриншотов.НачатьВызовВывестиНаКонсоль(ОписаниеОповещения, ТекстКонсоли);
	
КонецПроцедуры

&НаКлиенте
Процедура ОкончаниеВыводаТекстаНаКонсоль(Результат, ПараметрыВызова, ДополнительныеПараметры) Экспорт

	Ванесса.ПродолжитьВыполнениеШагов(Не Результат, "Не удалось вывести текст на консоль.");

КонецПроцедуры

