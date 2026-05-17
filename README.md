<p align="center">
  <img src="assets/kabanchikom.png" alt="Кабанчиком" width="400">
</p>

# claude-code-spinner

> ⚠️ **Внимание:** единственный официальный источник этого проекта — [github.com/i1kazantsev/claude-code-spinner](https://github.com/i1kazantsev/claude-code-spinner). Уже существуют вредоносные копии проекта, я никакого отношения к ним не имею, будьте бдительны.

Замена фраз спиннера Claude Code для уважаемых вайбкодеров.

Вместо стандартных `Thinking...`, `Analyzing...`, `Pondering...` будет крутиться **"Обкашляю вопросик"**, **"По красоте все сделаем"** и еще 90+ фраз.

## Установка через Claude Code

```bash
git clone https://github.com/i1kazantsev/claude-code-spinner.git
cd claude-code-spinner
```

Запусти Claude Code и выполни:

```
/install-spinner
```

## Ручная установка

Скопируй содержимое `spinners.json` в `~/.claude/settings.json`:

```json
{
  "spinnerVerbs": {
    "mode": "replace",
    "verbs": ["Обкашляю вопросик", "По красоте все сделаем", "..."]
  }
}
```

## Сектор приз: рандомные звуки на хуки Stop и Notification

Когда основной агент ответит или Claude Code дёрнет уведомление, ты услышишь случайный звук из набора в `~/.claude/sounds/` (по умолчанию: **«Вопросик на тормозах»**, **«Captain what»**, **«Peasant what»**). Работает через `afplay` (уже есть на macOS).

### Установка через Claude Code

```
/install-hook
```

Если громко, попроси клод сделать потише — в `sounds/notification.sh` правится `-v 1` (например, на `-v 0.5`).

### Ручная установка

1. Создай папку: `mkdir -p ~/.claude/sounds`
2. Скопируй все `*.mp3` из `sounds/` в `~/.claude/sounds/`
3. Скопируй `sounds/notification.sh` в `~/.claude/sounds/notification.sh` и сделай его исполняемым: `chmod +x ~/.claude/sounds/notification.sh`
4. Добавь хуки в `~/.claude/settings.json`:

```json
{
  "hooks": {
    "Stop": [
      {
        "matcher": "",
        "hooks": [
          {
            "type": "command",
            "command": "bash ~/.claude/sounds/notification.sh"
          }
        ]
      }
    ],
    "Notification": [
      {
        "matcher": "",
        "hooks": [
          {
            "type": "command",
            "command": "bash ~/.claude/sounds/notification.sh"
          }
        ]
      }
    ]
  }
}
```

Скрипт случайно выбирает один `.mp3` из `~/.claude/sounds/` — закинь свои файлы в эту папку, и они автоматически попадут в пул. Чтобы исключить звук, просто убери его из директории.

## Лицензия

Какая еще лицензия? Ладно, MIT.

## На связи

Телега: [Несерьезный айтишник](https://t.me/neserioznoeit)<br>
Рассказываю про разработку с ИИ. Заглядывай.
