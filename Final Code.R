

mydata.frame$Ranking<-((mydata.frame$HHCAHPS_Survey_Summary_Star_Rating + 
  mydata.frame$Star_Rating_for_health_team_gave._care_in_a_professional_way + 
  mydata.frame$Star_Rating_for_health_team_communicated_well_with_them + 
  mydata.frame$Star_Rating_team_discussed_medicines_pain_and_home_safety) / 4)

Final_Report<-na.omit(mydata.frame)


Final.Last<-data.frame(Final_Report$State,Final_Report$CMS_Certification_Number_.CCN..,
                  Final_Report$Provider_Name, Final_Report$Address, Final_Report$City, 
                  Final_Report$Zip, Final_Report$Phone, 
                  Final_Report$Ranking,Final_Report$Response_rate)

Final<-Final.Last[order(Final.Last$Final_Report.Ranking, decreasing = TRUE),]

edit(Final)

