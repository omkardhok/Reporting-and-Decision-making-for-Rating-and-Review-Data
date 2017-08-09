
Report<- function(a, b)
{
  a <- readinteger()
  b <- Service_Type()
  a<<-a
  b<<-b
  if(a %in% Thesis$Zip && b %in% Thesis$Type_of_Ownership)
  {
    print("Center available")
    subset(Thesis$Provider_Name, Thesis$Zip==a)
    
  }else
  { print("Center not available")}

}

Report()
print(a)
Thesis<-read.csv("C:/Users/omkar/Desktop/Thesis_new.csv")
