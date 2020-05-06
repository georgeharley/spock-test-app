# spock-test-app

## Introduction

This repo was created to demonstrate how the JUnit 5
[console launcher](https://junit.org/junit5/docs/current/user-guide/#running-tests-console-launcher)
can be used to run Spock tests from the command line, outside of a Gradle
or Maven build.

Please refer to Spock issue [1157](https://github.com/spockframework/spock/issues/1157)
for further background.

## Using the launcher

First, in the root directory of this repo run the following command to
compile the test class [MyTestSpec](./src/test/groovy/MyTestSpec.groovy)
and then add it to an uber Jar alongside most of the project dependency
Jars apart from the Spock ones which are copied separately to the
**build/libs** folder.

```bash
./gradlew clean build collectspockjars uberjar
```

Next, navigate to the **junit-console-launcher** directory and run
the [launch.sh](./junit-console-launcher/launch.sh) script. This has
been written to run the JUnit 5 console launcher with the compiled
`MyTestSpec` class plus all the project dependency libraries on the
classpath.

```bash
./launch.sh
```

## Outcomes

### Specifying test class only

The expected behaviour is that the console launcher will discover the
two Spock tests in `MyTestSpec` and execute them. If the name of the 
test spec class is supplied using the `--select-class` option then
the Spock test engine appears get successfully registered but the
Spock tests themselves do not appear to be discovered and executed.
This is shown below.

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

### Specifying test class and test class pattern

If the test class name is specified using `--select-class` along with a
regular expression to match test class names against (this is done
using the `--include-classname` option) then the Spock tests get discovered
and executed as hoped.

```bash
$ ./launch.sh                                   
╷
└─ Spock ✔
   └─ MyTestSpec ✔
      ├─ my first simple test ✔
      └─ my other simple test ✔

Test run finished after 226 ms
[         2 containers found      ]
[         0 containers skipped    ]
[         2 containers started    ]
[         0 containers aborted    ]
[         2 containers successful ]
[         0 containers failed     ]
[         2 tests found           ]
[         0 tests skipped         ]
[         2 tests started         ]
[         0 tests aborted         ]
[         2 tests successful      ]
[         0 tests failed          ]

```