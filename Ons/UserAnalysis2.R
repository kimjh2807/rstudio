#rm(list=ls())

getwd()
setwd("D:/rstudio/ons")

# gender
gender <- c(107657, 37600, 892)
names(gender) <- c("Male", "Female", "Null")
gender

plot(gender)

# barplot
barplot(gender,
        main="e-koreatech user on gender",
        xlab="Gender",
        ylab="user count",
        col=c("maroon", "cornflowerblue", "gray"),
        legend=TRUE,
        ylim=c(0, 120000),
        col.main="navy",
        col.lab="royalblue",
        col.axis="black",
        las=0)

# legend
legend(x=3, y=110000,
       legend=c("Male", "Female", "Null"),
       fill=c("maroon", "cornflowerblue", "gray"),
       title="Gender")

# relative color
rel.gener <- (gender-min(gender))/(max(gender)-min(gender))
grays <- gray(1-rel.gender)

colors()
grep("red", colors(), value=TRUE)
palette()

# logical fill color
gender.over <- gender[gender > 100000]
points(gender.over, col="red", pch=19)

# age
age <- c(18637, 52906, 37895, 24798, 10087, 2522)
names(age) <- c("10s", "20s", "30s", "40s", "50s", "60s")
age

cols <- ifelse(age == max(age), "maroon2", "grey")

# barplot
barplot(age,
        main="e-koreatech 연령별 회원수",
        xlab="연령대",
        ylab="회원수",
        ylim=c(0, 55000),
        col=cols,
        legend=TRUE,
        col.main="navy",
        col.lab="royalblue",
        col.axis="black",
        las=0)



