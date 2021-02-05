# Container image that runs your code (alpine OS with openjdk because we may also use Java classes)
FROM openjdk:11

RUN apt-get update
#RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN apt-get -qq -y install curl
RUN apt-get install -y unzip
RUN apt-get install -y zip
RUN curl -L -o /kotlin.zip https://github.com/JetBrains/kotlin/releases/download/v1.4.30/kotlin-compiler-1.4.30.zip
RUN unzip kotlin.zip

#RUN chmod a+x "$HOME/.sdkman/bin/sdkman-init.sh"
#RUN source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk install kotlin 1.4.30

# Copies your code file from your action repository to the filesystem path '/' of the container
COPY action.main.kts /action.main.kts

# Set working directory to '/'
WORKDIR /

# Make the file executable
RUN chmod 755 /action.main.kts

# Code file to execute when the docker container starts up
ENTRYPOINT ["/action.main.kts"]
