function [] = plot_pdf()
    global DATA
    
    figure(1)
    histogram(DATA.table, 'normalization', 'pdf')
    grid on
end