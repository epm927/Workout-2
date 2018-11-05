##################################
## Ethan Marzban                ##
## Workout 2: Test Master File  ##
## Date: 11/5/18                ##
##################################

library('testthat')
functions <- dir('../code/functions')
lapply(paste0('../code/functions/', functions), source)
sink(file = 'test-output.txt')
test_dir('../code/tests')
sink()