# =============================================================================
# GENERAL SETTINGS
# =============================================================================

## Set the name for the application
set :application, "voupe_short"

## Path where the application should be stored
## Stored in '/opt/apps/voupe_short' by default
# set :deploy_to, "/opt/apps/voupe_short"

## Repository settings
set :repository, "git@codebasehq.com:voupe/voupe-apps/short.git"
set :branch, "master"

## Server/app details
server "213.5.183.19", :web, :app, :db, primary: true
set :domain_name, "short.voupe.com"

# =============================================================================
# RECIPE INCLUDES
# =============================================================================

require "rubygems"
require "bundler/capistrano"
require "gonzo/deploy"