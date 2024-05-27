#Clustering code for Baseball Project

#Import data
mlbdata <- read.csv("~/Downloads/mlbdata.csv") 

#K-means clustering
# Loading package 
library(ClusterR) 
library(cluster) 
library(factoextra)


#Create subset of data for clustering
subsetclust1 <- mlbdata[, c("X23.payroll", "X22.payroll", "X21.payroll", "X20.payroll", "City.Population", "media.market.size", "Team.valuation", "X23.attendence.g","X22.attendence.g","X21.attendence.g")]

#Elbow Method for finding the optimal number of clusters
fviz_nbclust(
  subsetclust1,
  kmeans,
  method = "wss",
  k.max = 25,
  verbose = FALSE
)



# Fitting K-Means clustering Model  
# to training dataset 
set.seed(240) # Setting seed 
kmeans.re <- kmeans(subsetclust1, centers = 3, nstart = 20) 
kmeans.re 

#Adding cluster numbers to initial dataset
Data2 <- mlbdata
Data2$subsetclust1 <- kmeans.re$cluster

# Cluster identification for  
# each observation 
kmeans.re$cluster 


Clusterdata <- Clusterdata %>%
  mutate(Cluster = kmeans.re$cluster) 

# Confusion Matrix 
cm <- table(subsetclust1$Venue, kmeans.re$cluster) 
cm 

## Visualizing clusters 
y_kmeans <- kmeans.re$cluster 
clusplot(subsetclust1[, c("X23.payroll", "City.Population")], 
         y_kmeans, 
         lines = 0, 
         shade = TRUE, 
         color = TRUE, 
         labels = 4, 
         plotchar = FALSE, 
         span = TRUE, 
         main = paste("Cluster Groupings"), 
         xlab = 'X23.payroll', 
         ylab = 'City.Population') 

#Export data with cluster number attached to each observation
write.csv(Data2, file = "CLUSTEREDmlb.csv")


