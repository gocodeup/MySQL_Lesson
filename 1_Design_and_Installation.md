# Design

**MySQL Architecture**

MySQL/MariaDB follows a traditional client/server model. The server (mysqld) is in charge of managing all of the data while the clients (mysql, mysqladmin) use the data.
MySQL/MariaDB uses a multi-threaded design as opposed to a multi-process design. This allows for much more efficent access to system resources.

**CPU Considerations**

MySQL is optimized for a 64-bit architecture, but a 32-bit version is available for legacy hardware.
64-bit CPU's allow far better access to resources such as memory, caches, etc.
4 or more processing units(cores or physical CPU's).

**Memory Considerations**

MySQL performance is directly related to the amount of memory available. MySQL will cache frequently used data in memory, greatly reducing disk access.
The amount of RAM required is highly dependent on several factors:
  - Queries
  - Server Configuration
  - Database size and structure

The recommended amount is 8GB or more of RAM.

**Storage Considerations**

MySQL is a very I/O intensive application, and ideally uses high performing, redundant storage.
Due to varied database server needs (cost, performance, reliability,etc), here are some common storage options:
  - RAID1/5 storage on SAS/SATA hard drives, for basic redundancy and performance
  - RAID10 storage on SAS/SATA hard drives, for high redundancy and performance
  - RAID10 storage on SSD hard drives, for extreme redundancy and performance

**OS Considerations**

The operating system should preferably be installed on some sort of RAID storage, and in a perfect world separate from the database RAID system.
Ideally, you will be running MySQL in a Linux enviroment, but keep in mind there is a Windows version as well.
As for flavor/version, there isn’t a terrible amount of concern here. Any popular distro should have no problems running MySQL.
Care should be taken to ensure the database is properly started and stopped with the operating system.

# 
**Installation**

The MySQL source code is available for download from http://dev.mysql.com/downloads/
The MariaDB source code is available for download from https://downloads.mariadb.org/
Additionally, most distributions of Linux maintain one or more packages for the MySQL system.
MySQL is even available to the Microsoft world!

**Packages**

Installing a package is very simple on most distributions of linux:
- Redhat/Rocky/Fedora:
   - yum install mysql-server
   - yum install mariadb-server

MySQL is the standard on RHEL6 installations, While on RHEL7 and on, the new standard is MariaDB.
Remember, the package "mysql" is only the client. To install both the client AND server, always install the "mysql-server" package, as it has the client package "mysql" as a dependency

# Lab Time!

You may switch to the root user to complete all labs in this lesson using sudo -i
- Install the necessary mariadb packages. This includes at least packages mariadb and mariadb-server.
- Make sure to enable and start the mariadb daemon.
- Once complete, spend some time browsing http://dev.mysql.com or https://mariadb.com/kb/en/mariadb/documentation/

[![continue](./images/continue.png)](./1_solution.md)
