# Tuto_ArgParseGraph

## Summary

- [Description](#description)
- [Install](#install)
- [Use it](#user-it)
- [Documentation](#documentation)

## Description  
An example of integration and usage of the ArgParseGraph library.  
Few examples are available in this repository you can also find a   
tutorial article on medium [link](#need medium link). If you search for a documentation argparse-graph  
take a look at [the readme on the package page on pypi.](https://pypi.org/project/argparse-graph/)  
If you want let' us [an idea to improve argparse-graph feel free to write an issue on Github.](https://github.com/kuty22/argparse_graph)  

## Install

**requirement:**  
```
pip install --user argparse-graph
```

## Use it

>
> By default this example use python3 to use an other python version use the  
> param  `PYTHON_DEFAULT_EXEC`.  
> **example:**  
>  `make run scenario=2 PYTHON_DEFAULT_EXEC=python3.6`
>

```
# run all scenarios
make

# run a specific scenario
make run
make scenario=1
make scenario=2
make scenario=...
make scenario=8
```

## Documentation

_Makefile commands available_:

|               **Commands name**                | **Description**                       |
|:----------------------------------------------:|:------------------------------------- |
|                     `make`                     | run all examples                      |
|                 `make run_all`                 | run all examples                      |
|                   `make run`                   | run example                           |
| `make run scenarios=[1 , 2, 3, 4, 5, 6, 7, 8]` | run example with a specific scenarios |
|                                                |                                       |

you can specify makefile options:

|    **Define name**    | **Default** | **Description**                   |
|:---------------------:|:----------- | --------------------------------- |
|                       |             |                                   |
| `PYTHON_DEFAULT_EXEC` | python3     | Python version use to run scripts |
|                       |             |                                   |

__Reference__:

- [Python3.5 Documentation](https://www.python.org/downloads/release/python-350/)
- [argparse (python3)](https://docs.python.org/3/library/argparse.html)
- [argparse-graph (page pypi)](https://pypi.org/project/argparse-graph/)
- [argparse-graph (source on Github)](https://github.com/kuty22/argparse_graph)
- [pip](https://pip.pypa.io/en/stable/)
- [setuptools](https://setuptools.readthedocs.io/en/latest/)
