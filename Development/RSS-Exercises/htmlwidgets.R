## === Worked example

## Africa data points
africa_data_points = data.frame(
  lat = rnorm(26, mean = 6.9, sd = 10),
  lng = rnorm(26, mean = 17.7, sd = 10),
  size = runif(26, 5, 10),
  label = letters
)

## WDI data
library(WDI)
world_data <- WDI(country=c("GB","EG","SA","EE","CA"), indicator=c("EG.GDP.PUSE.KO.PP","EN.ATM.CO2E.PP.GD.KD","NY.GDP.MKTP.KD"),
                  start=1990, end=2000)

wdi_codes <- list(
  "EG.GDP.PUSE.KO.PP" = "GDP per unit of energy use (PPP $ per kg of oil equivalent)",
  "EN.ATM.CO2E.PP.GD.KD" = "CO2 emissions (kg per 2005 PPP $ of GDP)",
  "NY.GDP.MKTP.KD" = "GDP (constant 2000 US$)"
)

## Network data

nineteen_eighty_four <- c("Exactly. By making him suffer. Obedience is not enough. Unless he is suffering, how can you be sure that he is obeying your will and not his own? Power is in inflicting pain and humiliation. Power is in tearing human minds to pieces and putting them together again in new shapes of your own choosing. Do you begin to see, then, what kind of world we are creating? It is the exact opposite of the stupid hedonistic Utopias that the old reformers imagined. A world of fear and treachery and torment, a world of trampling and being trampled upon, a world which will grow not less but more merciless as it refines itself. Progress in our world will be progress toward more pain. The old civilizations claimed that they were founded on love and justice. Ours is founded upon hatred. In our world there will be no emotions except fear, rage, triumph, and self-abasement. Everything else we shall destroy- everything. Already we are breaking down the habits of thought which have survived from before the Revolution. We have cut the links between child and parent, and between man and man, and between man and woman. No one dares trust a wife or a child or a friend any longer. But in the future there will be no wives and no friends. Children will be taken from their mothers at birth, as one takes eggs from a hen. The sex instinct will be eradicated. Procreation will be an annual formality like the renewal of a ration card. We shall abolish the orgasm. Our neurologists are at work upon it now. There will be no loyalty, except loyalty toward the Party. There will be no love, except the love of Big Brother. There will be no laughter, except the laugh of triumph over a defeated enemy. There will be no art, no literature, no science. When we are omnipotent we shall have no more need of science. There will be no distinction between beauty and ugliness. There will be no curiosity, no enjoyment of the process of life. All competing pleasures will be destroyed. But always-do not forget this, Winston-always there will be the intoxication of power, constantly increasing and constantly growing subtler. Always, at every moment, there will be the thrill of victory, the sensation of trampling on an enemy who is helpless. If you want a picture of the future, imagine a boot stamping on a human face-forever.")

collocs_1984 <- collocations(nineteen_eighty_four, punctuation = "dontspan")
