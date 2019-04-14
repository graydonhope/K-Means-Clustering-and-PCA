# K-Means Clustering and Principal Component Analysis


## Part One: Implementing the K-Means clustering algorithm and using it to compress an image.

K-Means is an algorithm which automatically clusters similar data together. 
First, it assigns every training example (point) with its closest centroid:

![image](https://user-images.githubusercontent.com/41659296/56093580-91764d00-5e98-11e9-8259-4eb992cf9d33.png)

The second part of the algorithm recomputes the mean of the points that were assigned to it:

![image](https://user-images.githubusercontent.com/41659296/56093618-eb771280-5e98-11e9-91fb-6c8fc0098236.png)

### Running K-Means on an example dataset:

![image](https://user-images.githubusercontent.com/41659296/56093631-1497a300-5e99-11e9-8fc1-a3ea4dd635ce.png)

### Compressing an example image:
Initially, the image has a size of 128 x 128 pixel locations with 24 bits at each location which is 393, 216 bits. The new image has a size of 65, 920 bits after using the algorithm to group similar data together. This compression redues the size by a factor of 6.

![image](https://user-images.githubusercontent.com/41659296/56093661-7a842a80-5e99-11e9-87cf-e03f5916c9d3.png)


## Part Two: Principal Component Analysis for Dimensionality Reduction

### First Step:
Compute the covariance matrix of the data:

![image](https://user-images.githubusercontent.com/41659296/56093702-f2eaeb80-5e99-11e9-8351-168494e657f8.png)

### Second Step:
Use the SVD function to compute the eigenvectors

### Visualization Example of Projected data after PCA:

![image](https://user-images.githubusercontent.com/41659296/56093748-5c6afa00-5e9a-11e9-89f5-5bea6937ace8.png)

### Using PCA on Faces Dataset

Each face image starts with 32 x 32 = 1024 pixels

![image](https://user-images.githubusercontent.com/41659296/56093768-8b816b80-5e9a-11e9-8736-0f45241f6187.png)

They are then compressed into a vector of R^100. More than 10 times reduction!

![image](https://user-images.githubusercontent.com/41659296/56093775-920fe300-5e9a-11e9-89a7-7ec526a338d8.png)

This can be used to train data much more efficiently

The images can then be reconstrcuted from the compressed data using an estimate

![image](https://user-images.githubusercontent.com/41659296/56093782-9b994b00-5e9a-11e9-8de6-64cce5c344f5.png)



Program based on Stanford's Machine Learning Course.
