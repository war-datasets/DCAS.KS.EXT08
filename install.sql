CREATE DATABASE IF NOT EXISTS Korean_dataset;
USE Korean_dataset;

CREATE TABLE IF NOT EXISTS casualties (
  service_number        VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Service number',
  c                     VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Member component code.',
  ptp                   VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Person type name code',
  person_type_name      VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Person type name',
  member_name           VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Member name',
  s                     VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Member service code',
  service_name          VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Member service name',
  rank_rate             VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Member rank of rate',
  pg                    VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Member paygrade',
  occ                   VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Memeber occupation code',
  occupation_name       VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Member occupation name',
  birth_date            DATE         COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Member birthdate',
  gender                VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Member gender',
  hor_city              VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Home of record city',
  hor_county            VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Home of record county',
  hor_ctry              VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Home of record country code.',
  hor_ST                VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Home of record state code',
  state_prv_nm          VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'State or province name',
  marital_status        VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Marital name',
  religion_name         VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Religion short name',
  L                     VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'religion code',
  race_name             VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'race name',
  ethnic_name           VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Ethnic short name',
  race_omb              VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Race omb name',
  ethnic_group_name     VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Ethnic group name',
  cas_circumstances     VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Casualty circumstances',
  cas_city              VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Casualty city',
  cas_st                VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Casualty state or province code.',
  cas_ctry              VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Casualty county/over water code',
  cas_region_name       VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Casualty region name',
  country_or_water_name VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Country/Over water code',
  unit_name             VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Member unit',
  d                     VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'duty_code',
  process_dt            DATE         COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Process date',
  death_dt              DATE         COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Incident or death date',
  year                  VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'year of death',
  wc                    VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'War or Conflict code',
  oitp                  VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Operation incident type code',
  oi_name               VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Operation/Incident name',
  oi_location           VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Location name',
  close_dt              DATE         COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Closure date',
  aircraft              VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Aircraft type',
  h                     VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Hostile or non-hostile indicator',
  casualty_type_name    VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Casuality type name',
  casualty_category     VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Casuality category name',
  casualty_reason_name  VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Incident casuality reason name',
  csn                   VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Casualty Cat. Short name',
  body                  VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Remains recovered',
  casualty_closure_name VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Casualty closure name',
  wall                  VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Vietnam wall row and panel indicator',
  Incident_category     VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Casualty category name',
  i_status_dt           DATE         COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Incident casualty category date',
  i_csn                 VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'incident casualty cat. short name',
  i_h                   VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Incident hostile or Incident non-hostile death',
  i_aircraft            VARCHAR(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Incident aircraft type'
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

--
-- Import the dataset to the MySQL Database table.
--
LOAD DATA LOCAL INFILE 'DCAS.KS.EXT08.DAT' INTO TABLE casualties FIELDS TERMINATED BY '|';

--
-- Lower case the data
--
UPDATE casualties SET person_type_name          = LOWER(person_type_name);
UPDATE casualties SET member_name               = LOWER(member_name);
UPDATE casualties SET service_name              = LOWER(service_name);
UPDATE casualties SET occupation_name           = LOWER(occupation_name);
UPDATE casualties SET hor_city                  = LOWER(hor_city);
UPDATE casualties SET hor_county                = LOWER(hor_county);
UPDATE casualties SET state_prv_nm              = LOWER(state_prv_nm);
UPDATE casualties SET marital_status            = LOWER(marital_status);
UPDATE casualties SET race_name                 = LOWER(race_name);
UPDATE casualties SET ethnic_name               = LOWER(ethnic_name);
UPDATE casualties SET race_omb                  = LOWER(race_omb);
UPDATE casualties SET cas_region_name           = LOWER(cas_region_name);
UPDATE casualties SET country_or_water_name     = LOWER(country_or_water_name);
UPDATE casualties SET oi_name                   = LOWER(oi_name);
UPDATE casualties SET oi_location               = LOWER(oi_location);
UPDATE casualties SET casualty_type_name        = LOWER(casualty_type_name);
UPDATE casualties SET casualty_category         = LOWER(casualty_category);
UPDATE casualties SET casualty_closure_name     = LOWER(casualty_closure_name);
UPDATE casualties SET Incident_category         = LOWER(Incident_category);

--
-- Convert the dates.
--

UPDATE casualties SET birth_date                = DATE(birth_date);
UPDATE casualties SET process_dt                = DATE(process_dt);
UPDATE casualties SET death_dt                  = DATE(death_dt);
UPDATE casualties SET close_dt                  = DATE(close_dt);
UPDATE casualties SET i_status_dt               = DATE(i_status_dt);