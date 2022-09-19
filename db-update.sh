#!/bin/bash

## Useful script for performing db migrations and updates.

cd Server

# dotnet ef migrations add <MIGRATION_NAME> --output-dir Data/migrations
# ASPNETCORE_ENVIRONMENT=<ENVIRONMENT_NAME>

dotnet ef database-update
