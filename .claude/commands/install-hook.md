Read the `hooks.json` file from the root of this repository. Then read the user's `~/.claude/settings.json` file.

Format of `hooks.json`:

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

Steps:

1. Create the directory `~/.claude/sounds/` if it doesn't exist (use `mkdir -p`).
2. Copy every `.mp3` file from `sounds/` in this repository to `~/.claude/sounds/`.
3. Copy `sounds/notification.sh` from this repository to `~/.claude/sounds/notification.sh` and make it executable (`chmod +x`).
4. Merge the `hooks` field from `hooks.json` into `~/.claude/settings.json`. If a `hooks` field already exists in `settings.json`, replace its value. If it doesn't exist, create it.

IMPORTANT: Do not modify any other fields in `settings.json`. Only change `hooks`.
