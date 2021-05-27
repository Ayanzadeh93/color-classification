 fid = fopen('train1.txt');
x='';
sayac=0;

tline = fgets(fid);

while ischar(tline)
 

try


  tline = fgets(fid);
  line=tline(1,1:(size(tline,2)-1));
  %imshow((line));
    image=imread(line);
     sayac=sayac+1;
    disp(sayac);
    
   if size(image,1)~=256 || size(image,3)~=3
       disp(tline);
    
     b=cat(3,K,K,K);
    imwrite(b,line);
   end
   
    
catch
    x=strcat(x,'+','not image:',line);
  
end
   
end
 disp(x);

fclose(fid);
