# vi Dockerfile

FROM ubuntu                                      ##{base or reference image for new container}
MAINTAINER "parihar1302"                      ##{author optional}
#LABEL name="ABHISHEK SINGH"                    ##{optional}
#LABEL email="ab3parihar@gmail.com"
ENV NAME abhishek                                 ##{environemnt}
ENV PASS Password
RUN apt update && apt install git -y                  ##{running command at the time of building image}
RUN touch abhi.txt
WORKDIR /singh/docker/                            ##{A location where all next/upcoming command will execute}this will ctreate the location also
RUN mkdir anisble
RUN apt install nginx -y                      ##{installing nginx}
RUN service nginx start
WORKDIR /testing/prod                                ##{now chaning the Working directry}after this all the next command will execute this Working directory
COPY project /testing/prod                            ##{coping files of project folder to container's prod folder}
COPY Development.tar.gz /testing/prod                   ##{coping tar.gz from local machine to container as it is}
ADD Development.tar.gz /testing/prod                   ##{extracting & adding all the content of tar.gz file in contianer}
CMD apt update                                     ##{executing CMD commad after container creating}

:wq or exit

# docker build -t myimage:tag .                 ##{tag = mention the tag or version, "." shows pwd} 
# docker images                                  ##{list images}
# docker run -itd myimage:tag /bin/bash          ##{running a container}
# docker ps                                        ##{shows running container list}
# docker exec -it container_id /bin/bash         ##{going inside the container & checking services}



