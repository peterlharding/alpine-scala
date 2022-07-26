
export JAVA_HOME=/opt/jdk-17.0.4
export SCALA_HOME=/opt/scala        # Note: Dockerfile adds scala symlink to /usr/bin directory
export SBT_HOME=/opt/sbt

export PATH=${PATH}:${JAVA_HOME}/bin:${SBT_HOME}/bin

export LD_LIBRARY_PATH=${JAVA_HOME}/lib

