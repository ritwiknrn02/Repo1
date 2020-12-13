rbvn<-function (n, m1, s1, m2, s2, rho) 
{
  X1 <- rnorm(n, m1, s1)
  X2 <- rnorm(n, m2 + (s2/s1) * rho * 
                (X1 - m1), sqrt((1 - rho^2)*s2^2))
  cbind(X1, X2)
}

bvn3 <- rbvn(15, 0, 1, 0, 1, 0)
bvn3
colnames(bvn3) <- c("bvn3_X1","bvn3_X2")
?cbind
  