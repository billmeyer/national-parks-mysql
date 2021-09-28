# national-parks-mysql

A simple repo to create a MySQL instance that has a single database- `nationalparks_db`, with a single table- `NATIONAL_PARKS` that contains a list of all the National Parks in the United States.

## Build the Image

Build the container image by running the `build.sh` scripts:

```
$ ./build.sh
```

Verify the build:

```
$ docker images
REPOSITORY                  TAG       IMAGE ID       CREATED          SIZE
nationalparks-mysql-image   latest    937250d110ac   28 seconds ago   535MB
```

## Run the MySQL server instance

Run the MySQL server instance in a container with:

```
$ ./run-mysql.sh
```

and verify it started:

```
$ docker ps
CONTAINER ID   IMAGE                       COMMAND                  CREATED          STATUS         PORTS      NAMES
07199310b4ff   nationalparks-mysql-image   "docker-entrypoint.s…"   10 seconds ago   Up 9 seconds   3306/tcp   nationalparks-mysql
```

## Query the MySQL instance

Verify the `nationalparks_db` has been seeded properly by running:

```
$ ./run-client.sh
Unable to find image 'mariadb:latest' locally
latest: Pulling from library/mariadb
35807b77a593: Already exists
7275e59ecb3d: Already exists
e8aad5ad91b4: Already exists
c9acfbaed0bf: Already exists
c0eb3de6044a: Already exists
bc1fe3865c9c: Already exists
63117ccbd0ec: Already exists
91c9aaf2ea87: Already exists
2118d7479e34: Already exists
6bd89e50398a: Already exists
Digest: sha256:4bbee12b1adf299211f844ebbe89563675c46965470dcfa40f5278d63c56d030
Status: Downloaded newer image for mariadb:latest
+-----+--------------+-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+---------------------------+----------------+----------+--------------------------+----------------+----------+-----------+
| ID  | LOCATION_NUM | LOCATION_NAME                                                               | ADDRESS                                                                                                                          | CITY                      | STATE          | ZIP_CODE | PHONE_NUM                | FAX_NUM        | LATITUDE | LONGITUDE |
+-----+--------------+-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+---------------------------+----------------+----------+--------------------------+----------------+----------+-----------+
|   1 | ADAM         | Adams National Historical Park                                              | 135 Adams Street                                                                                                                 | Quincy                    | MA             |     2169 | (617) 770-1175           | (617) 472-7562 |  42.2564 |  -71.0112 |
|   2 | AFBG         | African Burial Ground National Monument                                     | 290 Broadway, 1st Floor                                                                                                          | New York                  | NY             |    10007 | (212) 637-2019           | (212) 227-2026 |   40.715 |  -74.0054 |
|   3 | ACAD         | Acadia National Park                                                        | P.O. Box 177                                                                                                                     | Bar Harbor                | ME             |     4609 | (207) 288-3338           | (207) 288-8813 |  44.3386 |  -68.2733 |
|   4 | ABLI         | Abraham Lincoln Birthplace National Historical Park                         | 2995 Lincoln Farm Road                                                                                                           | Hodgenville               | Kentucky       |    42748 | (270) 358-3137           | (270) 358-3874 |  37.5357 |  -85.7341 |
...
| 356 | ZION         | Zion National Park                                                          | Zion National Park                                                                                                               | Springdale                | Utah           |    84767 | NULL                     | (435) 772-3426 |  37.2408 |  -112.942 |
| 357 | YOSE         | Yosemite National Park                                                      | PO Box 577                                                                                                                       | Yosemite National Park    | CA             |    95389 | (209) 372-0200           | NULL           |   37.719 |  -119.557 |
| 358 | YELL         | Yellowstone National Park                                                   | P.O. Box 168                                                                                                                     | Yellowstone National Park | WY             |    82190 | (307) 344-7381           | (307) 344-2014 |  44.4621 |  -110.642 |
| 359 | YUCH         | Yukon Charley Rivers National Preserve                                      | Eagle Visitor Center, P.O. Box 167                                                                                               | Eagle                     | AK             |    99738 | (907) 547-2233           | (907) 547-2247 |  64.7894 |  -141.203 |
+-----+--------------+-----------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------+---------------------------+----------------+----------+--------------------------+----------------+----------+-----------+
```



