# Distrobox web development image

This image provides a standard web development environment, intended to be run with Distrobox. A rootless Podman
backend is recommended, so no permission issues disrupt your work.

## Usage

You may want to change the dependency list. Build the image using the Containerfile once you're satisfied:

```
podman build -t fedora-webdevel_01 -f Containerfile
```

To run the image, you need Distrobox, though you can use bare-metal podman if you want full control over the
container permissions.

Run the container with Distrobox:

```
distrobox create --name web-devel --image localhost/fedora-webdevel_01
```

You may want to restrict the container's home so it doesn't alter any of your host files.

```
distrobox create --name web-devel --image localhost/fedora-webdevel_01 --home /home/alexaib/Containers/Volumes/web-devel-env
```

Now you can enter the container:

```
distrobox enter web-devel
```

And that's it! You can now launch **vscode** and start working on your projects while being confidant that your
environment will be completely portable

## Take a look!

![image](https://github.com/alexaib2002/podman-fedora-webdevel/assets/66980937/a0c3ce26-2807-4395-ba3e-0e5932764286)

*A Visual Studio Code instance running a Node.js application, despite not having Node nor any of its dependencies installed in the host!*
