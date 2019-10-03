function plot_pdf(Table)
    figure(1)
    histogram(Table, 'normalization', 'pdf')
    xlabel('Output Sum')
    ylabel('Probability')
    grid on
end