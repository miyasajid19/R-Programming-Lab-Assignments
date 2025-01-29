P_cloudy=0.4
P_rainy=0.2
P_cloudy_when_rainy=0.85

P_rainy_when_cloudy=(P_cloudy_when_rainy*P_rainy)/P_cloudy
print(paste("The probability of it being rainy when it is cloudy is:", P_rainy_when_cloudy*100,"%"))