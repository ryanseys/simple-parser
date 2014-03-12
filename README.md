# Simple Expression Parser

Simple mathematical expression parser using Yacc and (F)lex

## Usage

### Examples
```
> 1 + 1
2.000000

> -1--4
3.000000

> (1+1)*4^log((6^2)^(1/2))
23.975998
```

### To compile

```bash
$ make
```

### To compile and run

```bash
$ make run
```

### To compile and run tests

```bash
$ make test
```

### To clean up files
```bash
$ make clean
```

## Tests

###Run the tests

```bash
$ ./tests.sh
```

## License

MIT &copy; [Ryan Seys](https://ryanseys.com)
