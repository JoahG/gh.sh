#gh.sh

Bash shell script to enable command line GitHub interaction.

---

To use, replace `$GH_AUTH_TOKEN` with your private GitHub api token and `$GH_USERNAME` with your GitHub username, and place the script in your path.

Current commands (preceded by `gh` or filename of choice):

   - `create <repo name>`
      - Creates remote GitHub repo, and if the current directory is a git repository, adds the remote.