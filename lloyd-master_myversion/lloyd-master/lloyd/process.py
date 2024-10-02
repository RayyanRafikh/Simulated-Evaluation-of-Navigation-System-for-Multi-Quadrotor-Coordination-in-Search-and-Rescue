from lloyd import Field
import numpy as np
import random

################### Function to generate a random 2D point within a specified range

#def random_point(dimension=2, min_c=-5, max_c=5):
#    return [random.randint(min_c, max_c) for _ in range(dimension)]

###################################################################################

# generate 2000 observations with 2 dimensions
points = np.random.rand(2000, 2)
print(points)

############### Generates 5 observations with 2 dimensions within a specified range
#points = []
#number_of_drones = 5
#for i in range(number_of_drones):
#   point = random_point(min_c=-5, max_c=5)
#   points.append(point)

#points = np.array(points)
#print(points)
####################################################################################

# create a lloyd model on which one can perform iterations
field = Field(points)

# run one iteration of Lloyd relaxation on the field of points
field.relax()

# get the resulting point positions
new_positions = field.get_points()

print(new_positions)

for i in range(0,100):
   points = new_positions
   field = Field(points)
   field.relax()
   new_positions = field.get_points()
   print(new_positions)