# **Google Data Analytics Capstone: Cyclistic Case Study**


## Scenario
As a junior data analyst at Cyclistic, a bike-share company in Chicago, my team and I are tasked with understanding the usage patterns of casual riders and annual members to inform a new marketing strategy aimed at converting casual riders into annual members. The director of marketing believes that the company's future success hinges on increasing the number of annual memberships. Therefore, we will analyze data to uncover differences in usage behavior between these two groups. Our recommendations for the new marketing strategy must be supported by compelling data insights and professional data visualizations for approval by Cyclistic executives.
## Ask

### Business Task
Develop marketing strategies aimed at converting casual riders into members.


## Prepare
### Data Source: 
Analyze trends using Cyclistic's historical trip data between Feb 2, 2022 to Jan 3, 2023 that can be viewed here [Link](https://divvy-tripdata.s3.amazonaws.com/index.html) . Please note that while the datasets have different names due to Cyclistic being a fictional company, they are suitable for our case study purposes and have been provided by Motivate International Inc. under the appropriate [License](https://www.divvybikes.com/data-license-agreement). This publicly available data allows exploration of how various customer segments utilize Cyclistic bikes. However, it's important to adhere to data privacy regulations, meaning personally identifiable information cannot be used. Consequently, we cannot connect pass purchases to credit card numbers to determine the residency of casual riders or if they've made multiple single pass purchases.


## Process

### Tools used for Analysis

