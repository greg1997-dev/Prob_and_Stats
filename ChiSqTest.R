prob<-c(pnorm(66,68,1), #<66 in
        pnorm(67.5,68,1)-pnorm(66,68,1), #<66x<67.5
        pnorm(68.5,68,1)-pnorm(67.5,68,1), #67.5<x<68.5
        pnorm(70,68,1)-pnorm(68.5,68,1), #68.5<x<70
        1-pnorm(70,68,1)) #>70 in
chisq.test(c(18,177,198,102,5),p=prob)
survey<-matrix(c(117,130,60,30,50,51),nrow = 2,ncol = 3)
survey
chisq.test(survey,correct = FALSE)

moustache<-matrix(c(12,8,28,52),nrow = 2,ncol = 2)
moustache
chisq.test(moustache,correct = F)

blood_type<-matrix(c(82,13,89,27,54,7,19,9),nrow = 2,ncol = 4)
blood_type
chisq.test(blood_type,correct = F)

cereal<-matrix(c(9,13,6,16),nrow = 2,ncol = 2)
cereal
chisq.test(cereal,correct = F)
