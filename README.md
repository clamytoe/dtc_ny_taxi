# Data Engineering Zoomcamp

## Piperider Workshop

The workshop repo can be found at InfuseAI's [taxi_rides_ny_duckdb](https://github.com/InfuseAI/taxi_rides_ny_duckdb) repo.

### Project workflow

- `dbt run --var 'is_test_run: false'`
- `piperider run`
- `make changes to model`
- `dbt run --var 'is_test_run: false'`
- `piperider run`
- `piperider compare-reports --last`

### Homework

The homework for this project can be found here at my [DE Zoomcamp](https://github.com/clamytoe/data-engineering-zoomcamp/blob/main/cohorts/2023/workshops/01-workshop.md) repo.

### Resources

- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
