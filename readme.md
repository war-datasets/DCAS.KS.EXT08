# Dataset: DCAS.KS.EXT08

Een dataset omtrent 36574 Amerikaanse officieren die zijn gesneuveld tijdens de eerste koreanse oorlog. 

## Installatie:

1) You connect to your MySQL database server. 

```bash
mysql -u <youruser> -p
```

2) Run the install.sql file with the following command. 

```sql 
source path/to/install.sql;
```

3) **Celebrate**: Now there is a database created named `korean_dataset` with the table `casualties`

## Bron: 
Als basis en bron is de ruwe dataset gebruikt die je [hier](https://catalog.archives.gov/id/2240988) kunt vinden.