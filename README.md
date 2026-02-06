# 🖥️ Linux Memory Monitoring Script

## 📌 Project Description
This project is a Bash shell script that monitors system memory usage and alerts when available memory falls below a defined threshold.

The script generates a formatted memory report and sends an email alert if memory is at risk.

---

## 🚀 Features
- Displays formatted system memory report
- Checks available RAM using Linux `free` command
- Threshold-based monitoring
- Lightweight and fast execution
- Suitable for production monitoring and cron scheduling

---

## 🛠 Technologies Used
- Bash Shell Scripting
- Linux / Unix Commands
- awk
- sed
- bc (for numeric comparison)


---

## 📂 Project Structure
```
memory_monitor.sh
README.md
```

---

## ▶️ How to Run

### Step 1: Give execute permission
```bash
chmod +x memory_monitor.sh
```

### Step 2: Run the script
```bash
./memory_monitor.sh
```

---

## 📋 Sample Output
```
********************** SYSTEM MEMORY REPORT **********************

------------------------------------------------------------------
       | total | used | free | shared | buff/cache | available |
------------------------------------------------------------------
Mem:   | 15Gi  | 6Gi  | 2Gi  | 1Gi     | 7Gi        | 8Gi       |
------------------------------------------------------------------

Memory is healthy. Available: 8Gi
```

---

## ⚙️ Configuration

### Memory Threshold
Inside script:
```bash
threshold=5
```
(Default: 5 GB)

You can modify this value as per server requirement.

---


### Ubuntu / Debian
```bash
sudo apt install mailutils
```

### RHEL / CentOS
```bash
sudo yum install mailx
```

---

## ⏰ Cron Scheduling (Optional)

Run script every 5 minutes:

```bash
*/5 * * * * /path/memory_monitor.sh
```

---

---

## 👨‍💻 Author
Pallavi

---

## ⭐ If you like this project
Give it a ⭐ on GitHub
