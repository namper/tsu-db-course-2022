# TSU DB Course 2022

Running mssql on macos

### m1 based
for now there is problem with qemu emulation.
attempt to build mssql server on linux amd64 with qemu emulation https://hub.docker.com/repository/docker/namper/mssql-aarm

```
docker run \
--cap-add SYS_PTRACE -e 'ACCEPT_EULA=1' \
 -e 'MSSQL_SA_PASSWORD=1' \
 -p 1433:1433 --name azuresqledge \
 -d mcr.microsoft.com/azure-sql-edge

```

### intel based
```
docker run \
-e 'ACCEPT_EULA=Y' \
-e 'SA_PASSWORD=Password1!' \
-e 'MSSQL_PID=Express' \
--name sqlserver \
-p 1433:1433 \
-d mssql:dev
```

#### Make sure that container has at least 2gb ram available

DataGrip:
    set driver to JTds
