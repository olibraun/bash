#!/bin/bash

# Sequential
echo "Begin sequential precessing."
sleep 1
echo "I slept for one second."
sleep 1
echo "I slept for one second."
sleep 1
echo "I slept for one second."
sleep 1
echo "I slept for one second."
echo "Sequetial processing finished."

echo "--------------------"

# Parallelized
echo "Begin parallelized precessing."
(
  sleep 1
  echo "I slept for one second."
)&
(
  sleep 1
  echo "I slept for one second."
)&
(
  sleep 1
  echo "I slept for one second."
)&
(
  sleep 1
  echo "I slept for one second."
)&
wait
echo "Parallel processing finished."