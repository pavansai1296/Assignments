
name=input('File name: ','s');
file=fopen(name,'rb');
data=fread(file);
fclose(file);
l=length(data);
frequency=hist(data,256);
plot(frequency);
probability=frequency./l;
plot(probability);
prob=probability(probability>0);
t=prob.*log2(prob);
entropy=-1*sum(t);
disp(entropy);