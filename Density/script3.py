import numpy
from numpy import genfromtxt
import pandas
from scipy.spatial import distance_matrix
import hub_toolbox
from hub_toolbox.HubnessAnalysis import HubnessAnalysis


my_data = genfromtxt('20D1.csv', delimiter=',')

# calculate hubness (here, skewness of 5-occurence)
S_k, _, _ = hub_toolbox.Hubness.hubness(D=my_data, k=5, metric='distance')
# S_k = 1.5941042021329748


my_data = genfromtxt('20D2.csv', delimiter=',')

# calculate hubness (here, skewness of 5-occurence)
S_k, _, _ = hub_toolbox.Hubness.hubness(D=my_data, k=5, metric='distance')
# S_k = 2.0844290566933754


my_data = genfromtxt('20D3.csv', delimiter=',')

# calculate hubness (here, skewness of 5-occurence)
S_k, _, _ = hub_toolbox.Hubness.hubness(D=my_data, k=5, metric='distance')
# S_k = 1.2455338755901784


my_data = genfromtxt('20D4.csv', delimiter=',')

# calculate hubness (here, skewness of 5-occurence)
S_k, _, _ = hub_toolbox.Hubness.hubness(D=my_data, k=5, metric='distance')
# S_k = 2.241864419491929


my_data = genfromtxt('20D5.csv', delimiter=',')

# calculate hubness (here, skewness of 5-occurence)
S_k, _, _ = hub_toolbox.Hubness.hubness(D=my_data, k=5, metric='distance')
# S_k = 1.459787672677929


my_data = genfromtxt('20D6.csv', delimiter=',')

# calculate hubness (here, skewness of 5-occurence)
S_k, _, _ = hub_toolbox.Hubness.hubness(D=my_data, k=5, metric='distance')
# S_k = 4.275882070670827


my_data = genfromtxt('20D7.csv', delimiter=',')

# calculate hubness (here, skewness of 5-occurence)
S_k, _, _ = hub_toolbox.Hubness.hubness(D=my_data, k=5, metric='distance')
# S_k = 1.346218106509166


my_data = genfromtxt('20D8.csv', delimiter=',')

# calculate hubness (here, skewness of 5-occurence)
S_k, _, _ = hub_toolbox.Hubness.hubness(D=my_data, k=5, metric='distance')
# S_k = 1.5094910269061228


my_data = genfromtxt('20D9.csv', delimiter=',')

# calculate hubness (here, skewness of 5-occurence)
S_k, _, _ = hub_toolbox.Hubness.hubness(D=my_data, k=5, metric='distance')
# S_k = 2.1891636478365766


my_data = genfromtxt('20D10.csv', delimiter=',')

# calculate hubness (here, skewness of 5-occurence)
S_k, _, _ = hub_toolbox.Hubness.hubness(D=my_data, k=5, metric='distance')
# S_k = 1.3925336096018088

my_data = genfromtxt('20D11.csv', delimiter=',')

# calculate hubness (here, skewness of 5-occurence)
S_k, _, _ = hub_toolbox.Hubness.hubness(D=my_data, k=5, metric='distance')
# S_k = 1.5193865082408766


my_data = genfromtxt('20D12.csv', delimiter=',')

# calculate hubness (here, skewness of 5-occurence)
S_k, _, _ = hub_toolbox.Hubness.hubness(D=my_data, k=5, metric='distance')
# S_k = 4.379892856889473


my_data = genfromtxt('20D13.csv', delimiter=',')

# calculate hubness (here, skewness of 5-occurence)
S_k, _, _ = hub_toolbox.Hubness.hubness(D=my_data, k=5, metric='distance')
# S_k = 1.9983439066625033


my_data = genfromtxt('20D14.csv', delimiter=',')

# calculate hubness (here, skewness of 5-occurence)
S_k, _, _ = hub_toolbox.Hubness.hubness(D=my_data, k=5, metric='distance')
# S_k = 1.418608599846271


my_data = genfromtxt('20D15.csv', delimiter=',')

# calculate hubness (here, skewness of 5-occurence)
S_k, _, _ = hub_toolbox.Hubness.hubness(D=my_data, k=5, metric='distance')
# S_k = 1.441531169104857


my_data = genfromtxt('20D16.csv', delimiter=',')

# calculate hubness (here, skewness of 5-occurence)
S_k, _, _ = hub_toolbox.Hubness.hubness(D=my_data, k=5, metric='distance')
# S_k = 2.5854161529844366


my_data = genfromtxt('20D17.csv', delimiter=',')

# calculate hubness (here, skewness of 5-occurence)
S_k, _, _ = hub_toolbox.Hubness.hubness(D=my_data, k=5, metric='distance')
# S_k = 1.4094271234531703


my_data = genfromtxt('20D18.csv', delimiter=',')

# calculate hubness (here, skewness of 5-occurence)
S_k, _, _ = hub_toolbox.Hubness.hubness(D=my_data, k=5, metric='distance')
# S_k = 1.3327236818226298


my_data = genfromtxt('20D19.csv', delimiter=',')

# calculate hubness (here, skewness of 5-occurence)
S_k, _, _ = hub_toolbox.Hubness.hubness(D=my_data, k=5, metric='distance')
# S_k = 1.2184087479777232


my_data = genfromtxt('20D20.csv', delimiter=',')

# calculate hubness (here, skewness of 5-occurence)
S_k, _, _ = hub_toolbox.Hubness.hubness(D=my_data, k=5, metric='distance')
# S_k = 1.6662435829103943