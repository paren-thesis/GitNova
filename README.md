# GitNova 🚀
## Your Friendly Git Command Simplifier

------

GitNova is a powerful Bash-based interactive tool designed to make Git version control accessible and user-friendly. If you've ever struggled to remember Git commands or found Git's command-line interface intimidating, GitNova is your solution. It provides an intuitive menu-driven interface that transforms complex Git operations into simple selections, all while showing you the corresponding Git commands.

## 🌟 Why GitNova?

- **Beginner-Friendly**: Perfect for Git newcomers who want to learn while doing
- **Productive for Everyone**: Even experienced developers can save time with quick access to common Git workflows
- **Educational**: Learn Git commands by seeing them alongside each menu action
- **Comprehensive**: Covers basic to advanced Git operations in one unified interface

## ✨ Features

GitNova provides comprehensive Git functionality through an organized menu system:

1. **Configuration and Setup** (`n-config`)
   - Set user information, aliases, editor preferences
   - Configure repository settings and default branches

2. **Branch Management** (`n-branch`)
   - Create, delete, rename, and switch branches
   - Merge and rebase branches with conflict resolution assistance
   - Manage remote branches

3. **Staging and Stash** (`n-stage`)
   - Stage and unstage files with visual feedback
   - Stash changes temporarily and apply them later
   - Interactive file selection

4. **Commit Management** (`n-commit`)
   - Create commits with meaningful messages
   - Amend and sign commits
   - Fine-grained control over commit content

5. **Undoing Changes** (`n-undo`)
   - Revert commits and changes
   - Reset to previous states safely
   - Recover deleted content

6. **Remote Repository Management** (`n-remote`)
   - Connect to remote repositories
   - Push, pull, and fetch changes
   - Configure multiple remotes

7. **Logs and History** (`n-logs`)
   - View commit history with customizable formatting
   - Search and filter logs
   - Visualize branch history

8. **Submodule Handling** (`n-subm`)
   - Initialize and update submodules
   - Synchronize submodule changes
   - Manage nested dependencies

9. **Advanced Operations** (`n-adv`)
   - Cherry-picking, rebasing, and interactive rebase
   - Manage hooks and Git attributes
   - Performance optimization

10. **Repository Cleaning** (`n-clean`)
    - Remove untracked files safely
    - Clean up repository structure
    - Optimize repository size

11. **Tagging System** (`n-tag`)
    - Create, delete and manage tags
    - Annotated and lightweight tags
    - Push tags to remote repositories

## 🧬 Dependencies

- **Git**: Ensure Git is installed on your system. [Download Git](https://git-scm.com/)
- **Bash Shell**: Use a compatible terminal like Git Bash, WSL, or any Linux-based shell.

## 💉 Installation

Follow these steps to set up GitNova on your system:

1. **Clone the repository**:
   ```bash
   cd c:
   git clone https://github.com/paren-thesis/GitNova.git
   ```

2. **Navigate to the project directory**:
   ```bash
   cd GitNova/cmds
   ```

3. **Make all scripts executable**:
   ```bash
   chmod +x *
   ```

4. **Add GitNova to your PATH** (recommended for easier access):
   - Open your `.bashrc` or `.bash_profile`:
     ```bash
     nano ~/.bashrc
     ```
   - Add the following line (adjust the path if needed):
     ```bash
     export PATH=$PATH:/c/GitNova/cmds
     ```
   - Save and reload the shell:
     ```bash
     source ~/.bashrc
     ```

## 🎲 Usage

1. **Launch GitNova**:
   ```bash
   ./gitnova   # If in the project directory
   ```
   Or if added to your PATH:
   ```bash
   gitnova     # From any location
   ```

2. **Navigate the interactive menu** to select the Git operation you want to perform.

3. **Follow the guided prompts** to complete your task. Each menu option shows the corresponding Git command, helping you learn Git as you use the tool.

4. **Return to the main menu** after completing operations to perform additional tasks.

## 📊 Example Workflow

1. Configure your Git identity using the Configuration menu
2. Create a new branch for your feature
3. Make changes to your files
4. Stage and commit your changes
5. Push your branch to a remote repository
6. Create a pull request (instructions provided)

## 👥 Target Users

- **Git Beginners**: Learn Git commands while using a friendly interface
- **Occasional Git Users**: Quickly perform Git operations without needing to remember command syntax
- **Teams**: Standardize Git workflows and reduce onboarding time for new developers
- **Educators**: Teach Git concepts with practical, hands-on examples

## 🤝 Contributing

Contributions to GitNova are welcome! Feel free to:

- Fork the repository
- Create a feature branch
- Submit pull requests for enhancements or bug fixes
- Report issues or suggest improvements

Please see the CONTRIBUTING.md file for detailed guidelines.

## 📜 License

This project is licensed under the MIT License. See the LICENSE file for details.

---

**GitNova** - Empowering developers with simplified Git workflow.
