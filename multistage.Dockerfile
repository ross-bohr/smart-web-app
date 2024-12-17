ARG DOTNET_VERSION=8.0-alpine
FROM mcr.microsoft.com/dotnet/sdk:${DOTNET_VERSION} AS base
WORKDIR src
#RUN ls
COPY source .
#RUN ls
RUN dotnet build -o /output

FROM mcr.microsoft.com/dotnet/aspnet:${DOTNET_VERSION}
LABEL owner=gita
RUN addgroup -S rossgrp && adduser -S ross -G rossgrp
USER ross
WORKDIR app
COPY --from=base /output .
ARG WHO=World
ENV WHO=$WHO
#RUN echo $WHO
EXPOSE 8080
ENTRYPOINT ["dotnet", "app1.dll"]
