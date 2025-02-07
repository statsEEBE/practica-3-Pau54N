x = c(0,1)
f = c(0.68,0.32)

plot (x,f, type="h", ylim= c(0,1),col = "red")

n = 43
Y <- function(i){sum(sample(x,n,f, replace=TRUE))}
Y(13)
encuetas = sapply(1:400000, Y)
fr = table(encuetas)/400000
fr
barplot(fr)

dbinom(13,43, 0.32)
y <- 0:43
y
plot(y, dbinom(y,43, 0.32), type="h",col = "red")

pbinom(16,44, 0.32)
z <- 0:44
z
plot(z, pbinom(z,44, 0.32),type="s")

qbinom(0.5,44, 0.32)

#media
24*0.68
#varianza
24*0.68*0.32
#1er quartil
qbinom(0.25,23, 0.68)

#
46*0.32
