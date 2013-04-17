oddsRatio <- function(mat)
{
	R <- mat[1,1] * mat[2,2] / (mat[1,2] * mat[2,1])
	return(R)
}

matProb <- function(R, maf, rat)
{
	S <- sqrt((1 + (maf + rat) * (R - 1)^2) + 4*R*(1 - R)*maf*rat)
	mat[1,1] <- (1 + (maf + rat) * (R - 1) - S) / (2 * (R - 1))
	mat[1,0] <- rat - mat[1,1]
	p.2 <- 
}

