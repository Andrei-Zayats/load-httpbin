#!/bin/bash

cd /jmeter
rm -fr ./report/*
rm -f ./results.jtl
jmeter -n -t ./test/api-test.jmx -JWebApplicationIp=$WEB_APPLICATION_IP -JThreads=$NUMBER_OF_THREADS -JDurationOfTest=$DURATION_OF_TEST -JWarmUp=$WARM_UP -l ./results.jtl -e -o ./report