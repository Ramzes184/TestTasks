#!/bin/bash

declare -a shouldBe

given="the quick brown fox jumps over the lazy dog"

shouldBe[1]="the\nquick\nbrown\nfox\njumps\nover\nthe\nlazy\ndog"
shouldBe[2]="brown\ndog\nfox\njumps\nlazy\nover\nquick\nthe\nthe"
shouldBe[3]="brown\ndog\nfox\njumps\nlazy\nover\nquick\nthe"
shouldBe[4]="brown 1\ndog 1\nfox 1\njumps 1\nlazy 1\nover 1\nquick 1\nthe 2"
shouldBe[5]="the 2\nbrown 1\ndog 1\nfox 1\njumps 1\nlazy 1\nover 1\nquick 1"
shouldBe[6]="the 2\nbrown 1\ndog 1\nfox 1\njumps 1\nlazy 1\nover 1\nquick 1"

for (( i=1; i<=1; i++ ))
do
  out="$(java -jar ./"task$i".jar)"
  if [[ "${shouldBe[$i]}" != "$out" ]]; then
      printf "\nTest failed\n"
  fi
  if [[ "${shouldBe[$i]}" != "$out" ]]; then
      printf "\nOK\n"
  fi

done




