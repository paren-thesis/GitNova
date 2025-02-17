# GitNova
## Your version control biddy 🤓

------

GitNova is a Bash-based tool designed to simplify Git commands for users who find it difficult to remember or use Git commands directly. The tool provides an interactive menu system for performing common Git tasks such as configuration, branch management, and more.

## ✨Features
- Easy-to-navigate menu for Git commands.
- Simplifies tasks such as setting up configuration, managing branches, and working with repositories.
- Modular structure for better scalability and customization.
- Hints on the git command associated to the item on the menu

## 🧬Dependencies
- Git: Ensure Git is installed on your system. [Download Git](https://git-scm.com/)
- Bash Shell: Use a compatible terminal like Git Bash, WSL, or any Linux-based shell.

## 💉Installation
Follow these steps to clone and set up PAREN on your system:

1. Clone the repository:
   ```bash
   cd c:
   git clone https://github.com/paren-thesis/GitNova.git
   ```

2. Navigate to the project directory:
   ```bash
   cd GitNova
   ```

3. Make all scripts executable:
   ```bash
   chmod +x *.exe
   ```

4. Optionally, add the script to your PATH for easier access:
   - Open your `.bashrc` or `.bash_profile`:
     ```bash
     nano ~/.bashrc
     ```
   - Add the following line (replace `/path/to/Gitty` with the actual path):
     ```bash
     export PATH="/path/to/GitNova:$PATH"
     ```
   - Save and reload the shell:
     ```bash
     source ~/.bashrc
     ```

## 🎲Usage
1. Run the tool using:
   ```bash
   ./gitnova.exe
   ```
   Or, if added to your PATH:
   ```bash
   gitnova
   ```

2. Select an option from the menu to execute a Git-related task.

3. Follow on-screen instructions to complete the desired action.


## Contributing
Feel free to fork the repository and submit pull requests for enhancements or bug fixes. Contributions are always welcome!

## License
This project is licensed under the MIT License. See the LICENSE file for details.
