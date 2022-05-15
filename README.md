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


The p-value is 0.778, which is bigger than the standard threshold of 0.05, so it is safe to accept the null hypothesis. This indicates no difference in the mean for the different durations of feeding the birds, and the birds consume the foods at a similar rate during the entire day. 

> TukeyHSD(anv)
  Tukey multiple comparisons of means
    95% family-wise confidence level
Fit: aov(formula = Conversion ~ TimeOfDay, data = banova)
$TimeOfDay
                                    diff                  lwr            upr           p adj
Evening-Afternoon -167.87403    -753.0958   417.3477   0.7669026
Morning-Afternoon -121.77409   -660.8408   417.2926   0.8478631
Morning-Evening     46.09995    -437.1310   529.3309    0.9708895
The results of the Tukey HSD test indicate all the p-values are greater than 0.05  and confirm there is no statistical difference among the distinct durations of the day. If the p-values were below the standard value of 0.05, it could have been said there is a statistically significant difference. The pairwise t-test also reveals the similarity among the food consumption rate by the birds during different hours of the day. 
