FROM mcr.microsoft.com/playwright:v1.30.0-focal as builder
LABEL org.opencontainers.image.authors="Ludvig Hozman <ludvig@hozman.no>"

ADD . /slidev

WORKDIR /slidev

RUN yarn add --dev playwright-chromium
RUN yarn build --download

FROM pierrezemb/gostatic

COPY --from=builder /slidev/dist /srv/http/
