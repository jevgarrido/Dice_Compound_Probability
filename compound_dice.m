function Table = compound_dice( TPO, n, f, StandardDie )
    %% Just one die
    % The TPO is the standard die (first input) if there is just one die.
    if n == 1
        Table = TPO;
        return
    end
    
    %% Multiple dice
    % Reshape the TPO into a column vector
    TPO = reshape(TPO, [], 1);
    d   = length(TPO);
    
    % Compound the current TPO with one more die
    Table = repmat(TPO, 1, f) + repmat(StandardDie, d, 1);
    
    % Use recursion if the TPO is still incomplete.
    % Recursion hapens once for each extra die.
    if numel(Table) < f^n
        Table = compound_dice(Table, n, f, StandardDie);
        return
    end
    
end