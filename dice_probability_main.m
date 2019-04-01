function [] = dice_probability_main(n, f)
    % This function plots the discrete PDF associated
    % with the rolling of n dice with f faces each.
    
    % Define the Problem
    global DATA
    DATA.n          = n;     % Number of dice
    DATA.f          = f;     % Number of faces in each die
    
    % Define the standard die
    DATA.std_die    = linspace(1, DATA.f, DATA.f);
    
    % Compute the Table of Possible Outcomes - TPO (variable DATA.table)
    compound_dice(DATA.std_die);
    
    % Plot the Probability Density Function
    plot_pdf;
    
end
