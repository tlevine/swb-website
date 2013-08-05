# Get the list of languages.
swb <- read.csv('~/Documents/secrets/SWB Volunteer Information.csv')
languages <- apply(swb[10:59], 2, function(vec) { vec[!(is.na(vec) | grepl('^$', vec))][1] })
names(languages) <- NULL
write.csv(languages, 'languages.csv', row.names = F)
