
from copy import copy

class BaseContext:
    def __init__(self):
        self.dicts = [1, 2, 3]

    def __copy__(self):
        duplicate = copy(super())
        duplicate.dicts = self.dicts[:]
        return duplicate

c = BaseContext()
copy(c)

