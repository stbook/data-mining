import numpy
from numpy import genfromtxt
import pandas
from scipy.spatial import distance_matrix
from hub_toolbox.HubnessAnalysis import HubnessAnalysis


# Dexter
ana = HubnessAnalysis()
ana.analyze_hubness()



import hub_toolbox

# load the DEXTER example dataset
D, labels, vectors = hub_toolbox.IO.load_dexter()

# calculate intrinsic dimension estimate
d_mle = hub_toolbox.IntrinsinDim.intrinsic_dimension(vectors)

# calculate hubness (here, skewness of 5-occurence)
S_k, _, _ = hub_toolbox.Hubness.hubness(D=D, k=5, metric='distance')

# perform k-NN classification LOO-CV for two different values of k
acc, _, _ = hub_toolbox.KnnClassification.score(
        D=D, target=labels, k=[1,5], metric='distance')

# calculate Goodman-Kruskal index
gamma = hub_toolbox.GoodmanKruskal.goodman_kruskal_index(
        D=D, classes=labels, metric='distance')

# Reduce hubness with Mutual Proximity (Empiric distance distribution)
D_mp = hub_toolbox.MutualProximity.mutual_proximity_empiric(
        D=D, metric='distance')

# Reduce hubness with Local Scaling variant NICDM
D_nicdm = hub_toolbox.LocalScaling.nicdm(D=D, k=10, metric='distance')

# Check whether indices improve after hubness reduction
S_k_mp, _, _ = hub_toolbox.Hubness.hubness(D=D_mp, k=5, metric='distance')
acc_mp, _, _ = hub_toolbox.KnnClassification.score(
        D=D_mp, target=labels, k=[1,5], metric='distance')
gamma_mp = hub_toolbox.GoodmanKruskal.goodman_kruskal_index(
        D=D_mp, classes=labels, metric='distance')



numpy.savetxt("D-test.csv", D, delimiter=",")

numpy.savetxt("labels-test.csv", labels, delimiter=",")

numpy.savetxt("vectors-test.csv", vectors, delimiter=",")



ana = HubnessAnalysis(D, labels)
ana.analyze_hubness(experiments="orig",
                    hubness_k=(5, 10), knn_k=(10, 20))

ana = HubnessAnalysis(vectors, labels)
ana.analyze_hubness(experiments="orig",
                    hubness_k=(5, 10), knn_k=(10, 20))





data = [[5, 7], [7, 3], [8, 1]]
ctys = ['Boston', 'Phoenix', 'New York']
df = pandas.DataFrame(data, columns=['xcord', 'ycord'], index=ctys)
pandas.DataFrame(distance_matrix(df.values, df.values), index=df.index, columns=df.index)

df = pandas.DataFrame(data)


data = [[1, 2, 3, 4], [2, 13, 8, 21], [1, 23, 2 ,12]]
df = pandas.DataFrame(data)
distance_matrix(df)



data = [[1, 2], [3, 4], [2, 13], [8, 21], [1, 23], [2 ,12]]
df = pandas.DataFrame(data)
distance_matrix(df.values, df.values)




ana = HubnessAnalysis(D, labels)
ana.analyze_hubness(experiments="orig",
                    hubness_k=(5, 10), knn_k=(10, 20))








my_data = genfromtxt('test1.csv', delimiter=',')



# calculate hubness (here, skewness of 5-occurence)
S_k, _, _ = hub_toolbox.Hubness.hubness(D=D, k=5, metric='distance')