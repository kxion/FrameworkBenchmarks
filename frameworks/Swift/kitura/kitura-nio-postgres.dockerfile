FROM swift:4.1

ADD ./ /kitura
WORKDIR /kitura
RUN apt update -yqq && apt install -yqq libpq-dev
ENV KITURA_NIO=1
RUN swift build -c release
CMD .build/release/TechEmpowerPostgres
