[originals]=textread('images.txt','%s','delimiter','\n');
[maskeds]=textread('m_images.txt','%s','delimiter','\n');

labels=zeros(80,1);
j=1;
for i=1:160

    if mod(i,2)~=0
    original=char(originals(i));
%     disp(original);
    
    [image]=strsplit(original,' ');
    image_file=char(image(1));
    labels(j)=char(image(2));
   
    disp(labels(j));
     j=j+1;
    disp(image_file);
    
    masked=char(maskeds(i));
%     disp(maskeds);


%     masked_image=imread(masked);
%     original_image=imread(image_file);
    
    
    end
end
 