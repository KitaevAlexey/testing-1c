#language: ru

Функционал: <описание фичи>

Как <Роль>
Я хочу <описание функционала>
Чтобы <бизнес-эффект>

Контекст:
	# "ГоловинАА" "211279Аа" "мастер сменный"
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: <описание сценария>

	Когда В панели разделов я выбираю 'Склад и доставка'
	Тогда открылось окно 'Внутренние документы (все)_(Январь * г.)'
	И В панели функций я выбираю 'Внутренние документы (все)'
	Тогда открылось окно 'Внутренние документы (все)_(Январь * г.)'
	И в таблице "СписокДокументыВнутреннегоТовародвижения" я нажимаю на кнопку с именем 'Создать_ПеремещениеТоваров_ПеремещениеТоваров'
	Тогда открылось окно 'Перемещение товаров (создание)'
	И я нажимаю кнопку выбора у поля "Склад-отправитель"
	Тогда открылось окно 'Склады и магазины'
	И в таблице "Список" я разворачиваю строку:
		| 'Наименование' |
		| 'Бункеры муки' |
	И в таблице "Список" я разворачиваю строку:
		| 'Наименование'  |
		| 'Задонский х/к' |
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'                            | 'Подразделение' |
		| '1 бункер муки Задонского хлебокомбината' | 'ПТЛ (Задонск)' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Перемещение товаров (создание) *'
	И я нажимаю кнопку выбора у поля "Склад-получатель"
	Тогда открылось окно 'Склады и магазины'
	И в таблице "Список" я разворачиваю строку:
		| 'Наименование'            |
		| 'Производственные склады' |
	И в таблице "Список" я перехожу к строке:
		| 'Наименование'                   | 'Подразделение'                      |
		| 'Склад Производства х/б Задонск' | 'Задонск хлебобулочное производство' |
	И я нажимаю на кнопку с именем 'ФормаВыбрать'
	Тогда открылось окно 'Перемещение товаров (создание) *'
	И я перехожу к закладке "Товары"
	И в таблице "Товары" я нажимаю на кнопку 'Подобрать товары'
	Тогда открылось окно 'Подбор товаров'
	И я изменяю флаг 'Только в наличии на складе \"1 бункер муки Задонского хлебокомбината\"'
	И в таблице "СписокРасширенныйПоискНоменклатура" я выбираю текущую строку
	Тогда открылось окно 'Ввод количества'
	И в поле с именем 'КоличествоУпаковок' я ввожу текст '10,000'
	И я нажимаю на кнопку 'ОК'
	Тогда открылось окно 'Подбор товаров'
	И я нажимаю на кнопку 'Перенести в документ'
	Тогда открылось окно 'Перемещение товаров (создание) *'
	И в таблице "Товары" я нажимаю на кнопку 'Заполнить серии по FEFO'
	И в таблице "Товары" я перехожу к строке:
		| 'N' | 'Количество' | 'Номенклатура'           | 'Серия'                        | 'Упаковка' |
		| '1' | '10,000'     | 'Мука пшеничная х/п в/с' | '<серия указывается отдельно>' | 'кг'       |
	И в таблице "Товары" я активизирую поле "Назначение"
	И я перехожу к закладке "Дополнительно"
	И из выпадающего списка "Смена" я выбираю точное значение '2'
	И я нажимаю на кнопку 'Провести и закрыть'
	И я жду закрытия окна 'Перемещение товаров (создание) *' в течение 20 секунд
