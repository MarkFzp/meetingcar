
for i=1:22
    iname=sprintf('%d.txt',i);
    oname=sprintf('%d.png',i);
    b = load(iname);
    imshow(b);
    imwrite(b,oname);
end
    
