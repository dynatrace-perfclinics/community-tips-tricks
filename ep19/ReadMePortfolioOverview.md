# Portfolio Overview Dashboard
This dashboard provides an executive level for all your Applications.

![Portfolio Overview Dashboard](PortfolioOverview.png)

# Prerequisites

None.

# Target Audience

- Application Owner
- Line of Business
- Executive

# Use Cases

- What is my overall APDEX score?
- Is my user traffic increasing?
- Do I have application efficiency issues?
- Do I have any poor performance trend issues?
- Do I have any error trend issues?
- Is any application experiencing high error rates?
- Is any application suffering from poor performance?
- What days/times do I have good user experiences?

# Install Instructions

- Download [Dashboard JSON](https://github.com/TechShady/Dynatrace-Dashboards-Gen3/blob/main/Portfolio%20Overview.json)
- Launch the new Gen3 UI
- Select the Dashboard app
- In the upper righthand corner, select Upload and select your json file
- Refresh your dashboard list and launch your Dashboard

# User Guide

The Portfolio Overview Dashboard is broken down into four sections.

![Portfolio Overview Dashboard](PortfolioOverview-0.png)

The dashboard header section has three filters that you can apply to your Executive Overview Dashboard:
- KPI - List of KPI metrics (i.e. Duration). Select a KPI to apply as a filtert to your dashboard.
- Aggregate - List of aggregation values (i.e. AVG). Select an aggregate to apply as a filtert to your dashboard.
- TimeShift - Value in days used by metrics to compare against. For example, a value of 7 will compare the KPI based on the current timeframe and compare that value to the same timeframe shifted by 7 days.

![Portfolio Overview Dashboard](PortfolioOverview-1.png)

The top section is called the KPI banner. This section has the following KPIs:
- Sessions: The total number of user sessions for all applications.
- Requests: The total number of user actions for all applications.
- Avg Duration: Time between the initial user input and complete page load.
- Avg Errors: Average number of Request and JavaScript Errors.
- Efficiency Rate: Rate of sessions with good user experience. A perfect efficiency rate is 100.
- Deficiency Rate: Rate of sessions with poor user experience. A perfect deficiency rate is 0.
- Apdex: Application Performance Index is a standard developed by an alliance of companies for measuring the performance of applications. A perfect Apdex score is 1.

Each KPI cell displays the current value for the current timeframe. Each KPI is compared to a seven-day time shift over the past 24 hours and will display, in parentheses, the KPI difference and trend direction.

![Portfolio Overview Dashboard](PortfolioOverview-2.png)

The middle section displays the following tables: 
- Sessions - The number of User Sessions for each application.
- Duration - The average user action Duration for each application.
- JavaScript Errors - The number of JavaScript Errors for each application.
- Request Errors - The number of Request Errors for each application.

 Each table displays the metric for the last current timeframe, 7 day timeshift, 14 day timeshift and 21 day timeshift. This enables trend analysis for each metric.
  
![Portfolio Overview Dashboard](PortfolioOverview-3.png)

The bottom section charts customer satisfaction (Satisfied, Tolerated, Frustrated) over the currnt timeframe.
