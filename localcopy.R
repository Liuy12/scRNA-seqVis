cranpacks <- c('devtools','shiny', 'shinydashboard', 'magrittr', 'shinythemes', 'colorspace', 'doParallel', 'ggplot2', 'scatterplot3d', 'GGally', 'data.table', 'dplyr', 'threejs', 'metricsgraphics', 'networkD3', 'DT', 'statmod', 'igraph', 'LPCM')
biocpacks <- c('RUVSeq', 'DESeq', 'DESeq2', 'XBSeq', 'edgeR', 'limma', 'scde', 'monocle', 'EBSeq', 'NetSAM', 'MAST', 'ROTS')

library(BiocManager)
for(i in cranpacks){
  if(! i %in% installed.packages()[,1])
    install.packages(i)
}
for(i in biocpacks){
  if(! i %in% installed.packages()[,1])
    BiocManager::install(i)
}

if(!"slidify" %in% installed.packages()[,1])
  devtools::install_github("ramnathv/slidify")
if(!'slidifyLibraries' %in% installed.packages()[,1])
  devtools::install_github("ramnathv/slidifyLibraries")
if(!'rCharts' %in% installed.packages()[,1])
  devtools::install_github("ramnathv/rCharts")
if(!'BPSC' %in% installed.packages()[,1])
  devtools::install_github("nghiavtr/BPSC")
if(!'rga' %in% installed.packages()[,1])
  devtools::install_github("skardhamar/rga")
if(!'d3heatmap' %in% installed.packages()[,1])
  devtools::install_github("talgalili/d3heatmap")
