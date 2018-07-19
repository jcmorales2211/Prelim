z<- 12
class(z)
z<-c(12,FALSE)
class(z)
m<-c(10,13,15,33)
n<-c(13,22,88,110)
rbind(m,n)
z<-list(22,"a","c", FALSE)
z[[2]]
z<- 10:40
y<- 2
z<- 10:40
y<-3
z+y
x<-c(117,114,14,15,113,112,110)
x[x>100]<- 14
x

colnames(hw1_data)

hw1 = read.csv('hw1_data.csv')
print(hw1[1:12,])

nrow(hw1)

print(hw1[148:153,])

hw1[82, 'Solar.R']


sub = subset(hw1, is.na(hw1))
nrow(sub)
sub = subset(hw1, is.na(Ozone))
nrow(sub)
sub = subset(hw1, is.na(Wind))
nrow(sub)
sub = subset(hw1, is.na(Temp))
nrow(sub)


sub=subset(hw1, !is.na(Ozone), select = Ozone)
apply(sub,2, mean)

sub=subset(hw1, !is.na(Wind), select = Wind)
apply(sub,2, mean)

sub=subset(hw1, !is.na(Temp), select = Temp)
apply(sub,2, mean)

sub=subset(hw1, Month ==6, select= Temp)
sub= subset(hw1, Ozone > 26 & Temp > 80, select = 'Solar.R')
apply(sub, 2,mean)

sub=subset(hw1, Month ==6, select= Temp)
apply(sub, 2 , mean)

sub=subset(hw1, Month == 5 & !is.na(Ozone), select = Ozone)
apply(sub,2,max)
