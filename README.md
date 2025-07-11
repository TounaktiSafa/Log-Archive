# Log Archiver CLI Tool

A Bash script to compress and archive logs on a scheduled or manual basis. This tool is useful for cleaning up old log directories while keeping them saved in compressed `.tar.gz` format for future reference.

---

## 📦 Features

- 🏷️ Accepts any log directory as an argument
- 📁 Compresses logs into timestamped `.tar.gz` archive files
- 📂 Stores archives in a separate `logs/` folder
- 📝 Logs all archive operations with date and archive path

---

## ⚙️ Usage

### ✅ Run the Script

```bash
./log-archive.sh <log-directory>
