#!/bin/bash

echo ""
echo "Do you want to install Java 8.0.252.hs-adpt ?"
echo ""
select yn in Yes No
do
    case $yn in
        Yes ) 
            echo "Installing Java 8.0.252.hs-adpt ..."
            # https://dev.to/awwsmm/installing-and-running-hadoop-and-spark-on-ubuntu-18-393h

            java -version
            sudo apt autoremove
            sudo apt install curl -y
            sudo apt install unzip
            sudo apt install zip
            curl -s "https://get.sdkman.io" | bash
            echo "source ~/.sdkman/bin/sdkman-init.sh" >> ~/.bashrc
            source ~/.bashrc
            sdk install java 8.0.252.hs-adpt
            echo "export JAVA_HOME=~/.sdkman/candidates/java/8.0.252.hs-adpt/" >> ~/.bashrc
            break;;
        No ) 
            break;;
    esac
done

sudo apt-get install libwebkitgtk-1.0-0
echo ""
echo "Downloading Pentaho Data Integration 9.0.0.0-423 ..."
echo ""
wget https://ufpr.dl.sourceforge.net/project/pentaho/Pentaho%209.0/client-tools/pdi-ce-9.0.0.0-423.zip
unzip pdi-ce-9.0.0.0-423.zip -d ./pentaho

echo ""
echo ""
echo "For execute PDI (Pentaho Data Integration) execute:"
echo ""
echo "$ cd pentaho/data-integration/"
echo "$ ./spoon.sh"
echo ""
echo ""