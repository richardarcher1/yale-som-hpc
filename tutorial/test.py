try:
    print("Hello World")
    import numpy
    import pandas
    import torch
except ImportError as e:
    print(f"Import error: {e}")

