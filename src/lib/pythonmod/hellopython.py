"""
This module contains class for Hello World Library implemented in Python
"""


class HelloPython:
    """
    Class for collection of keywords in Hello World Library
    """

    def hello_from_python(self, name: str = "World"):
        """Log hello line with chosen name

        Parameter
        ---------
        name: str
            Name to log in hello line, by default World
        """
        print(f"Hello, {name}!")
