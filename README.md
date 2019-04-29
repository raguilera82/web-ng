# DevopsWeb

## Create namespace

```
$> kubectl create namespace devops-web-ng
```

## Set Docker Registry

```
$> kubectl create \
    secret docker-registry nexus-docker \
    --docker-server=nexus-local.tntformacion.com:10000 \
    --docker-username=admin \
    --docker-password=YOUR_PASSWORD \
    --docker-email=admin@example.org --namespace=devops-web-ng
```

# Raise backend

First database

$> docker-compose -f compose/test.yml up --build -d devops-db-test

After app:

$> docker-compose -f compose/test.yml up --build -d devops-app-test

# Set secure tls

```
$> kubectl create secret tls secure-tls --key privkey1.pem --cert fullchain1.pem -n devops-web-ng
``


This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 1.4.8.

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `-prod` flag for a production build.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via [Protractor](http://www.protractortest.org/).

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI README](https://github.com/angular/angular-cli/blob/master/README.md).
