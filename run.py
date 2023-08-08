# test to see if conda was loaded well

print("Now running python code:")

with open("logs/run.txt", "w") as file:
	x = 5
	file.write(f"This is an example of a log: save variable {x}")


try:
	import torch
	print("Torch was successfully loaded")
except:
	print("failed to import torch")


print("Script complete.")
