//
//  DataManager.swift
//  HW28CitiesV1
//
//  Created by Dmitrii Onegin on 07.01.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let cityNames = ["Санкт-Петербург",
                     "Москва",
                     "Тюмень",
                     "Уфа",
                     "Новосибирск"]
    
    let userNames = ["Дмитрий Онегин",
                     "Владислав",
                     "Артем",
                     "Динар",
                     "Дмитрий"]
    
    let population = ["5 384 342 чел.",
                      "12 655 050 чел.",
                      "816 700 чел.",
                      "1 125 933 чел.",
                      "1 620 162 чел."]
    
    let area = ["1,439 km²",
                "2,511 km²",
                "698.5 km²",
                "707.9 km²",
                "502.7 km²"]
    
    let foundedDate = ["1703 г.",
                       "1147 г.",
                       "1586 г.",
                       "1574 г.",
                       "1893 г."]
    let sights = [
        // Места Санкт-Петербург
        [
            ["Эрмитаж",
             "Дворцовая площадь 2",
             "Санкт-Петербург",
             "9",
             "Музей изобразительного и декоративно-прикладного искусства, расположенный в городе Санкт-Петербурге Российской Федерации. Основан 7 декабря 1764 года. Является одним из крупнейших художественных музеев в мир",
             "архитектура"],
            ["Ледовый дворец",
             "пр. Пятилеток д.1",
             "Санкт-Петербург",
             "8",
             "Спортивно-концертный комплекс в Санкт-Петербурге, рассчитанный на 12 300 зрителей, предназначенный для проведения спортивных состязаний, музыкальных концертов, выставок, конференций и других мероприятий, поскольку зал имеет возможность трансформации под конкретные нужды",
             "спорт"],
            ["Мариинский театр",
             "Театральная площадь 1",
             "Санкт-Петербург",
             "9",
             "Государственный академический Мариинский театр (в 1935—1992 годах — Ленинградский ордена Ленина и ордена Октябрьской Революции академический театр оперы и балета имени С. М. Кирова, часто сокращённо — Кировский театр) — театр оперы и балета в Санкт-Петербурге, один из ведущих музыкальных театров России и мира. Труппа, основанная ещё в XVIII веке, до революции функционировала под руководством дирекции Императорских театров",
             "архитектура"],
            ["Ресторан Астория",
             "Б.Морская, 39",
             "Санкт-Петербург",
             "9",
             "Благодаря талантам шеф-повара Иена Минниса ресторан Astoria Restaurant является местом, где различные культуры смешиваются воедино так же гармонично, как и вкусы. Ресторан предлагает европейскую кухню и современный подход к классическим русским блюдам. Разнообразие черной икры, пельмени с крабовым мясом, пожарская котлета",
             "еда"],
            ["Павловский парк",
             "г. Павловск, ул. Садовая 20",
             "Санкт-Петербург",
             "10",
             "Уникальный памятник ландшафтного искусства конца XVIII-начала XIX века. Вместе с Павловским дворцом составляет единый художественный дворцово-парковый ансамбль. Его история начинается с момента основания Павловска в 1777 г. Первоначально это были лесные угодья, где устраивались царские охоты. С появлением первых скромных деревянных дворцов Пауллюста и Мариенталя вокруг них стали создаваться небольшие сады на холмистых берегах Славянки. Беседки, мостики, руины, цветники были типичны для русской усадьбы",
             "парки"]
        ],
        // Места Москва
        [
            ["Большой Театр",
             "Театральная площадь 1",
             "Москва",
             "10",
             "Один из старейших и самых знаменитых театров России. Здание, построенное в классическом стиле, с бронзовой квадригой Аполлона на портике, находится в ряду главных символов Москвы",
             "театр"],
            ["Стадион Лужники",
             "ул. Лужники 24, стр. 1",
             "Москва",
             "9",
             "Самый крупный стадион России. Он открылся в 1956 году. В стенах главной спортивной арены страны прошли десятки исторических соревнований, выросло целое поколение чемпионов и установлены мировые рекорды",
             "спорт"],
            ["Москвовский Метрополитен",
             "ул. Тверская 1",
             "Москва",
             "8",
             "Рельсовый внеуличный (преимущественно подземный) городской общественный транспорт на электрической тяге, находящийся в Москве и частично в Московской области, первый и крупнейший метрополитен в СССР, России и странах СНГ. Московское метро — шестое в мире по интенсивности использования после метро Пекина, Токио, Шанхая, Сеула и Гуанчжоу; четвёртое в мире и первое в Европе — по длине эксплуатируемых линий. Метрополитен эксплуатирует ГУП «Московский метрополитен» (государственное унитарное предприятие города Москвы «Московский ордена Ленина и ордена Трудового Красного Знамени метрополитен имени В. И. Ленина",
             "архитектура"],
            ["Ресторан White Rabbit",
             "Смоленская площадь, дом 3",
             "Москва",
             "9",
             "Одно из самых успешных и модных гастрономических заведений luxury-класса в Москве. Ресторан, открытый в октябре 2011 года — обладатель множества высших ресторанных премий",
             "еда"],
            ["Парк Победы г. Москвы",
             "Поклонная гора, метро Парк Победы",
             "Москва",
             "10",
             "Один из крупнейших в России и в мире мемориальных комплексов, площадь которого 135 га, посвящён победе в Великой Отечественной войне. Расположен в Западном административном округе Москвы. Был открыт 9 мая 1995 года к 50-летию Великой Победы",
             "парки"]
        ],
        // Места Тюмень
        [
            ["Драмтеатр",
             "ул. Республики, д. 129",
             "Тюмень",
             "8",
             "Большой тюменский драматический театр. С момента открытия нового здания в 2008 году Тюменский драмтеатр является крупнейшим по площади театром в стране. Его площадь – 36 тысяч квадратных метров. В 1890 году купец первой гильдии, почетный гражданин города Андрей Текутьев основал постоянный театр, вошедший в историю города как Текутьевский",
             "театр"],
            ["Фитнес зал Гео-Спорт",
             "ул.Коммунистическая, 10",
             "Тюмень",
             "9",
             "Спортзал, Фито-бар, детский фитнес, бойцовский клуб, бассейн",
             "спорт"],
            ["Мост Влюбленных",
             "ул. Республики, д. 1",
             "Тюмень",
             "10",
             "Это самое романтичное место города и одно из главных его достопримечательностей. Вантовый пешеходный мост в Центральном округе Тюмени соединяет берега живописной Туры. Мост был сооружен в 1987 г. на месте ранее располагавшегося здесь деревянного моста, который развалился в 1982 г. Современный мост был сделан вровень с правым берегом Туры, а чтобы насыпи на левом берегу не были высокими, его специально сделали наклонным",
             "архитектура"],
            ["Ресторан Кацо",
             "ул. Герцена, 94",
             "Тюмень",
             "9",
             "Национальная грузинская кухня, акции для гостей и доставка блюд по всему городу. В обстановке грузинского ресторана Кацо черты национального стиля сочетаются с домашним уютом и комфортом",
             "еда"],
            ["Затюменский экопарк",
             "ул. Полевая, д. 25",
             "Тюмень",
             "10",
             "Участок леса, который находится в границах Тюмени, и является региональным памятником природы. После проведенной реконструкции территория превратилась в экологический городской парк",
             "парки"]
        ],
        // Места Уфа
        [
            ["Театр оперы и балета",
             "улица Ленина, 5/1",
             "Уфа",
             "9",
             "Театр был открыт в 1938 году. 14 декабря 1938 года состоялась премьера оперы Джованни Паизиелло «Прекрасная мельничиха",
             "театр"],
            ["Дворец спорта",
             "Рихарда Зорге, 41",
             "Уфа",
             "10",
             "Городской Дворец спорта Уфы – до августа 2007 года домашняя арена российского хоккейного клуба «Салават Юлаев». С сентября 2009 года является официальной домашней ареной команды Молодежной хоккейной лиги «Толпар» и женской хоккейной команды «Агидель», выступающей в Чемпионате России. Кроме того, свои тренировочные и домашние игры во Дворце спорта проводят команды всех возрастов СДЮШОР «Салават Юлаев». Второе по площади крытое спортивное сооружение в Башкортостане после «Уфа-Арены», первое спортсооружение в республике с искусственным льдом. Дворец спорта открыт 28 октября 1967 года",
             "спорт"],
            ["Монумент Дружбы",
             "ул. Октябрьской Революции",
             "Уфа",
             "8",
             "Памятник в городе Уфе, посвящённый 400-летию присоединения Башкортостана к России. Установлен на Первомайской площади в центре города. Объект культурного наследия народов РФ федерального значения, охраняется государством. 1965 год постройки. Высота 30 метров",
             "архитектура"],
            ["Ресторан Щепка",
             "Рихарда Зорге, 64",
             "Уфа",
             "9",
             "Ресторан авторской кухни Щепка - это островок покоя и уюта в центре Уфы в фольклорном исполнении. Деревянная мебель, потолок, декорированный брусьями, хохлома - каждая деталь отсылает к русскому национальному",
             "еда"],
            ["Парк Победы",
             "Улица Комарова, д.7",
             "Уфа",
             "10",
             "Мемориальный комплекс, посвящённый победе в Великой Отечественной войне, в северной части города Уфы (район Орджоникидзевский). Открыт в 1947 году",
             "парки"]
        ],
        // Места Новосибирск
        [
            ["Новосибирский театр оперы и балета",
             "Красный проспект 36",
             "Новосибирск",
             "10",
             "Российский театр оперы и балета. Открылся в 1945 году. Является одним из ведущих театров России. Крупнейшее в России и СССР здание театра было сооружено в 1931—1941 годах, представляет собой сложный и уникальный архитектурный комплекс, и имеет статус объекта культурного наследия России федерального значения",
             "театр"],
            ["Ледовая Арена Новосибирск",
             "Немировича-Данченко, 160",
             "Новосибирск",
             "9",
             "Ледовую арену построят в Новосибирске к Молодежному чемпионату мира-2023. В мае был презентован макет спортивного сооружения и окружающей инфраструктуры",
             "спорт"],
            ["Монумент Славы",
             "ул. Чаплыгина, 27",
             "Новосибирск",
             "8",
             "емориальный ансамбль Монумент Славы - памятник мужеству и боевым подвигам сибиряков. Памятник, строившийся по инициативе и силами заводов Ленинского района г. Новосибирска, по проекту заслуженного деятеля культуры РФ а.С. Чернобровцева, был открыт 6 ноября 1967 г.",
             "архитектура"],
            ["Ресторан Сибирь Сибирь",
             "ул. Дмитрия Шамшурина, 2",
             "Новосибирск",
             "9",
             "В начале ноября 2015 года на территории отеля Азимут Сибирь открылось уникальное заведение – новый проект Дениса Иванова #Сибирь Сибирь, ресторан современной и традиционной кухни Сибири. Ресторан рассчитан на 196 посадочных мест и разделён на несколько тематических зон.В интерьере активно используется все, что напоминает нам Сибирь: самовары, чайники, скворечники, стёганые подушки, одеяла, различные соленья и другие элементы русско-сибирского быта. Так, например, стена с валенками и шалями, создающая очень уютную, тёплую зону. Или потолок в баре: десять тысяч ложек, которые эффектно переливаются, приковывая внимание гостей. Сам бар сделан умышленно: он является хорошим местом досуга одиноких постояльцев гостиницы и прекрасной возможностью для посетителей начать свой вечер с аперитива. Благодаря винному шкафу на 1200 бутылок любители этого напитка получают возможность сделать свой выбор из обширной коллекции",
             "еда"],
            ["Центральный парк",
             "ул. Мичурина, дом 8",
             "Новосибирск",
             "10",
             "Крупный парк в центре Новосибирска и самый старый парк города. Площадь парка - 10,5 га. Расположен вблизи станции метро «Площадь Ленина» между улицами Фрунзе, Мичурина, Ядринцевской, Каменской",
             "парки"]
        ]
    ]
    
    private init() {}
}
