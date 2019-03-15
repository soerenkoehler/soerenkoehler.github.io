FROM alpine

RUN apk update && apk add \
    ruby-full \
    ruby-dev \
    g++ \
    make

RUN gem install jekyll jekyll-seo-tag jekyll-paginate

WORKDIR /work

CMD jekyll s --force-polling -H 0.0.0.0
