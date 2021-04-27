function length = tourlength( sequence, coordinate )
%	
%   
% data: 2021-04-26
% author: elkman, github.com/ElkmanY/
%%
tour = coordinate(:,[sequence, sequence(1)]);
length = sum(sqrt(sum(diff(tour,1,2).^2)));
end

