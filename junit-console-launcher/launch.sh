#!/usr/bin/env bash

java -jar junit-platform-console-standalone-1.7.0-M1.jar --classpath="../build/classes/groovy/test:../build/libs/jars/annotations-19.0.0.jar:../build/libs/jars/ant-1.9.13.jar:../build/libs/jars/ant-antlr-1.9.13.jar:../build/libs/jars/ant-junit-1.9.13.jar:../build/libs/jars/ant-launcher-1.9.13.jar:../build/libs/jars/apiguardian-api-1.1.0.jar:../build/libs/jars/asm-8.0.1.jar:../build/libs/jars/assertj-core-3.14.0.jar:../build/libs/jars/byte-buddy-1.10.9.jar:../build/libs/jars/cglib-nodep-3.3.0.jar:../build/libs/jars/commons-cli-1.4.jar:../build/libs/jars/groovy-2.5.11.jar:../build/libs/jars/groovy-ant-2.5.9.jar:../build/libs/jars/groovy-cli-commons-2.5.9.jar:../build/libs/jars/groovy-cli-picocli-2.5.9.jar:../build/libs/jars/groovy-console-2.5.9.jar:../build/libs/jars/groovy-datetime-2.5.9.jar:../build/libs/jars/groovy-docgenerator-2.5.9.jar:../build/libs/jars/groovy-groovydoc-2.5.9.jar:../build/libs/jars/groovy-groovysh-2.5.9.jar:../build/libs/jars/groovy-jmx-2.5.9.jar:../build/libs/jars/groovy-json-2.5.9.jar:../build/libs/jars/groovy-jsr223-2.5.9.jar:../build/libs/jars/groovy-macro-2.5.9.jar:../build/libs/jars/groovy-nio-2.5.9.jar:../build/libs/jars/groovy-servlet-2.5.9.jar:../build/libs/jars/groovy-sql-2.5.9.jar:../build/libs/jars/groovy-swing-2.5.9.jar:../build/libs/jars/groovy-templates-2.5.9.jar:../build/libs/jars/groovy-test-2.5.9.jar:../build/libs/jars/groovy-test-junit5-2.5.9.jar:../build/libs/jars/groovy-testng-2.5.9.jar:../build/libs/jars/groovy-xml-2.5.9.jar:../build/libs/jars/hamcrest-2.2.jar:../build/libs/jars/hamcrest-core-2.2.jar:../build/libs/jars/jcommander-1.72.jar:../build/libs/jars/jline-2.14.6.jar:../build/libs/jars/junit-4.12.jar:../build/libs/jars/junit-jupiter-api-5.6.1.jar:../build/libs/jars/junit-jupiter-engine-5.6.1.jar:../build/libs/jars/junit-platform-commons-1.6.1.jar:../build/libs/jars/junit-platform-engine-1.6.1.jar:../build/libs/jars/junit-platform-launcher-1.6.1.jar:../build/libs/jars/junit-platform-testkit-1.6.1.jar:../build/libs/jars/objenesis-3.1.jar:../build/libs/jars/opentest4j-1.2.0.jar:../build/libs/jars/picocli-4.0.1.jar:../build/libs/jars/qdox-1.12.1.jar:../build/libs/jars/spock-core-2.0-groovy-2.5-SNAPSHOT.jar:../build/libs/jars/spock-groovy2-compat-2.0-groovy-2.5-SNAPSHOT.jar:../build/libs/jars/testng-6.13.1.jar" --include-engine=spock --select-class=MyTestSpec