library(methylKit)
file_path="C://Users//Awang//CSB//project//sandbox//awk_trim_methylation.bed"
mod_path="C://Users//Awang//CSB//project//sandbox//trim_manip_sample.bed"

file_path2="C://Users//Awang//CSB//project//sandbox//sample.txt"

imported_table = read.table(file_path2)
head(imported_table)
write.table(transform(imported_table, V9 = V7/100), mod_path)
mod_table <- read.table(mod_path)
head(mod_table)
new_DF <- imported_table[rowSums(is.na(imported_table)) > 0,]

head(imported_table)
myobj2=methRead(mod_path,sample.id="test",assembly="hg19",context="bisulfite",
                resolution="base",
                pipeline=list(fraction=TRUE,chr.col=1,start.col=2,end.col=3,
                              coverage.col=8,strand.col=6,freqC.col=9)
                )

obj=methRead(mod_path,sample.id="test",assembly="mm9",header=TRUE, context="CpG", resolution="base",
         pipeline=list(fraction=TRUE,chr.col=1,start.col=2,end.col=2,
                       coverage.col=6,strand.col=3,freqC.col=5 )
)

head(myobj2)

myobj=methRead(file.list,
            sample.id=list("test1","test2","ctrl1","ctrl2"),assembly="hg18",
            treatment=c(1,1,0,0),
            pipeline=list(fraction=FALSE,chr.col=1,start.col=2,end.col=3,
                          coverage.col=5,strand.col=4,freqC.col=6))

head(myobj[[1]])
getMethylationStats(myobj[[1]],plot=F,both.strands = F)
