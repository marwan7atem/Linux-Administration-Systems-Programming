# Linux-Administration-Systems-Programming
A collection of Linux system administration tools featuring Bash scripts for user/group management, Makefile/CMake build systems for cryptographic libraries, and a multi-process task manager in C. Demonstrates automation, process control, and cross-platform SSH integration.

# Linux System Administration Toolkit

A comprehensive collection of Linux automation scripts, build systems, and system monitoring tools demonstrating proficiency in Bash scripting, process management, and cross-platform development.

## 📁 Project Structure
Linux_Admin_Toolkit/
├── Part1_Bash_Scripts/
│ ├── userdef.sh # User/group creation & management
│ ├── file_ops.sh # Directory/file operations & archiving
│ ├── answers_part1.txt # Documentation for script questions
│ └── screenshots/ # Execution proof
├── Part2_Build_Systems/
│ ├── Makefile_project/
│ │ ├── Makefile # Main makefile
│ │ ├── caesar_cipher.mk # Static library build
│ │ ├── xor_cipher.mk # Shared library build
│ │ ├── gen/ # Generated object files
│ │ ├── libs/ # Built libraries
│ │ └── out/ # Final executable
│ ├── CMake_project/
│ │ ├── CMakeLists.txt # Main CMake configuration
│ │ ├── caesar_cipher/ # Module directory
│ │ └── xor_cipher/ # Module directory
│ └── screenshots/ # Build execution proof
├── Part3_Process_Manager/
│ ├── task_manager.c # Multi-process monitoring application
│ ├── mystat.c # CPU monitoring utility
│ └── demo_video/ # SSH connection demonstration
└── Documentation/
├── project_requirements.pdf
└── implementation_notes.md

## ✨ Features

### Part 1: Bash Automation
- **User & Group Management**: Scripted user creation with password assignment, group management, and permission control
- **File Operations**: Automated directory creation, file generation, archiving, and distribution
- **System Administration**: Sudo validation, global script accessibility, and recursive file operations

### Part 2: Build Systems
- **Makefile Implementation**: Multi-module build system with static and shared libraries
- **CMake Configuration**: Modern cross-platform build system implementation
- **Cryptographic Libraries**: Caesar cipher (static lib) and XOR cipher (shared lib) integration

### Part 3: Process Management
- **Multi-Process Application**: Parent/worker process model for system monitoring
- **SSH Integration**: Cross-platform connection between Windows and Linux systems
- **System Monitoring**: CPU usage (mpstat) and process activity (ps) monitoring

## 🛠️ Technologies Used

- **Scripting**: Bash, Shell commands
- **Build Systems**: Make, CMake
- **Programming**: C language
- **System Tools**: SSH, WSL, process management, file permissions
- **Cryptography**: Caesar cipher, XOR cipher implementations

## 🚀 Getting Started

### Prerequisites
- Linux environment (Ubuntu preferred) or WSL on Windows
- SSH server configured on Linux instance
- Basic build tools: gcc, make, cmake
- Administrative privileges for user management operations
  
👨‍💻 Developer
Marwan Mohamed Hatem

Email: marwanhatem017@gmail.com

LinkedIn: https://www.linkedin.com/in/marwan-hatem-6a516b225/

GitHub: https://github.com/marwan7atem

📄 License
This project was developed as part of the Linux Administration course from Edges For Training. The code is provided for educational and reference purposes.


