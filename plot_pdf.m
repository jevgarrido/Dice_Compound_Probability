function plot_pdf(Table, n, f)
    figure(1)
    histogram(Table, 'normalization', 'pdf')
    xlabel('Output Sum')
    ylabel('Probability')
    title([ 'Discrete Probability Density Function for n = ',...
            num2str(n), ', and f = ', num2str(f) ])
end