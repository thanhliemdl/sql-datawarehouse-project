/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'Datawarehouse' after checking if it already exists.
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
    within the database: 'bronze', 'silver', and 'gold'.

WARNING:
    Running this script will drop the entire layers if it exists.
    All data in the layers will be permanently deleted. Proceed with caution
    and ensure you have proper backups before running this script.
*/

-- create database
create database if not exists Datawarehouse;

use Datawarehouse;

-- create layers
drop table if exists bronze_layer;
create table bronze_layer (
    company varchar(100)
);

drop table if exists silverronze_layer;
create table silver_layer (
    company varchar(100)
);

drop table if exists gold_layer;
create table gold_layer (
    company varchar(100)
);
