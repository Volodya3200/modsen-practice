#!/bin/bash

helm repo add gitlab https://charts.gitlab.io/
helm repo update


helm upgrade --install gitlab gitlab/gitlab --set certmanager-issuer.email=vvzlssk32@gmail.com
