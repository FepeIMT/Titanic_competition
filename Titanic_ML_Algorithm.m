#Scrip principal del proyecto

%Data = fopen('train.csv')

filename = 'train.csv';

Data = fopen(filename);
if Data
    file_contents = fscanf(Data, '%c',  inf);
    fclose(Data);
else
    file_contents = '';
    fprintf('Unable to open %s\n', filename);
end

delimiterIn = ',';
headerlinesIn = 1;

Dataframe = importdata('train.csv', delimiterIn, headerlinesIn)



Traindata = []; 
for i = 1:size(Dataframe, 1)
  %Traindata = [Traindata; strsplit(Dataframe(i, 1))]
endfor

Traindata


%[X, y] = ProcessData(file_contents);

