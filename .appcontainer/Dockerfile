############################################################
########### Docker Container for Deno Application ##########
######################## APPLICATION #######################
############################################################

########## AUTHOR:  Jan Rother
########## DATE:    2024-12
########## VERSION: 1.0

# |---------------------- Environment ---------------------|
ARG BASE_REPOSITORY=janrother
ARG BASE_IMAGE=tac-environment
ARG BASE_ENVIRONMENT=integration
ARG BASE_RELEASE=latest

############################################################
# |---------------------- Base Image ----------------------|
FROM ${BASE_REPOSITORY}/${BASE_IMAGE}:${BASE_ENVIRONMENT}-${BASE_RELEASE} AS integration

# |----------------------- Packages -----------------------|
# None.

# |--------------------- Customization --------------------|
# None.

# |----------------------- Finalize -----------------------|
WORKDIR /app

USER deno

COPY ./app/server.ts .
RUN deno install --entrypoint server.ts
RUN deno cache server.ts

EXPOSE 8000

CMD ["run", "--allow-net", "--allow-read", "--allow-env", "server.ts"]

############################################################
