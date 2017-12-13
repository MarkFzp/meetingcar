
for i=1:1
    iname=sprintf('%d.txt',i);
    oname=sprintf('%d.png',i);
    b = load(iname);
  %  I=reshape(b,sqrt(b),sqrt(b));
   % imshow(b);
   b=uint8(b);
   imshow(b);
    imwrite(b,oname);
end
    
