#!/bin/bash

declare -a shouldBe

given="the quick brown fox jumps over the lazy dog"

n=$'\n'

shouldBe[1]="the${n}quick${n}brown${n}fox${n}jumps${n}over${n}the${n}lazy${n}dog"
shouldBe[2]="brown${n}dog${n}fox${n}jumps${n}lazy${n}over${n}quick${n}the${n}the"
shouldBe[3]="brown${n}dog${n}fox${n}jumps${n}lazy${n}over${n}quick${n}the"
shouldBe[4]="brown 1${n}dog 1${n}fox 1${n}jumps 1${n}lazy 1${n}over 1${n}quick 1${n}the 2"
shouldBe[5]="the 2${n}brown 1${n}dog 1${n}fox 1${n}jumps 1${n}lazy 1${n}over 1${n}quick 1"
shouldBe[6]="the 2${n}brown 1${n}dog 1${n}fox 1${n}jumps 1${n}lazy 1${n}over 1${n}quick 1"

count=0

for (( i=1; i<=6; i++ ))
do
  out="$(java -jar ./"task$i".jar $given)"
  if [[ "${shouldBe[$i]}" != "$out" ]]; then
      printf "\nTest failed\n"
      ((count++))
  fi
  if [[ "${shouldBe[$i]}" == "$out" ]]; then
      printf "\nOK\n"
  fi

done

if [[ $count -gt 0 ]]
then
  printf "\nError occurred during test running\n"
  exit 1
  else
  printf "Tests succeed\n"
  exit 0
fi



