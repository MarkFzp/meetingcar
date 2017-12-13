
for i=3:3
    iname=sprintf('xy%d.txt',i);
    oname=sprintf('xy%d.png',i);
    b = load(iname);
    imshow(b);
    imwrite(b,oname);
end
    
