#!/bin/bash
eval $(minikube docker-env)
./gradlew clean build docker