FROM node:alpine
RUN npm -g install surge@0.20.1 && npm cache clean --force

##
## Image Metadata
##
ARG build_date
ARG version
ARG vcs_ref
LABEL maintainer = "CardboardCI" \
    \
    org.label-schema.schema-version = "1.0" \
    \
    org.label-schema.name = "surge" \
    org.label-schema.version = "${version}" \
    org.label-schema.build-date = "${build_date}" \
    org.label-schema.release= = "CardboardCI version:${version} build-date:${build_date}" \
    org.label-schema.vendor = "cardboardci" \
    org.label-schema.architecture = "amd64" \
    \
    org.label-schema.summary = "Static web publishing" \
    org.label-schema.description = "Surge is static web publishing for Front-End Developers, right from the CLI" \
    \
    org.label-schema.url = "https://gitlab.com/cardboardci/images/surge" \
    org.label-schema.changelog-url = "https://gitlab.com/cardboardci/images/surge/releases" \
    org.label-schema.authoritative-source-url = "https://cloud.docker.com/u/cardboardci/repository/docker/cardboardci/surge" \
    org.label-schema.distribution-scope = "public" \
    org.label-schema.vcs-type = "git" \
    org.label-schema.vcs-url = "https://gitlab.com/cardboardci/images/surge" \
    org.label-schema.vcs-ref = "${vcs_ref}" \