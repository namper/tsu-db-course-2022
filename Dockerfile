FROM mcr.microsoft.com/azure-sql-edge:latest

# Create work directory
RUN mkdir -p /usr/work
WORKDIR /usr/work

# Copy all scripts into working directory
COPY . /usr/work/

EXPOSE 1433
CMD /bin/bash ./entrypoint.sh
