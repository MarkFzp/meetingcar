
for i=1:50
    iname=sprintf('N%d_m.txt',i);
    oname=sprintf('N%d_m.png',i);
    b = load(iname);
    imshow(b);
    imwrite(b,oname);
end
    
