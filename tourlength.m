function length = tourlength( sequence, coordinate )
%	
%   Detailed explanation goes here

%%
tour = coordinate(:,[sequence, sequence(1)]);
length = sum(sqrt(sum(diff(tour,1,2).^2)));
end

