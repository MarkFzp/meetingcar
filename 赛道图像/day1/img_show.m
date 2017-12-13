
for i=2:9
    iname=sprintf('%d_m.txt',i);
    oname=sprintf('N%d_m.png',i);
    b = load(iname);
    imshow(b);
    imwrite(b,oname);
end
    
