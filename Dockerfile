#######################################
# Base stage
#######################################
FROM node:16-alpine as base

# Setup working directory
RUN rm -rf /var/www/*
WORKDIR /var/www


#######################################
# Development stage
#######################################
FROM base as development

# Install some extra packages
RUN apk update && apk --no-cache add ca-certificates

# Start development server
CMD [ "npm", "run", "dev" ]
