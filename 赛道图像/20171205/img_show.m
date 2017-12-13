for i=2:85
    iname=sprintf('%d.txt',i);
    oname=sprintf('%d.png',i);
    b = load(iname);
    imshow(b);
    imwrite(b,oname);
end