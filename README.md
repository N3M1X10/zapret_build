# zapret_build

> [!NOTE]
> Моя личная сборка утилиты zapret для Windows, для разблокировки Youtube и Discord в России.
>
> [Скачать последнюю версию](https://github.com/N3M1X10/zapret_build/releases)
>
> Читайте инструкции ниже


## Автозапуск через службы

Данный вид автозагрузки утилиты не добавляет её в привычный автозапуск, а создаёт СЛУЖБУ

- `service_installer.bat` - откроет окно в котором нужно выбрать стратегию для установки в службы

>[!NOTE]
> В названии стратегии не должно быть слова `service`!


- В таком случае не нужно запускать консольную программу через, к примеру `general.cmd`
- Программа будет запускаться и работать автоматически.


### Пересеты подобранные под определённых операторов

- В сборке присутствуют альтернативные стратегии для разных операторов
- Попробуйте методом "тыка" подобрать для себя подходящую стратегию 


### Если потребовалось отключить автозапуск

- `remove_services.bat` - чтобы удалить все службы сборки из автозапуска и остановить WinDivert
- `remove_windivert.bat` - удаляет драйвер WinDivert, в таком случае может потребоваться перезагрузка, для корректного возобновления работы утилиты


### Разовый запуск программы без автозапуска

Любой `*.bat` без слова `service` в названии - запускает пресет для разблокировки, в окне консоли


# Решение проблем

### Права администратора
- Для корректной работы утилиты убедитесь в наличии прав администратора у запускаемых файлов!

![image](https://github.com/user-attachments/assets/5d9cc6fc-aa53-4966-9fc3-87585d9d8b3c)


## Ошибки со службами
- При создании службы убедитесь что она создалась и запустилась
`Состояние : 4 RUNNING`

![image](https://github.com/user-attachments/assets/360ef9a5-626b-4de1-93ef-0efda752562b)


### Как вручную проверить, запущена ли служба
1. Сочетание клавиш `WIN+R` и в открывшемся окне пишем `services.msc`
2. Там ищем службу `zapret DPI bypass`

![image](https://github.com/user-attachments/assets/93b3de65-ecc5-4476-88bb-eebeb004fb73)

3. В столбце "Состояние" должно быть "Выполняется", как на скриншоте выше

### Если служба создана но не запускается:

- Запустите `remove_services.bat` и `remove_windivert.bat` и перезапустите ПК

## Параметры которые важно проверить в браузерах на основе chromium

> [!NOTE]
> `chrome://flags/` где chrome - название вашего браузера, например в Opera может быть `opera://flags/`

### Параметр QUIC 
- Вбить в поисковую строку: `chrome://flags/#enable-quic`
- Либо в самой странице flags в поиске найти `quic`

![image](https://github.com/user-attachments/assets/f9f5a2b4-790a-48ae-8747-0047370835c7)


### Отключить Kyber 
- Вбить в поисковую строку: `chrome://flags/#enable-tls13-kyber`
- Либо в самой странице flags в поиске найти `kyber`

![image](https://github.com/user-attachments/assets/0f2f0c45-795e-425b-bb35-7d87b3ce5b5f)

## Не удаляется или не перемещается папка (Windivert.sys)
`remove_windivert.bat` - чтобы остановить и удалить windivert
> [!NOTE]
> После удаления Windivert может потребоваться ручной запуск `preset_general.cmd` чтобы запустить эту службу вновь


## Прочие детали

- Сборка активно обновляется, пишите об [ошибках](https://github.com/N3M1X10/zapret_build/issues)
- Сборка утилиты от: https://github.com/N3M1X10
- Основано на репозитории: https://github.com/bol-van/zapret/

## Помощь в тестировании
> [!warning]
> ### [DEV Branch](https://github.com/N3M1X10/zapret_build/tree/dev) - ветка, куда загружаются не протестированные изменения
Если есть желающие проверить то ознакомьтесь со [**списком отличий**](https://github.com/N3M1X10/zapret_build/compare/main...dev) ветки [dev](https://github.com/N3M1X10/zapret_build/tree/dev) от ветки [main](https://github.com/N3M1X10/zapret_build/) на данный момент

# Благодарность ❤

> [!NOTE]
> Если не получается найти ответ или получить помощь в данном репозитории,
> всегда можно обратиться к оригинальной документации утилиты zapret и попробовать разобраться со своей проблемой самостоятельно
> - [zapret/docs/quick_start.txt](https://github.com/bol-van/zapret/blob/master/docs/quick_start.txt)
> - [zapret/docs/readme.txt](https://github.com/bol-van/zapret/blob/master/docs/readme.txt)

- Также можете обратиться в [Репозиторий Flowseal/zapret-discord-youtube](https://github.com/Flowseal/zapret-discord-youtube)
- [Способ взят из темы оригинального репозитория zapret у пользователя Flowseal](https://github.com/bol-van/zapret/issues/455#issuecomment-2400503770)


### Ну и конечно отдельное спасибо всем людям, кто помогает починить данную сборку ❤
