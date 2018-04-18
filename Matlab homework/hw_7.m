for e=1 %I set machine epsilon equal to the variable e.
    while e+1>1
        e=e/2   %The while loop will keep running and changing the variable
                %e until the cindition that e + 1 will be greater than 1
                %is no longer true.
    end
    e=e*2
end
    %The code will display the machine epsilon in the command window and
    %workspace.