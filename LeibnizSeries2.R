# Homework 12

# Calculation of Leibniz series
lval2=0
v_lei <- c()
v_n <- c()
v_pi <- c()
p=0
while (p<=200)
{
  
  lval = (((-1.0)**p)/(2.0*p+1.0))
  lval2=lval2+lval
  v_lei <- append(v_lei,lval2) 
  v_n  <- append(v_n,p)
  v_pi <- append(v_pi,pi/4)
  p =p+ 1
}
#v_lei


plot(v_n, v_lei,
     
     ylab="Sum",
     xlab="N",
     type="l",
     col="blue",
     ylim=c(-0.5,1)
)
lines(v_pi, type = "l", col = "blue")

v_diff <- v_lei-v_pi
v_diff

lines(v_diff, type = "l", col = "blue")

#text(locator(), labels = c("red line", "black line)"))


plot(v_n, v_diff,
     
     ylab="Leibniz Series",
     xlab="N",
     type="l",
     col="blue"
)


