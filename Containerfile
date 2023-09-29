FROM registry.fedoraproject.org/fedora-toolbox:38
COPY required_packages.list /required_packages.list
RUN sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc && \
    sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo' && \
    sudo dnf update -y && \
    sudo dnf install -y $(cat /required_packages.list)
