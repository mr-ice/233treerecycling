FROM python:3.7.2-slim
RUN pip3 install --upgrade pip
RUN pip3 install pandas pdfkit xlrd xlsxwriter

RUN apt-get update && apt-get install -y wget bzip2 libfontconfig1 libxext-dev
RUN wget https://s3.amazonaws.com/shopify-managemant-app/wkhtmltopdf-0.9.9-static-amd64.tar.bz2
RUN tar xvjf wkhtmltopdf-0.9.9-static-amd64.tar.bz2
RUN mv wkhtmltopdf-amd64 /usr/local/bin/wkhtmltopdf && chmod +x /usr/local/bin/wkhtmltopdf


COPY splitter /usr/local/bin/
RUN chmod 755 /usr/local/bin/splitter

WORKDIR "/MT"

ENTRYPOINT [ "splitter" ]
