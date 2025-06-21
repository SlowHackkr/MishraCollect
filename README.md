



# MishraCollect 🛠️

A personal Bash-based CLI tool for collecting user input and saving it in structured JSON format — built with simplicity, validation, and clean terminal interaction in mind.

---

## 🔧 Features

- ✅ Validates full name format (expects at least two words)
- ✅ Ensures email is properly formatted (with full structure check)
- ✅ Checks that age is a number only
- ✅ Stores data in clean JSON structure
- ✅ Appends new entries without breaking JSON format
- ✅ Shows a neat CLI banner and step-by-step user guidance

---

## 📦 Project Structure

```

MishraCollect/
├──  emailCheck_JsonFormat.sh   # Main script to collect and save user data
├── run.sh                     # Launch script with banner and call to main
├── save_details.json          # Output file (auto-generated)
└── README.md                  # You're reading it!

````

---

## ✅ Prerequisites for Users

Before running this tool, make sure of the following:

1. ✅ You're using **Linux**, **WSL**, or **macOS** with a Bash terminal.
2. ✅ You edited files using a Unix-compatible editor like **VS Code** (and switched line endings to `LF`, not `CRLF`).
3. ✅ You resolved `command not found: $'\r'` issues using:
   ```bash
   sudo apt install dos2unix
   dos2unix  emailCheck_JsonFormat.sh


## ⚙️ Make It Executable

Before running the tool for the first time, set the executable permission:

```bash
chmod +x run.sh
chmod +x emailCheck_JsonFormat.sh
```

---

## 🚀 Run the Tool

To start collecting data interactively:

```bash
./run.sh
```

This will:

* Display a welcome banner
* Prompt for your full name, email, and age
* Validate the inputs
* Save them into a JSON file cleanly

---

## 📂 Example Output (`save_details.json`)

```json
[
  {
    "name": "Arun Mishra",
    "email": "arun@example.com",
    "age": 22
  }
]
```

New entries are appended automatically in JSON-safe format.

---

## ❤️ Credits

Built by **Arunabha Mishra**
🎯 Focused on real-world learning, hacking ethically, and growing step by step.

