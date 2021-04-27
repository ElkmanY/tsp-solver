%%  read *.tsp file
[n,coordinate,distance] = readfile('china32.tsp');
%%  draw tour trajectory
sequence = [1	10	15	14	16	19	22	20	18	17	21	23	24	26	27	25	28	31	32	30	29	7	12	13	11	8	6	9	4	5	3	2];
drawtour( sequence, coordinate );
%%  tour length
length = tourlength( sequence, coordinate );
