# Requirements

- VirtualBox (tested with 5.0)
- Vagrant (tested with 1.7)


# Instructions

1. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads).

2. Install [Vagrant](https://www.vagrantup.com/downloads.html).

3. Clone the repo and enter the folder.

    ```shell
    git clone https://github.com/chunky56/openlmis-vagrant.git
    cd openlmis-vagrant
    ```

4. Use Vagrant to build OpenLMIS demo machine.

    ```shell
    vagrant up
    ```

That's it! It may take a while for vagrant to finish creating the demo machine. After it finishes, go to http://192.168.33.210:9092/ to access the OpenLMIS web application.