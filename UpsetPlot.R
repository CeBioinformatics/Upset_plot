# Set seed for reproducibility
set.seed(20240902)

# Create a vector of genes from "gene1" to "gene1000"
genes <- paste("gene", 1:1000, sep = "")

# Create a list of gene sets with different sizes
x <- list(
  Heart = sample(genes, 250),
  Liver = sample(genes, 500),  
  Brain = sample(genes, 400),
  Kidney = sample(genes, 375)
)

# Create an Upset plot
library(UpSetR)

upset(fromList(x), 
      order.by = "freq")

# Create a customized Upset plot
upset(fromList(x), 
      order.by = "freq",
      main.bar.color = "darkgrey",
      sets.bar.color = c("blue", "red", "green", "yellow"),
      text.scale = 2)

