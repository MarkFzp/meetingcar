function zi = qfxInterp2(src, x, y)
    % if src is a matrices , number x expresses the position in the column direction and the number y expresses the position in the row direction.
    % O ---------------------> x(u,i)
    % |
    % |
    % |  ��src(x, y) ��Matlab�����ʾΪ src(y, x)
    % |
    % |
    % |
    % y(v,j)


    % x��yӦ��������ͬ�Ĵ�С�������γɵ�ziҲ�Ǻ�x, y��size��ͬ��
    % ����������������ͼ��ı任, ��src��ͼ��, x��y����ziӦ�ú�src��sizeһ����, ��ϵΪ��
    % ��zi(u, v)��ԭͼ���еĵ�src( x(u, v), y(u, v) ), ��ʵ�����������ͨ����ֵ�õ��ġ�x, y, src, zi����u*v��С�ľ���, ֻ��src��zi���������ֵ, x��y�����zi��Ӧ���صĲ�ֵ���ꡣ

    % src(i, j)=a ----------------src(i+1, j)=b
    % |                      |
    % |                      dv
    % |                      |
    % |                    src(i+du,j+dv)
    % |<--------- du --------->
    % src(i, j+1)=c---------------src(i+1, j+1)=d
    %Matlab��ȡֵ˳�������������ϵ��ͬ, ע���м�

    [row,col] = size(x);
    [imax,jmax] = size(src);%���ܳ�����ֵ��Ľ���
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