function PlotSolution(tour,model)

    tour=[tour tour(1)];
    
    x=model.x;
    y=model.y;
    
    plot(x(tour),y(tour),'-sk',...
        'LineWidth',2,...
        'MarkerSize',12,...
        'MarkerFaceColor',[1 0.7 0.8]);

end