---

A capstone project prepared for the Open Source Software course, focused on an in-depth study of the Linux Kernel, along with a set of Linux shell scripting tasks for practical understanding.

---

## Student Information

| Field               | Details               |
| ------------------- | --------------------- |
| Student Name        | Piyush Kumar          |
| Registration Number | 24BCE10014            |
| Course              | Open Source Software  |


---

## Project Overview

The main aim of this project is to study the **Linux Kernel** in a detailed manner, as it forms the core part of the Linux operating system and is among the most important open-source developments globally.

This work covers both conceptual understanding and hands-on aspects of the Linux Kernel, such as its structure, development process, and usage in real-world systems.

The study includes:

* The history and growth of the Linux Kernel from the time it was introduced by Linus Torvalds
* Its licensing under the GNU General Public License (GPL) and what it means
* Contributions from the global open-source community
* The kernel's role in handling hardware, processes, memory, and system calls
* A comparison with proprietary operating system kernels
* Implementation of five Bash scripts to perform system-level auditing tasks

To connect theory with practice, the scripting part deals with system interaction, log checking, disk usage analysis, and understanding system behavior using Linux command-line tools.

---

## Tech Stack

| Component        | Details                                          |
| ---------------- | ------------------------------------------------ |
| Operating System | Kali Linux / Ubuntu (Linux-based)                |
| Shell            | Bash (/bin/bash)                                 |
| Core Software    | Linux Kernel                                     |
| Package Manager  | apt                                              |
| Core Utilities   | uname, whoami, dpkg, du, grep, awk, date, uptime |

---

## Project Structure

```
│
├── script1.sh              # System Identity Report
├── script2.sh              # Check FOSS packages
├── script3.sh              # Disk & Permission Auditor
├── script4.sh              # Log File Analyzer
├── script5.sh              # OSS Manifesto Generator
├── Screenshots             # Output screenshots
├── Linux Kernel Audit      # Project report
│
└── README.md               # Documentation
```

---

## Setup Instructions

### Prerequisites

Make sure a Linux-based OS like Ubuntu or Kali Linux is installed and running.

### Step 1 — Update Package Lists

```bash
sudo apt update
```

### Step 2 — Check Kernel Version

```bash
uname -r
```

### Step 3 — Give Execution Permission

```bash
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
```

---

## How to Run the Scripts

| Script     | Command                              |
| ---------- | ------------------------------------ |
| script1.sh | `./script1.sh`                       |
| script2.sh | `./script2.sh`                       |
| script3.sh | `./script3.sh`                       |
| script4.sh | `./script4.sh /var/log/syslog ERROR` |
| script5.sh | `./script5.sh`                       |

**Note:**
`script4.sh` needs two inputs:

1. Path of the log file
2. Keyword to search

If nothing is given, it automatically takes **"ERROR"** as default.

---

## Script Descriptions

| Script     | Title                     | Description                                                                     |
| ---------- | ------------------------- | ------------------------------------------------------------------------------- |
| script1.sh | System Identity Report    | Shows system info like OS, kernel version, current user, uptime, and date/time. |
| script2.sh | FOSS Package Inspector    | Checks required packages using `dpkg` and explains them using case statements.  |
| script3.sh | Disk & Permission Auditor | Examines directories for permissions, ownership, and disk usage details.        |
| script4.sh | Log File Analyzer         | Reads log files and counts keyword occurrences while showing matching lines.    |
| script5.sh | OSS Manifesto Generator   | Takes user input and creates a customized open-source philosophy file.          |

---

## Output Explanation

* **script1.sh** — Produces a structured system report with kernel version, uptime, and user info.
* **script2.sh** — Confirms installed packages and gives brief details about them.
* **script3.sh** — Displays directory permissions, ownership, and disk usage in a tabular form.
* **script4.sh** — Generates a report showing keyword count and related log entries.
* **script5.sh** — Creates a file named `manifesto_<username>.txt` with a personalized message.

---

## Concepts Used

This project makes use of important Linux and shell scripting concepts:

* **Variables:** Store system data and user input (e.g., `$(whoami)`, `$(uname -r)`)
* **User Input:** Taken using `read -p` for interaction
* **Conditional Statements:** Used for checking conditions like file existence or installation
* **Case Statements:** Helpful in handling multiple cases clearly
* **Loops:**

  * `for` loops for directory traversal
  * `while` loops for reading logs
* **Command-line Arguments:** `$1`, `$2` used for flexible execution
* **File Handling:** Reading and writing using redirection
* **Text Processing:** Tools like `grep`, `awk`, `cut`, `tail`, `tr`
* **System Commands:** `uname`, `uptime`, `du`, `dpkg`, `date`
* **Exit Codes:** Used for basic error handling (`exit 1`)
* **Retry Logic:** Uses `sleep` when retry is needed

---

## Notes

* Scripts are meant only for Linux environments
* Make sure execution permission is given before running
* `script4.sh` needs a valid log file path (like `/var/log/syslog`)
* `script3.sh` may need `sudo` for full access
* `script5.sh` saves output in the current directory

---

## Conclusion

This project shows how important the Linux Kernel is as the base of modern computing systems and how it supports open-source development.

By mixing theory with practical scripting, the project gives a clear understanding of how systems actually work at a lower level. It also reflects open-source values like transparency, collaboration, and freedom to modify software, while improving practical Linux skills.
"# oss-audit-24BCE10014" 
