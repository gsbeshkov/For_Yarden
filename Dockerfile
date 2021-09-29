FROM ubuntu                                                                                                            
ARG var=HelloWorld                                                                                                     
ENV var=HelloWorld                                                                                                       
RUN touch /env.txt                                                                                                     
RUN printenv > /env.txt 