# macos-tools


# 🪟 Restore All Windows (macOS)

A tiny but powerful macOS shell script that restores all minimized application windows with a single command.

---

## 🚀 Features

- ✅ Restores minimized windows for **all visible apps**
- ✅ Simple, safe, and pure AppleScript via `osascript`
- ✅ Works on **macOS Monterey, Ventura, Sonoma** (and likely earlier)
- ✅ Includes `-h` and `-v` options for help/version
- 🧠 Great for full-screen productivity setups, window tiling, and automation

---

## 🛠️ Usage

```
./restore_all_windows.sh
You can also run:

./restore_all_windows.sh -v     # Show version
./restore_all_windows.sh -h     # Show help message

## 📦 Installation (Optional)
You can add it to your ~/bin or PATH:
chmod +x restore_all_windows.sh
mv restore_all_windows.sh /usr/local/bin/restore-all-windows

Then simply run:
restore-all-windows

## 🔐 Permissions
This script uses AppleScript via osascript, which may require Accessibility permissions the first time it runs. If prompted:

System Preferences → Security & Privacy → Accessibility → Add your terminal app (e.g. Terminal, iTerm)

## 💡 Why Use This?
Ever opened dozens of apps, minimized a bunch of windows, and forgot what’s where?
This script brings all your stuff back into view — instantly.

Great for:
- Full-screen coders who use Cmd+M a lot
- Multitaskers with hidden Slack, Chrome, Notion windows
- Anyone who hates clicking through the Dock

## 🧩 Compatibility
macOS 11+ (Big Sur, Monterey, Ventura, Sonoma)

Works with both Intel and Apple Silicon Macs

## 🙌 Credits
Made by @sancheza

## 📬 Feedback & Contributions
Found a bug or want to improve it?
Open an issue or submit a PR — contributions are welcome!
