#How to use is included as comment at the end of the function, all you need to do is copy and paste. 
TimeWR<-function(){  
  print('This model calculate the Time Weighted Rate ') 
  print('Entries includes Open Balance, Deposits, Withdraws, Closed Balance.') 
  print('Please you will need to pay absolute attention to the prompt.') 
  d1 <-  as.numeric(readline(prompt="HOW MANY TIME did you have a balance Amount?: ")) 
  bal = numeric() 
  i <- 1 
  while (i < d1+1) {     
    x18 <-  as.numeric(readline(prompt=": Enter the Balances during your period:"))     
    bal <- append(bal,x18) 
    i = i+1   
  }   
  print(paste("All the balances are/is:"))   
  print(bal)      
  Y11 <-  as.numeric(readline(prompt="What YEAR is the first balance? YYYY: "))   
  Y12 <-  as.numeric(readline(prompt="What YEAR is the last balance? YYYY: "))   
  k = Y12 - Y11   
  k      
  cont = numeric()   
  cont <- append(cont,-bal[[1]])   
  i <- 1   
  while (i < d1-1) {     
    xh <-  as.numeric(readline(prompt=": Enter the Transactions made in DEPOSITS AND/OR WITHDRAWALS in the appropriate order, PLEASE INCLUDE NEGATIVE SIGN FOR WITHDRAW :"))     
    cont <- append(cont,xh)          
    i = i+1   
  }   
  cont <- append(cont,-bal[[d1]])   
  print(paste("All the transactions are/is:"))   
  print(cont)      
  difr = numeric()   
  difr1 = numeric()   
  jh <- bal + cont   
  difr <- append(difr,jh)   
  print(paste("The balances after Transactions are/is:"))   
  print(difr)      
  jK <- bal[[2]]/bal[[1]]   
  difr1 <- append(difr1,jK)   
  i <- 1   
  while (i < d1-1) {     
    gk <- bal[[i+2]]/difr[[i+1]]     
    difr1 <- append(difr1,gk)          
    i = i+1   
  }   
  #print(paste("The ratio of transaction to balances are:"))   
  #print(difr1) 
  if (k!=0){     
    mol <- (prod(difr1, na.rm = FALSE))**(1/k) -1        
  } 
  else if (k==0){     
    mol <- prod(difr1, na.rm = FALSE) - 1   
  }   
  print(paste("The Annual Time-Weifgted Rate of Return is, j = ", mol)) 
  #### TimeWR()   
} 