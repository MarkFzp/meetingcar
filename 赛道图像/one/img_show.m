for i=5:5
    iname=sprintf('N%d_m.txt',i);
    oname=sprintf('N_m%d.png',i);
    b = load(iname);
    imshow(b);
    imwrite(b,oname);
end




