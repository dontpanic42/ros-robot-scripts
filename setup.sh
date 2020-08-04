# Setup ros
# See http://wiki.ros.org/melodic/Installation/Ubuntu
# Setup sources
echo "Setting up ROS sources"
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt update
echo "Done setting up ROS sources, starting install"
# Actual setup
sudo apt install ros-melodic-desktop-full
echo "Done installing ROS, start configuration/initialization"
# Configuration and Initialization
sudo rosdep init
rosdep update
# Setup env
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc
# Setting up build env
echo "Done configuration/initialization, settingu up build env"
sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential

# Setup arduino/rosserial
# See http://wiki.ros.org/melodic/Installation/Ubuntu
echo "Setting up arduino/serial"
sudo apt-get install ros-melodic-rosserial-arduino
