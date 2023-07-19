# test to see if conda was loaded well
try:
	import torch
except:
	print("failed to import torch")



try:
	import numpy as np
except:
	print("failed to import numpy")


print("if this is the first message you see, everything is loaded!")

try:
	x = torch.randn(3,4,5)
	print(f"the third element of the tensor is {x.flatten()[2].item()}")
	print(f"The tensor is size {x.size()}")
except:
	print("something did not work with the random tensor")
