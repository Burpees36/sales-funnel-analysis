# SQL Sales, Product, and Revenue Analysis
## Project Summary

This project analyzes the sales pipeline using key metrics, performance of sales agents and managers, popularity of products, and the company's customers. The analysis will help make data-driven decisions by utilizing SQL joins, aggregations, and CTEs. 


## Objectives

Identify top and bottom revenue contributors across offices, products, and parent companies

Compare product performance by revenue, units sold, and pricing discrepancies

Evaluate sales agent win rates, revenue contribution, and management effectiveness

Measure pipeline efficiency using engagement dates, close dates, and deal stage distribution

Provide business-ready findings that translate directly into improvement opportunities

## Data Overview

Tables used in the analysis include:

accounts – company sector, location, and subsidiary hierarchy

products – product catalog including pricing and product series

sales_pipeline – opportunity details, close values, and stages

sales_teams – sales agent → manager → regional office relationships

## Key metrics analyzed:

Revenue totals

Win/loss ratios and conversion rates

Product sales

Sales pipeline opportunities by month & time to close 

## Models & Methods

### The analysis uses SQL techniques including:

Aggregation & KPI calculations (SUM, AVG, COUNT)

Conditional logic (CASE WHEN for win rates and ratio metrics)

CTE hierarchy modeling to map subsidiaries to parent companies

Date-based pipeline metrics via DATEDIFF and stage duration

Comparative reporting across agents, regions, and product series

### Validation and interpretation included:

Conversion rate comparison across agents and managers

Revenue rollups to identify hidden performance concentration

Detection of pricing discrepancies between expected and realized values

## Key Results

Top revenue parent company: Acme Corporation — $519,349

Top product by revenue (March): GTXPro — $328,953

Top product by units sold: MG Special — 130 units

Best Sales Agent Win Rate: Hayden Neloms — 70.39%

Highest Revenue Agent: Darcel Schelcht — $1,153,214

Best Performing Manager: Cara Losch — 64.43% team win rate

Overall pipeline performance: ~63% win rate, ~27% loss rate

## Conclusion

This SQL project demonstrates how relational data can be used to diagnose performance issues, highlight profit opportunities, and support operational decision-making. By combining CTEs, joins, conditional metrics, and pipeline timing, the analysis creates a business-ready foundation for future reporting, dashboards, or BI integration.
