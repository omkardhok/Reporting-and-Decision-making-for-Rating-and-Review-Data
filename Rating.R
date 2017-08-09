
mydata.frame<-Thesis[((a-10)<Thesis$Zip & Thesis$Zip<(a+10)) & 
                        (Thesis$Type_of_Ownership== b),]
edit(mydata.frame)

Rate<-function(m)
{
  m<-max((mydata.frame$HHCAHPS_Survey_Summary_Star_Rating + 
            mydata.frame$Star_Rating_for_health_team_gave._care_in_a_professional_way + 
            mydata.frame$Star_Rating_for_health_team_communicated_well_with_them + 
            mydata.frame$Star_Rating_team_discussed_medicines_pain_and_home_safety) / 4, na.rm = TRUE)
  m<<-m
  print(m)
}
Rate()


 