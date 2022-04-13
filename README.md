# TSU DB Course 2022

Running mssql on macos

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
