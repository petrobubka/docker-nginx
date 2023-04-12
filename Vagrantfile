Vagrant.configure("2") do |config|
  config.vm.define "webserver1" do |webserver1|
    webserver1.vm.box = "generic/ubuntu2004"
    webserver1.vm.network "private_network", ip: "192.168.1.10"
    webserver1.vm.provision "shell", inline: <<-SHELL
      sudo apt update
      sudo apt install -y apt-transport-https ca-certificates curl gnupg lsb-release
      curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
      echo \"deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable\" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
      sudo apt update
      sudo apt install -y docker-ce docker-ce-cli containerd.io
    SHELL
  end
end
