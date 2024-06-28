echo "Update the system"
sudo apt-get update && sudo apt-get upgrade -y
sudo apt update && sudo apt upgrade

# Prompt for reboot
read -p "Setup complete. Do you want to reboot? (y/n): " reboot_choice
if [ "$reboot_choice" == "y" ]; then
    sudo reboot
else
    echo "You can manually reboot later."

# install Nala
echo "install Nala"
sudo apt-get install nala
sudo nala update
sudo nala upgrade
sudo nala full-upgrade

# update snap packages
echo "update snap packages"
sudo snap refresh

# Installing essential packages
echo "Installing essential packages..."
sudo nala install git \
    curl \
    gufw \
    zsh \
    stacer \
    vlc \
    neofetch \
    gdebi \
    build-essential \
    stacer \
    neofetch \
    gdebi \
    copyq \
    bitwarden \
    btop \
    chrome-gnome-shell \
    timeshift \
    gparted \
    putty \
    libfuse2t64 \
    libfuse2 \
    net-tools \
    software-properties-common \
    apt-transport-https \
    gnupg-agent \
    lsb-release \
    openconnect \
    network-manager-openconnect-gnome

   

# Install Python and related packages
echo "Installing Python and related packages..."
sudo apt install -y python3 python3-pip python3-venv

# installl snap packages
echo"Installing Snap packages"
sudo snap install telegram-desktop morgen todoist 

# github desktop
echo "Installing Github Deasktop....."
sudo wget https://github.com/shiftkey/desktop/releases/download/release-3.1.1-linux1/GitHubDesktop-linux-3.1.1-linux1.deb
sudo apt-get install gdebi-core
sudo gdebi GitHubDesktop-linux-3.1.1-linux1.deb

# install zotero
echo "INstalling Zotero....."
wget -qO- https://raw.githubusercontent.com/retorquere/zotero-deb/master/install.sh | sudo bash
sudo apt update
sudo apt install zotero

#install Java
echo "Installing Java"
sudo nala install default-jre
sudo nala install default-jdk
java --version

#install docker
echo "Installing Docker....."
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo systemctl disable docker.service
sudo systemctl disable docker.socket
systemctl list-unit-files | grep -i docker

#solving Notion problem
sudo snap install asar --classic
cd /opt/Notion/resources
ls
sudo asar extract app.asar app
ls
cd ./app/renderer/preload.js
cd ./app/renderer
ls
sudo nano preload.js 
cd
cd /opt/Notion/resources
ls
sudo asar pack app app.asar


echo "Install other applications"
cd ~/Downloads
declare -a packages=(
"https://objects.githubusercontent.com/github-production-release-asset-2e65be/378057256/1dcae100-dc58-11eb-9eb3-92df75cddd90?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=releaseassetproduction%2F20240625%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240625T225545Z&X-Amz-Expires=300&X-Amz-Signature=d2571ca1e7dc26ccacca1d5a60aed504da5cc992d4fccecf57463d819472dc29&X-Amz-SignedHeaders=host&actor_id=169395271&key_id=0&repo_id=378057256&response-content-disposition=attachment%3B%20filename%3Dnotion-app_2.0.16_amd64.deb&response-content-type=application%2Foctet-stream"
"https://repo.steampowered.com/steam/archive/precise/steam_latest.deb"
"https://objects.githubusercontent.com/github-production-release-asset-2e65be/53538899/c6a3ea8c-1b69-4d10-bfc5-612065a9c20c?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=releaseassetproduction%2F20240622%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240622T231649Z&X-Amz-Expires=300&X-Amz-Signature=c089d9d3b4da2d3a7e9d7bc29098aa68c21ebc3a59fecd92770d7d8987f78458&X-Amz-SignedHeaders=host&actor_id=0&key_id=0&repo_id=53538899&response-content-disposition=attachment%3B%20filename%3DBitwarden-2024.6.2-amd64.deb&response-content-type=application%2Foctet-stream"
"https://objects.githubusercontent.com/github-production-release-asset-2e65be/122837111/ccd8bb07-3b6e-447c-80cc-1d4a25a9518f?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=releaseassetproduction%2F20240622%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240622T231414Z&X-Amz-Expires=300&X-Amz-Signature=bd96d3f3bdc1512a935f665d178456efdfb715856fafdf17f6242d12c8bdb613&X-Amz-SignedHeaders=host&actor_id=0&key_id=0&repo_id=122837111&response-content-disposition=attachment%3B%20filename%3Dxdman_gtk_8.0.29_amd64.deb&response-content-type=application%2Foctet-stream"
"https://vscode.download.prss.microsoft.com/dbazure/download/stable/5437499feb04f7a586f677b155b039bc2b3669eb/code_1.90.2-1718751586_amd64.deb"
)
for package in "${packages[@]}"; do
    sudo wget "$package"
    sudo gdebi "$(basename "$package")"
done

cd ~/Downloads
declare -a packages=(
"https://objects.githubusercontent.com/github-production-release-asset-2e65be/696192900/b63a900f-85d7-4b85-8b83-1728fc66cce4?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=releaseassetproduction%2F20240623%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240623T000233Z&X-Amz-Expires=300&X-Amz-Signature=ad035343d11764f387cd5c94676c6417bd2ca6b68a0a34a599c3c7bc85554a32&X-Amz-SignedHeaders=host&actor_id=0&key_id=0&repo_id=696192900&response-content-disposition=attachment%3B%20filename%3Dgradle-8.8-all.zip&response-content-type=application%2Foctet-stream"
"https://dl.pstmn.io/download/latest/linux_64"
"https://download-cdn.jetbrains.com/toolbox/jetbrains-toolbox-2.3.2.31487.tar.gz"
"https://objects.githubusercontent.com/github-production-release-asset-2e65be/181461073/bfa50080-0a2d-11eb-8166-de3a7240d604?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=releaseassetproduction%2F20240622%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240622T230800Z&X-Amz-Expires=300&X-Amz-Signature=28888f8bd0ec0dfd51bcb3e22bcfe76e0dd7bf4b3abb94cc28cdf64790dfaa6b&X-Amz-SignedHeaders=host&actor_id=0&key_id=0&repo_id=181461073&response-content-disposition=attachment%3B%20filename%3Dv2ray-linux-64.zip&response-content-type=application%2Foctet-stream"
)

sudo tar -xvzf postman-linux-x64.tar.gz
cd postman-linux-x64
sudo rm -rf /opt/Postman
sudo mv Postman /opt/Postman
sudo ln -s /opt/Postman/Postman /usr/bin/postman
cat > ~/.local/share/applications/postman.desktop <<EOL
[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=postman
# Before v6.1.2
# Icon=/opt/Postman/resources/app/assets/icon.png
Icon=/opt/Postman/app/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;
EOL

#Gradle
echo "Setting up Gradle......"
sudo mkdir /opt/gradle
sudo unzip -d /opt/gradle gradle-8.8-all

echo "Rebooting....."
sudo reboot