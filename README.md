# Goal #
Use principals of supervised and unsupervised learning to attempt to extract information from public patient gene expression data

# First Step #
Use supervised k-means clustering to identify genes that show a similar expression level across experimental conditions

# Next Step #
Check the functions of these clustered genes with similar expression level, check for possible related functioning.

# Classification #
Perform unsupervised classification via K-Nearest Neighbors and a Support Vector Machine
These classification will be based on gene expression and labels will be of the patient's outcome in 60 days

We run a KNN classifier with k=1, 3, 5
We apply SVM with a linear kernel on the gene data

The resulting outcome of classification is plotted with a histogram
