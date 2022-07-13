create database users;
create schema users_scheme;

create table users_scheme.companies
(
    ID    uuid default gen_random_uuid() PRIMARY KEY,
    Name  text        not null, --специально использовал текст, полное название компании может превышать 255 символов
    Phone varchar(30) not null
);

create table users_scheme.addresses
(
    ID           uuid default gen_random_uuid() PRIMARY KEY,
    City         varchar(50)  not null,
    Street       varchar(200) not null,
    House_number varchar(10)  not null,
    Flat_number  integer
);

create table users_scheme.companies_addresses
(
    Companies_ID uuid not null,
    Addresses_ID uuid not null,
    constraint fk_companies foreign key (Companies_ID) references users_scheme.companies (ID),
    constraint fk_addresses foreign key (Addresses_ID) references users_scheme.addresses (ID)
);

