#!/bin/bash
# It is assume your system is steup as stated in the READMe.md

export RABBITMQ='infrataster-rabbitmq1.eq.ons.digital'
export SURVEYRUNNER='infrataster-surveys.eq.ons.digital'

cd ..
if ! bundle exec rspec; then
  exit 1
else
  exit 0
fi