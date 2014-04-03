2000 188
2001 221
2002 268
2003 267
2004 309
2005 425
2006 429
2007 451
2008 492
2009 575
2010 614
2011 661
2012 661
2013 460

query <- c("epistasis" = "epistasis", "epistatic" = "epistatic", "GxG" = "GxG", "gene interaction" = "gene interaction", "genetic interaction" = "genetic interaction")

df <- PubMedTrend(query, 1950, 2013)


ggplot(subset(df, as.numeric(year) > 1999), aes(year, count, group=.id, fill=.id)) +
geom_area() +
opts(title=paste("Area Plot of PubMed Publications per Year\nfor", paste(names(query), collapse = ", "))) +
xlab("year") +
ylab("Publications per 1 million PubMed articles") +
scale_fill_brewer()

ggplot(subset(df, as.numeric(year) > 1999 & as.numeric(year) < 2013), aes(year, relative, group=.id, fill=.id)) +
geom_area() +
opts(title=paste("Area Plot of PubMed Publications per Year\nfor", paste(names(query), collapse = ", "))) +
xlab("year") +
ylab("Publications per 1 million PubMed articles") +
scale_fill_brewer()


ggplot(subset(df, as.numeric(year) > 1999 & as.numeric(year) < 2013), aes(year, relative, group=.id, fill=.id)) +
geom_area() +
opts(title=paste("Area Plot of PubMed Publications per Year\nfor", paste(names(query), collapse = ", "))) +
xlab("year") +
ylab("Publications per 1 million PubMed articles") +
scale_fill_brewer()

