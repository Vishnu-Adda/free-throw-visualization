myplot <- function(z, who=1:10) {
  Data <- z[who,,drop=F]
  matplot(t(Data), type="b", pch=15:18,
          col=c(1:4,6))
  legend("bottomleft", inset=0.01,
         legend=Players[who], col=c(1:4,6), 
         pch=15:18, horiz=F)
}

myplot(Freethrows)
myplot(Freethrowattempts)

#1. Free Throw Attempts / Game
myplot(Freethrowattempts/Games)

#2. Free Throw Accuracy
myplot(Freethrows/Freethrowattempts)

myplot(FieldGoals/FieldGoalAttempts)

#3. Player Style Patterns ( Excluding Free Throws )
myplot((Points - Freethrows)/FieldGoals)







