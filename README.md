# GitHub Pages Mocker

This is a Docker image you can use
to test GitHub Pages websites before publishing them.

## Setup and Usage

On a Linux or Mac system with Docker installed, setup is dead simple.

You can open your shell configuration file in your home directory,
such as `~/.bashrc` or `~/.zshrc`,
and add the following command:

```bash
alias github-pages='docker run -it -p 80:80 -p 35729:35729 -v "$PWD:/srv" --rm gnpivo/github-pages'
```

After you restart your terminal,
you can navigate to any website directory
and start the server with the following command:

```bash
github-pages
```

You can then see the website by going to `localhost` in your browser.

Press <kbd><kbd>Ctrl</kbd>+<kbd>C</kbd></kbd>
in your terminal to stop the server.

## Building Manually

If you would prefer to build the Docker image yourself,
you can clone the repository and run the following command in it:

```bash
docker build -t gnpivo/github-pages .
```

## Uninstallation

The following command will remove the Docker image:

```bash
docker rmi gnpivo/github-pages
```
