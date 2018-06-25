
Freethrows
Freethrowattempts

plotit <- function(data, Selectplayers=1:10) {
  Data <- data[Selectplayers,,drop=F]
  matplot(t(Data), type="b", pch=15:18,
          col=c(1:4,6))
  legend("bottomleft", inset=0.01,
         legend=Players[Selectplayers], col=c(1:4,6), 
         pch=15:18, horiz=F)
}

# Free Throw Attempts per game
plotit(Freethrowattempts/Games)

# Accuracy of Free Throws ( Freethrows/Freethrowattempts )
plotit(Freethrows/Freethrowattempts)

# Player playing style ( Excludes Free Throws )
plotit((Points - Freethrows) / FieldGoals)
