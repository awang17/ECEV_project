file.list=list( system.file("extdata", 
                            "test1.myCpG.txt", package = "methylKit"),
                system.file("extdata",
                            "test2.myCpG.txt", package = "methylKit"),
                system.file("extdata", 
                            "control1.myCpG.txt", package = "methylKit"),
                system.file("extdata", 
                            "control2.myCpG.txt", package = "methylKit") )
myobj=methRead(file.list,
               sample.id=list("test1","test2","ctrl1","ctrl2"),
               assembly="hg18",
               treatment=c(1,1,0,0),
               context="CpG"
)
getMethylationStats(myobj[[2]],plot=FALSE,both.strands=FALSE)

file_path="C://Users//Awang//CSB//project//sandbox//awk_trim_methylation.bed"
myobj2=methRead(file_path,sample.id="test",assembly="hg19",context="bisulfite",
                resolution="base", header=FALSE, sep=" ",
                pipeline=list(fraction=FALSE,chr.col=1,start.col=2,end.col=3,
                              coverage.col=8,strand.col=6,freqC.col=7)
)

getMethylationStats(myobj2,plot=TRUE)


