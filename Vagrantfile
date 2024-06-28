Vagrant.configure("2") do |config|
  config.vm.define "master" do |master|
    master.vm.box = "ubuntu/jammy64"
    master.vm.hostname = "master"
    master.vm.network "private_network", ip: "172.16.0.1"
    master.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 2
    end
#    master.vm.provision "shell", path: "scripts/master.sh"
  end

  (1..2).each do |i|
    config.vm.define "worker#{i}" do |worker|
      worker.vm.box = "ubuntu/jammy64"
      worker.vm.hostname = "worker#{i}"
      worker.vm.network "private_network", ip: "172.16.0.#{10+i}"
      worker.vm.provider "virtualbox" do |vb|
        vb.memory = "2048"
        vb.cpus = 1
      end
      worker#{i}.ssh.username = "vagrant"
#      worker.vm.provision "shell", path: "scripts/worker.sh"
    end
  end


end

