function drawtour( sequence, coordinate )
% Function that draws the tour trajectory of the given *sequence* accordining to the given city *coordinates*.
%   sequence - indexes of cities 
%   coordinate - latitude and longitude coordinates of cities

%   date: 2021-04-26
%   author: elkman, github.com/ElkmanY/
%%
tour=coordinate(:,[sequence, sequence(1)]);
figure;
hold on
plot(tour(1,:),tour(2,:),'o-b','LineWidth',1.5);
for i=1:size(coordinate,2)
    text(coordinate(1,i)+0.5,coordinate(2,i)+0.5,num2str(i),'color','r');
end
hold off
grid on
axis equal
box on
set(gca,'FontName','Aril','FontSize',10);
title('tour');
xlabel('latitude','FontName','Aril','FontSize',10);
ylabel('longitude','FontName','Aril','FontSize',10);

end