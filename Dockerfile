from debian:sid

run  export DEBIAN_FRONTEND=noninteractive \
 &&  apt-get update \
 &&  apt-get install -y libgl1-mesa-dri libgl1-mesa-glx openssh-client ssh-askpass socat virt-manager virt-manager \
 &&  apt-get clean \
 &&  rm -rf /var/lib/apt/lists

add docker-entrypoint.sh /usr/local/bin/virt-manager
entrypoint ["virt-manager"]
