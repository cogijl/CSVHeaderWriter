header_row = ['insert string here and if you want columns, seperate them by commas, and do not forget the new line at the end \n'];


filename = 'test.csv';

fid = fopen(filename, 'w');
fprintf(fid, header_row);
fclose(fid);

% then have it add the data, this is just random test data, but you can use
% extremly large datasets, I've done this successfully with data up to 2 gb
% in a csv file. 
data = rand(50,3);

dlmwrite(filename, data, '-append', 'precision', '%.6f', 'delimiter', ',');