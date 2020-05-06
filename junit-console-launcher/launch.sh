#!/usr/bin/env bash

java -jar junit-platform-console-standalone-1.7.0-M1.jar \
  --classpath="../build/libs/all-tests-1.0.jar" \
  --classpath="../build/libs/spock-core-2.0-groovy-2.5-SNAPSHOT.jar" \
  --classpath=":../build/libs/spock-groovy2-compat-2.0-groovy-2.5-SNAPSHOT.jar" \
  --include-engine=spock --select-class=MyTestSpec --include-classname="^.*Spec$" --disable-banner
