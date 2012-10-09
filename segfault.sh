#!/bin/bash
let "run = 1"
while bundle exec rspec
do
  let "run = run + 1"
  echo "Starting run: $run"
done

echo "Failed during run: $run"
