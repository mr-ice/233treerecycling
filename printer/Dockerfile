FROM alpine:latest

RUN apk add -X https://dl-cdn.alpinelinux.org/alpine/v3.16/main -u alpine-keys --allow-untrusted

# Installs latest Chromium (85) package.
RUN apk add --no-cache \
      bash \
      chromium \
      nss \
      freetype \
      freetype-dev \
      harfbuzz \
      ca-certificates \
      ttf-freefont \
      nodejs \
      yarn

# Tell Puppeteer to skip installing Chrome. We'll be using the installed
# package.
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

# Puppeteer v5.2.1 works with Chromium 85.
RUN yarn add puppeteer@5.2.1 async@3.2.0 html-pdf-chrome@0.6.1

# Add user so we don't need --no-sandbox.
RUN addgroup -S pptruser && adduser -S -g pptruser pptruser \
    && mkdir -p /home/pptruser/Downloads /app \
    && chown -R pptruser:pptruser /home/pptruser \
    && chown -R pptruser:pptruser /app

# Run everything after as non-privileged user.
# this stopped working for Steve 2024-01-05
#USER pptruser


WORKDIR "/WorkDir"

ENTRYPOINT [ "printer/html2pdf" ]

