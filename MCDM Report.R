wdGet()

wdHeading(level = 1,"ANALYSIS REPORT")

wdSection("Introduction")

wdBody(paste("This report is based on the input of the location provided by the user. 
             We have assumed the user have marked all the services available at the center.
             The services required by the user being:
             
             1. Nursing care services.
             2. Physical care services.
             3. Occupational therapy services.
             4. Speech pathology services.
             5. Medical Social Services.
             6. Home health Aid services."))

wdSection("Inputs Entered by the user")
Frame2<-head(MCDM_Rank2,10)
rownames(Frame2)<-NULL
colnames(Frame)<-c("State","Certification Number","Provider Name","Provider Address","Zip","Phone","Ranking")
wdBody(
  paste("
        Zip Entered:",a,"      ","Type of ownership Desired:",b)
  )

wdSection("The Top ten services by Average Rating and MCD Rank at desired Location")

wdBody(
  wdTable(format(Frame2))
)

wdSection("Conclusion")
wdBody(paste("As we can observe that all the suggested centers are very near to the desired location of the user. The cumulative rating is also displayed along. And the range of output (distance wise) is entirely based on users willingness and could be altered very easily whenever needed."))