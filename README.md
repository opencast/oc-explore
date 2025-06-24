# Ansible Playbook for explore.opencast.org

This playbook contains everything to setup [OC Explore](https://explore.opencast.org), including Opencast, Tobira, a PostgreSQL, MeiliSearch and OpenSearch.
This repository is only useful to Opencast committers that have access to the server.
As an Opencast users, there is likely nothing interesting in here for you.

We want to keep OC Explore fairly vanilla to make upgrades very easy and keep maintenance to a minimum.
This also means we only use the built-in users and don't connect any authentication system.
