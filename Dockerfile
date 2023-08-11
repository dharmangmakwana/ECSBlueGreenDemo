# Use General node images as builder and install dependency
FROM public.ecr.aws/v9k4k1l7/localdockerhub:node14 AS build-env
WORKDIR /usr/src/app
COPY package*.json app.js ./
RUN npm install

# Copy Application & its dependency into distroless container
FROM gcr.io/distroless/nodejs
COPY --from=build-env /usr/src/app /usr/src/app
WORKDIR /usr/src/app
EXPOSE 3000
CMD ["app.js"]
