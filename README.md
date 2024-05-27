# MLB-roster-construction-based-on-market-size

Project with Parker Gibbons, as a part of the Stat 306: Multivariate Sports Analytics class with Professor Bradley A. Hartlaub at Kenyon College. April 3rd, 2024.

In this project, Parker and I analyzed whether market size had an impact on what aspects of roster construction different MLB teams rely on to win and have playoff success. First, we clustered MLB teams based on financial metrics, using K-means-clustering to group the 30 MLB teams into 3 different clusters, dividing the teams into large, medium, and small markets. Next, we created supervised machine learning models to determine what different variables lead to success in each of the three clusters. 

Linear regression models were inconsistent, predicting playoff success for large market teams relatively well (adjusted R-squared of 0.7936), but for small market teams rather poorly (adjusted R-squared of 0.2783). However, multivariate adaptive regression splines (MARS) models, which were included in order to better explore potential non-linear relationships, were at times more predictively powerful. 

There were a variety of specific conclusions drawn for each market size, but the general takeaway is that the models do suggest a difference in roster construction between small, medium, and large market teams, meaning that market size does impact what is necessary for a team to have success. 

This repository includes our Google Slides presentation sharing the details behind our process, our two page executive summary of results, the code (written in R) used to create our models and do the analysis, and the data we considered. If you have any questions or are interested in our process, data, models, code, or analysis, please do not hesitate to reach out!
