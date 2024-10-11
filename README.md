# zapret_build

Моя личная сборка на основе утилиты zapret-master

[Скачать последнюю версию](https://github.com/N3M1X10/zapret_build/releases)

---

### Автозапуск через службы

Данный вид автозагрузки утилиты не добавляет её в привычный автозапуск, а создаёт СЛУЖБУ

- `create_service_general.cmd` - автозапуск программы, общего пресета (и discord и youtube, и прочие)

- `create_service_discord.cmd` - автозапуск пресета для discord


В таком случае не нужно запускать консольную программу через `preset_general.cmd`
Программа будет запускаться и работать автоматически.


### Пересеты подобранные под определённых операторов
- `create_service_discord_mgts.cmd` - МГТС

- `preset_discord_mgts.cmd` - МГТС


### Если потребовалось отключить автозапуск

- `remove_all_services.bat` - чтобы удалить все службы сборки из автозапуска


### Разовый запуск программы без автозапуска

1. Запусти `preset_general.cmd`

- `preset_*.cmd` запускает консоль с winws для разблокировки Youtube и Discord и прочих сайтов.


# ПРИМЕЧАНИЯ

- Для корректной работы утилиты убедитесь в наличии прав администратора у запускаемых файлов!

![image](https://github.com/user-attachments/assets/5d9cc6fc-aa53-4966-9fc3-87585d9d8b3c)

- После каждой переустановки репозитория требуется `create_service_general.cmd`
- Консольный запуск программы через `preset_general.cmd` НЕ запускается если работает служба утилиты.

## На хромиум браузерах важные параметры

Поставить в дэфолт

![image](https://github.com/user-attachments/assets/f9f5a2b4-790a-48ae-8747-0047370835c7)


И отключить Kyber

![image](https://github.com/user-attachments/assets/0f2f0c45-795e-425b-bb35-7d87b3ce5b5f)

> Сборка активно обновляется, пишите об [ошибках](https://github.com/N3M1X10/zapret_build/issues)
> 
> Сборка утилиты от: https://github.com/N3M1X10
> 
> Основано на репозитории: https://github.com/bol-van/zapret/
>

Работает только на Windows, проверено на сборках:
```
Windows 10 Pro 22H2 19045.4780
Windows 11 26100.2033
```

---

## Благодарность

[Способ взят из темы оригинального репозитория у пользователя Flowseal](https://github.com/bol-van/zapret/issues/455#issuecomment-2400503770)

[Репозиторий Flowseal](https://github.com/Flowseal/zapret-discord-youtube)

Ну и конечно всем людям что помогают починить сборку ❤
