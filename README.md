Code for upcoming blog at http://www.startdataengineering.com/post/how-to-test-sql-using-dbt/

## Pre-requisites

1. [docker](https://docs.docker.com/get-docker/)
2. [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
3. [dbt](https://docs.getdbt.com/dbt-cli/installation/)
4. [psql](https://stackoverflow.com/questions/44654216/correct-way-to-install-psql-without-full-postgres-on-macos)

## Setup

```bash
git clone https://github.com/josephmachado/unit_test_dbt.git
cd unit_test_dbt
chmod 755 setup_script.sh
chmod 755 tear_down_script.sh
chmod 755 run_dbt.sh
export PGPASSWORD=password # set password as env variable to not have to type it again
./setup_script.sh
```

## Run

```bash
./run_dbt.sh
```

## Tear down

```bash
./tear_down_script.sh
```
