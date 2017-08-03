fid = fopen('myfile.txt');
txtdata = fread(fid); 

fclose(fid);
l=length(txtdata);

a = imread('original.png');
[a_row,a_col,a_plane]=size(a);

k=1;
for i=1:a_row
  for j=1:a_col
        if(k<=l)
         %a(i,j,1)=txtdata(k);
        
         pixel=a(i,j,1);
            pixel_bin=mod(pixel,2);
          if pixel_bin~=bin2dec((txtdata(i)))
        a(i,j,1)=pixel-1;
          end
            k=k+1;
        end
  end
end

imwrite(a,'encrypted.png');
sprintf('%d is your message length',l)