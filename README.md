# OneWay_Anova_in_R

The dataset has 46 rows and nine columns. The variables include categorical and continuous variables. 
The test will be if there is any difference in the food consumption by the birds during these different times of the day, and the hypothesis will be as follows:
HO: There is no difference in food consumption by the birds during different times of the day.
HA: There is a difference in food consumption by the birds during different times of the day.

The three assumptions for one-way ANOVA are normal population distribution, random and independent variables, and homogeneity of variance. The ANOVA assumptions can be checked by creating two simple diagnostic plots using the ANOVA outcome.
![image](https://user-images.githubusercontent.com/38915552/168483310-4e6daa8f-382a-4497-bc94-d33fdc0d7703.png)


> anv2 <- aov(Conversion ~ TimeOfDay, data = banova)
> summary(anv2)
                      Df   Sum Sq   Mean Sq F value   Pr(>F)
TimeOfDay    2   170921     85460     0.252     0.778
Residuals   43   14579048  339048
