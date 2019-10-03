function dice_probability_main(n, f)
    % This function plots the discrete PDF associated
    % with the rolling of n dice with f faces each.
    %  n     % Number of dice
    %  f     % Number of faces on each die
    
    % Define the standard die
    StandardDie     = linspace(1, f, f);
    
    % Compute Table of Possible Outcomes
    TPO     = compound_dice(StandardDie, n, f, StandardDie);
    
    % Plot PDF
    plot_pdf(TPO, n, f);
    
end
