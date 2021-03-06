library("Vennerable")
Vcombo <- Venn(SetNames=c("Female","Visible Minority", "CS Major"), Weight= c(0,4148,409,604,543,67,183,146))
Vcombo0 <- Venn(SetNames=c("Female","Visible Minority", "CS Major","Name"), Weight= c(`1000`=109,`0100`=305,`1100`=45,`0010`=644,`1010`=64,`0110`=354,`1110`=287,`0001`=821,`1001`=30,`0101`=78,`1101`=6,`0011`=118,`1011`=16,`0111`=138,`1111`=66))
Vcombo1 <- Venn(SetNames=c("Female","Visible Minority", "CS Major"), Weight= c(`100`=139,`010`=383,`110`=51,`001`=760,`101`=80,`011`=492,`111`=353))
Vcombo2 <- Venn(SetNames =c("foo", "bar"), Weight = c(`01` = 7, `11` = 8, `10` = 12))
Vcombo3 <- Venn(SetNames =c("foo", "bar"), Weight = c(`11` = 8, `01` = 7, `10` = 12))

data(StemCell)
Vstem <- Venn(StemCell)
pdf("vennerable.pdf")
plot(Vstem,type="ellipses")
plot(Vcombo,doWeights=TRUE,type="circles")
plot(Vcombo0,type="ellipses")
plot(Vcombo1,doWeights=TRUE,type="circles")
plot(Vcombo2,doWeights=TRUE,type="circles")
plot(Vcombo3,doWeights=TRUE,type="circles")
dev.off()

