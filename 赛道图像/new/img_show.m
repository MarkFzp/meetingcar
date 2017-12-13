for i=6:6
    iname=sprintf('%d_m.txt',i);
    oname=sprintf('%d_m.png',i);
    b = load(iname);
    imshow(b);
    imwrite(b,oname);
end




