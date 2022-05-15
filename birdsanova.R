#Upload data
banova <- BirdFeederStudyData

head(banova)
summary(banova)
mean(banova$Conversion)
tapply(banova$Conversion, banova$TimeOfDay, mean)

#One way ANOVA
anv <- aov(Conversion ~ TimeOfDay, data = banova)
anv
summary(anv)
str(banova)
levels(banova$TimeOfDay)
banova$TimeOfDay <- as.factor(banova$TimeOfDay)
levels(banova$TimeOfDay)
str(banova)
anv2 <- aov(Conversion ~ TimeOfDay, data = banova)
summary(anv2)
ggline(banova, x = "TimeOfDay", y = "Conversion", add = c("mean_se", "jitter"),
       ylab = "Consumpption rate", xlab = "Time of the Day")
plot(anv, 1)
plot(anv, 2)

# post HOC test
TukeyHSD(anv)

pairwise.t.test(banova$Conversion, banova$TimeOfDay, p.adjust.methods = "BH")
hist(banova$Conversion)
hist(banova$Rate)

Group1 <- subset(banova, TimeOfDay == "Afternoon")
Group1
hist(Group1$Conversion)
