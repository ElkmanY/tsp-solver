function [n,coordinate,distance] = readfile(filename)
% A function that reads datas of *.tsp files and calculates euclidean distance between each two cities.
%   filename - filename with *.tsp, string or char
%	n - amount of cities, an integer scalar 
%	coordinate - coordinates of cities, a 2-by-n matrix
%	distance - euclidean distance between each 2 cities, an n-by-n matrix

% data: 2021-04-26
% author: elkman, github.com/ElkmanY/
%%
fid = fopen(filename,'rt');
line = fgetl(fid);
while ~strcmp(line,'EOF')
    if(strcmp(line,'NODE_COORD_SECTION'))
            citys = reshape(fscanf(fid,'%f'),3,[]);
    end
    line = fgetl(fid);
end
fclose(fid);
%%
coordinate = citys(2:3,:);
[~,n] = size( coordinate );
distance = squareform(pdist(coordinate','euclidean'));
end