# Alumni Network
This network is designed to help alumni stay connected after graduation. 

## Why

2020 was an eventful year. I graduated from the UCSD in the midst of Covid-19. To keep my career growing and continue my learning, I constructed this project as a way to help my alumni network stay in touch using a few of the skills I learned this past year. 


## What

The idea behind this project is to build an alumni career development community that connects alumni across different companies and industries. The services, after they are built, are intended to help alumni connect with a community, search the directory, and connect with each other.

<!--Alumni Career Community (./Alumni%20Project-Context%20diagrams.png) -->

![Alumni Career Community Use Cases](Alumni%20Project-Use%20Cases.png)

This envisioned alumni career community is online.  Alumni register with the community app portal. After the registration, alumni can search by industry, by company, by school, or by year. Alumni can then connect with each other. Community activities happen off the portal with preferred channels such as SLACK and Microsoft Teams.  

The app portal is deployed to public cloud. It is maintained by a site administrator. A simple FAQ bot is setup to handle the routine questions.  

## Solution Summary
This portal application has a UX layer, a service layer, and a database layer.  
![Alumni Career Community Context](Alumni%20Project-Context%20diagrams.png)
The UI portal is single page app to be built on a JavaScript framework.  
The service layer is comprised of micro-services that connect the UI with the databases. 

The database design is the following. 
![Alumni Career Community Database](Alumni%20Project-data%20model.png)

## Implementation
industry_ddl.txt
