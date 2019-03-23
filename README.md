# Tuto_ArgParseGraph

## Summary

- [Description](#description)
- [Install](#install)
- [Use it](#user-it)
- [Tests](#test)
- [Documentation](#documentation)

## Description  
An example of integration and usage of the ArgParseGraph library

## Install

**requirement:**
```
pip install --user argparse-graph
```

## Use it

```
# run scenarios
make

make scenario=1
make scenario=2
make scenario=...
make scenario=4
```

## Tests


## Documentation

_Makefile commands available_:

|           **Commands name**           | **Description**                         |
|:-------------------------------------:|:--------------------------------------- |
|              `make run`               | run example                             |
| `make run scenarios=[1 , 2, 3, 4, 5]` | run example with a specifique scenarios |
|                                       |                                         |

you can specify makefile options:

|    **Define name**    | **Default** | **Description**                             |
|:---------------------:|:----------- | ------------------------------------------- |
|  `EXEC_DEFAULT_TEST`  | pytest      | Tools to run tests                          |
|                       |             |                                             |
| `PYTHON_DEFAULT_EXEC` | python3     | Use Python to run tests and install package |
|                       |             |                                             |

__Reference__:

- [Python3.5 Documentation](https://www.python.org/downloads/release/python-350/)
- [argparse (python3)](https://docs.python.org/3/library/argparse.html)
- [argparse-graph](https://pypi.org/project/argparse-graph/s)
- [pip](https://pip.pypa.io/en/stable/)
- [setuptools](https://setuptools.readthedocs.io/en/latest/)
