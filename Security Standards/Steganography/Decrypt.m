a=imread('encrypted.png');
l=input('Enter length \n');
[a_row,a_col,a_plane]=size(a);
k=1;text = '';

for i=1:a_row
  for j=1:a_col
        if(k<=l)
%     msg=a(i,j,1);    
 %    text = strcat(text,char(msg)); 
        
 
 
     k=k+1; 
       end
  end
  
end

disp(text);
fid=fopen('decrypted.txt','w');
fwrite(fid,text); 