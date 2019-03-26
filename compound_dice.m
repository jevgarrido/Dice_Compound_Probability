function [] = compound_dice(TPO)
    global DATA
    
    %% Just one die
    % The TPO is the standard die (first input) if there is just one die.
    if DATA.n == 1
        DATA.table = TPO;
        return
    end
    
    %% More than one die
    % Reshape the TPO into a column vector
    TPO = reshape(TPO, [], 1);      d = length(TPO);
    
    % Compound the current TPO with one more die (variable DATA.std_die)
    DATA.table = repmat(TPO, 1, DATA.f) + repmat(DATA.std_die, d, 1);
    
    % Use recursion if the TPO (now variable DATA.table) is still incomplete.
    % There is no recursion if there are 2 dice or less. Then, recursion
    % hapens once for each extra dice.
    if numel(DATA.table) < DATA.f^DATA.n
        compound_dice(DATA.table);
        return
    end
end