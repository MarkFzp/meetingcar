function zi = qfxInterp2(src, x, y)
    % if src is a matrices , number x expresses the position in the column direction and the number y expresses the position in the row direction.
    % O ---------------------> x(u,i)
    % |
    % |
    % |  点src(x, y) 在Matlab里面表示为 src(y, x)
    % |
    % |
    % |
    % y(v,j)


    % x与y应该有着相同的大小。最终形成的zi也是和x, y的size相同。
    % 如果用这个函数进行图像的变换, 则src是图像, x和y还有zi应该和src的size一样大, 关系为：
    % 点zi(u, v)是原图像中的点src( x(u, v), y(u, v) ), 但实际上这个点是通过插值得到的。x, y, src, zi都是u*v大小的矩阵, 只是src和zi存的是像素值, x和y存的是zi对应像素的插值坐标。

    % src(i, j)=a ----------------src(i+1, j)=b
    % |                      |
    % |                      dv
    % |                      |
    % |                    src(i+du,j+dv)
    % |<--------- du --------->
    % src(i, j+1)=c---------------src(i+1, j+1)=d
    %Matlab的取值顺序和上述的坐标系不同, 注意切记

    [row,col] = size(x);
    [imax,jmax] = size(src);%不能超过插值表的界限
    for v = 1:row
        for u = 1:col
            i = floor(x(v,u));
            j = floor(y(v,u));
            du = x(v,u) - i;
            dv = y(v,u) - j;

            a = getValue(src, j, i, jmax, imax);
            b = getValue(src, j, i+1, jmax, imax);
            c = getValue(src, j+1,i, jmax, imax);
            d = getValue(src, j+1,i+1, jmax, imax);

            zi(v,u) = (1-du)*(1-dv)*a + (1-dv)*du*b + (1-du)*dv*c + du*dv*d;
        end
    end

    end

    function value = getValue(mat,r,c,rMax,cMax)
        if((r>rMax)||(r<=0)||(c>cMax)||(c<=0))
            value = 0;
        else
            value = mat(r,c);
        end
    end