1. Microsoft Excel was employed for data acquisition and comprehension, including the conversion of data types into Excel WorkBook format.
2. Microsoft SQL Server (MSSQL) was utilized for advanced data [Integration](https://github.com/JordonT98/Google-Data-Analytics-Capstone-Cyclistic-Case-Study-/blob/main/Cyclistic%20Data%20Combining.sql), [Analysis](https://github.com/JordonT98/Google-Data-Analytics-Capstone-Cyclistic-Case-Study-/blob/main/Cyclist%20Data%20Analysis.sql), and [Cleansing](https://github.com/JordonT98/Google-Data-Analytics-Capstone-Cyclistic-Case-Study-/blob/main/Cyclistic%20Data%20Cleaning.sql) processes.
3. Tableau served as the primary tool for data visualization, facilitating clear and insightful representations of the analyzed data.

### Data Preparation
In this stage, we will conduct data cleaning to ensure accuracy, completeness, and absence of errors and outliers in preparation for analysis. This involves:

- Exploring and observing the dataset thoroughly.
- Transforming data formats as necessary.
- Creating a column to calculate the duration of rides.
- Introducing another column to determine the specific day of the week.
- Implementing columns to distinguish start dates and end dates.
- Establishing a column to segregate start times and end times.
- Discovered there was lots of Null data in the columns.


## Analyze 

My initial focus centered on conducting a comparative analysis of ridership patterns between members and casual cyclists, with a specific emphasis on weekly ride frequencies. This examination provided crucial insights into the utilization trends of Cyclistic bikes among different user segments, facilitating a deeper understanding of their riding behaviors. 

![image](https://github.com/JordonT98/Google-Data-Analytics-Capstone-Cyclistic-Case-Study-/assets/158506708/583125d5-8c7e-4091-ab5e-741640c4837e)



 
![image](https://github.com/JordonT98/Google-Data-Analytics-Capstone-Cyclistic-Case-Study-/assets/158506708/df8bb5d6-d91e-487c-b078-d3d614861492)

Upon observation, it became evident that member riders predominantly utilized Cyclistic bikes during weekdays, while casual riders exhibited higher usage rates on weekends. This led me to investigate the peak hours of bike usage for each rider category, revealing a consistent trend of heightened activity around 5 pm, irrespective of membership status.
 

![image](https://github.com/JordonT98/Google-Data-Analytics-Capstone-Cyclistic-Case-Study-/assets/158506708/2772e2a6-1d76-47ae-8b68-2c26e326e08f)

Seeking to unravel additional insights from the dataset, I delved into the preferences regarding bike types among Cyclistic users during the specified period. Notably, a substantial proportion of member riders favoured classic bikes (1.7 million) and electric bikes (1.6 million), with negligible utilization of docked bikes. Conversely, casual riders displayed a preference for electric bikes (1.2 million) and classic bikes (891k), while a smaller cohort opted for docked bikes (177k). 



![image](https://github.com/JordonT98/Google-Data-Analytics-Capstone-Cyclistic-Case-Study-/assets/158506708/9e81b8c4-663f-47ff-98af-05d288ed4cb3)

Building upon these findings, I endeavored to ascertain the most favored months for bike usage among Cyclistic members. Analysis revealed a gradual uptick in ride numbers starting from April, peaking in July for casual riders and August for members. However, a subsequent decline was observed from October onwards, signifying seasonal variations in ridership patterns. 


![image](https://github.com/JordonT98/Google-Data-Analytics-Capstone-Cyclistic-Case-Study-/assets/158506708/ea7fac3b-c2d0-4c79-8606-930e3ef11537)

Further exploration led me to examine the top stations frequented by Cyclistic members, highlighting Streeter Dr & Grand Ave as the primary location for casual riders and Kingsbury St & Kinzie St for members. To gain a spatial understanding of these stations' distribution, I utilized mapping tools to visualize their geographic proximity.
 
![image](https://github.com/JordonT98/Google-Data-Analytics-Capstone-Cyclistic-Case-Study-/assets/158506708/725635bf-fb81-4575-a69b-521cddad1c90)

![image](https://github.com/JordonT98/Google-Data-Analytics-Capstone-Cyclistic-Case-Study-/assets/158506708/3821a6dd-e11d-4235-b7f3-639607947c5b)


Leveraging the mapped data, I proceeded to illustrate the total ride counts at each station, providing valuable insights into the stations with the highest ridership for both member and casual cyclists. This comprehensive analysis facilitated informed decision-making regarding resource allocation and strategic planning to enhance the Cyclistic biking experience for all users.

### Data Obersvation:
Based on my data observation, it appears that member riders predominantly utilize the bikes during weekdays, with Thursday registering the highest ride count (532,261), whereas casual riders favor weekends, particularly Saturday (473,190). Interestingly, both member and casual riders exhibit peak usage at 5 pm, with ride counts of 349,436 and 220,157, respectively.

Seeking further insights, I delved into the dataset to discern the most preferred bike types among users. Notably, 1.7 million member riders opt for classic bikes, while 1.6 million prefer electric bikes, with negligible usage of docked bikes. Conversely, casual riders display a preference for electric bikes (1.2 million), followed by classic bikes (891,459), and a smaller cohort utilizing docked bikes (177,474).

Expanding the analysis, I investigated the preferred months for ridership. The data reveals a steady increase starting from April, reaching a peak in July for casual riders (406,055 rides) and August for members (427,008 rides), followed by a decline beginning in October.

In addition, I explored the top stations frequented by each rider category. For casual riders, Streeter Dr & Grand Ave emerges as the primary station, recording 58,095 rides, while Kingsbury St & Kinzie St stands out for members, with 24,937 rides. Utilizing maps, I sought to visualize the geographic proximity of these stations.

Leveraging the mapped data, I identified stations with the highest ridership for both member and casual riders. Streeter Dr & Grand Ave emerged as the most frequented station, with a total of 75,382 rides, followed by Kingsbury St & Kinzie St, with 33,725 rides.


## Share
In order to effectively communicate my insights with stakeholders, I developed a comprehensive [Dashboard](https://public.tableau.com/app/profile/jordon.taylor/viz/GoogleDataAnalyticsCapstoneCyclisticCaseStudyV3/TotalMembers#1) utilizing Tableau. This dashboard incorporates carefully selected visuals to highlight key findings and facilitate a clearer understanding of the data-driven insights presented.

## Act
As requested by the director, here are the following marketing strategies that I recommend:

- Concentrate advertisement efforts for casual rides in coastal regions, aligning with the locations of preferred stations during peak hours around 5 pm, leveraging high usage trends during this timeframe.
- Introduce a special membership package tailored for weekend usage, capitalizing on the increased prominence of casual users during this period, thereby enhancing membership acquisition potential.
- Capitalize on heightened bike usage during the summer months by offering membership trials and discounts, strategically incentivizing potential users to transition to membership status.
- Implement targeted incentives for classic bike users among membership holders, aimed at encouraging their transition to regular membership usage, thereby fostering long-term engagement and loyalty.
- Offer discounts specifically for docked bike usage, aligning with the observed preference among casual riders, and utilize this strategy to bolster docked ridership through enhanced affordability and accessibility.
- Recognize and cater to the tendency of casual riders to utilize bikes for longer durations by offering discounts tailored to extended ride durations, thereby incentivizing increased usage and fostering customer satisfaction and loyalty.

Thanks for your time!

