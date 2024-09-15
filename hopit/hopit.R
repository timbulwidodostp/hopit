# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Generalized hierarchical ordered threshold models Use hopit With (In) R Software
install.packages("hopit")
library("hopit")
hopit = read.csv("https://raw.githubusercontent.com/timbulwidodostp/hopit/main/hopit/hopit.csv",sep = ";")
# Estimation Generalized hierarchical ordered threshold models Use hopit With (In) R Software
hopit$health <- as.factor(hopit$health)
hopit$health <- droplevels(hopit$health)
hopit <- hopit(latent.formula = health ~ hypertension + high_cholesterol + heart_attack_or_stroke + poor_mobility + very_poor_grip +
depression + respiratory_problems + IADL_problems + obese + diabetes + other_diseases, thresh.formula = ~ sex + ageclass + country,
decreasing.levels = TRUE, control = list(trace = FALSE), data = hopit)
summary(hopit)
# Generalized hierarchical ordered threshold models Use hopit With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished