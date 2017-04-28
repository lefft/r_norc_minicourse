

# we currently have the dataset `boosh`, which looks like this
# > boosh
# id   fav_color   height  score
# ------------------------------
# id01     green   70      90
# id02      blue   65      82
# id03       red   77      92
# id04    purple   68      83
# id05     green   71      90
# id06      blue   69      82
# id07       red   70      92
# id08    purple   58      83
# id09       red   76      90
# id10      blue   60      82
# id11       red   92      99
# id12    purple   81      90
# id13      blue   79      93
# id14      blue   60      88
# id15       red   55      90


# now define the variable `my_boosh` to be the subset
# of `boosh` such that it is identical except doesn't contain
# any rows for which fav_color=='green'.

# hint: the resulting object should have 13 rows

my_boosh <- filter(boosh, fav_color=="green") # type your answer here



