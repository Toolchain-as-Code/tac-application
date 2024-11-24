############################################################
########### Docker Container for Deno Application ##########
######################## DEVELOPMENT #######################
############################################################

########## AUTHOR:  Jan Rother
########## DATE:    2024-12
########## VERSION: 1.0

# |---------------------- Environment ---------------------|
ARG BASE_REPOSITORY=janrother
ARG BASE_IMAGE=tac-environment
ARG BASE_ENVIRONMENT=creation
ARG BASE_RELEASE=latest

############################################################
# |---------------------- Base Image ----------------------|
FROM ${BASE_REPOSITORY}/${BASE_IMAGE}:${BASE_ENVIRONMENT}-${BASE_RELEASE} AS creation

# |----------------------- Finalize -----------------------|

USER deno

COPY . /workspace/.

WORKDIR /workspace

RUN deno install --entrypoint ./app/server.ts
RUN deno cache ./app/server.ts

EXPOSE 8000

CMD ["run", "--allow-net", "--allow-read", "--allow-env", "./app/server.ts"]

############################################################
