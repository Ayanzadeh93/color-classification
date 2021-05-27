[paths]=textread('paths.txt','%s','delimiter','\n');

x='';
sayac=0;


for i=1:1000
try
    path=char(paths(i));
    image=imread(path);
    
     sayac=sayac+1;
    disp(sayac);
    
   if size(image,1)~=227 || size(image,3)~=3
       disp(path);
    K = imresize(image,[227 227]);
    a=K*255;
     b=cat(3,a,a,a);
    imwrite(b,path);
   end
   
    
catch
    x=strcat(x,'+','not image:',path);
  
end
   
end
 disp(x);

