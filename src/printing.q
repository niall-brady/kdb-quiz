/ New line function, clear screen function and print function
nl:{@[{show (x,0)#`};x;{show (1 0)#`}]};
print:{1 x,"\n";}
cls:{print'[8#""];}