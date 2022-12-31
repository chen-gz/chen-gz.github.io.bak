FROM archlinux
RUN pacman -Sy r wget git make gcc pandoc --noconfirm
RUN R -e "install.packages('blogdown',repos = 'http://cran.us.r-project.org')"
RUN wget https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_linux-amd64.tar.gz && tar -xzvf hugo_extended_0.109.0_linux-amd64.tar.gz && mv hugo /bin/ && rm hugo_extended_0.109.0_linux-amd64.tar.gz 
ENTRYPOINT [""]



