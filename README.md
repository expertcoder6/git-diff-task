
# GitHub Commit Diff API

This Rails application provides API endpoints to fetch commit information and code differences for any given commit from any open-source GitHub repository. The application uses the Octokit gem to interact with the GitHub API.

## Features

- Get detailed information about a specific commit.
- Get the diff of a commit compared to its parent commit.
- List commits in a repository.
- Compare two commits.
- Retrieve information about a repository.

## Requirements

- Ruby 2.7+
- Rails 7.0+
- GitHub personal access token

## Getting Started

### Clone the Repository

```sh
git clone https://github.com/expertcoder6/git-diff-task
cd git-diff-task
```

### Install Dependencies

```sh
bundle install
```

### Setup Environment Variables

Create a `.env` file in the root of your project and add your GitHub token:

```sh
PERSONAL_ACCESS_TOKEN=your_personal_access_token
```

Make sure to add `.env` to your `.gitignore` file to keep your token secret:

```sh
echo '.env' >> .gitignore
```

Start the Rails server:

```sh
rails server
```

If Facing some issues try this crediatials related command
```sh
  rm -rf config/credentials.yml.enc
  EDITOR="mate --wait" bin/rails credentials:edit
```

You can now access the API endpoints to fetch commit information and diffs from GitHub repositories.
Url Path
http://localhost:3000/repos/:owner/:repo/commits/:commit_sha
http://localhost:3000/repos/:owner/:repo/commits/:commit_sha/diff
## License

This project is licensed under the MIT License.