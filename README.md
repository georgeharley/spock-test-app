# spock-test-app

## Introduction

This repo was created to demonstrate how the JUnit 5
[console launcher](https://junit.org/junit5/docs/current/user-guide/#running-tests-console-launcher)
can be used to run Spock tests from the command line, outside of a Gradle
or Maven build.

## Using the launcher

First, in the root directory of this repo build the Spock test class
[MyTestSpec](./src/test/groovy/MyTestSpec.groovy)
copy all the project dependency Jars in the **build/libs/jars** folder.
These can be accomplished with the following command.

```bash
./gradlew clean build collectJars
```

Next, navigate to the **junit-console-launcher** directory and run
the `launch.sh` script. This has been written to run the JUnit 5
console launcher with the compiled `MyTestSpec` class plus all the
project dependency libraries on the classpath.

```bash
./launch.sh
```

## Outcomes

The expected behaviour is that the console launcher will discover the
two Spock tests in `MyTestSpec` and execute them. At present that is
_not_ happening. Instead, while the Spock test engine appears to have
been successfully registered, the Spock tests themselves do not appear
to be discovered and executed.

```bash
$ ./launch.sh 

Thanks for using JUnit! Support its development at https://junit.org/sponsoring

╷
└─ Spock ✔

Test run finished after 15 ms
[         1 containers found      ]
[         0 containers skipped    ]
[         1 containers started    ]
[         0 containers aborted    ]
[         1 containers successful ]
[         0 containers failed     ]
[         0 tests found           ]
[         0 tests skipped         ]
[         0 tests started         ]
[         0 tests aborted         ]
[         0 tests successful      ]
[         0 tests failed          ]

``` 
