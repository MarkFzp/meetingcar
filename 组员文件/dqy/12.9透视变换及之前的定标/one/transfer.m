source=[92,106;230,104;197,68;130,67];
object=[0,10;20,10;20,40;0,40];
TForm=cp2tform(source,object,'projective');%cp2tform����һ��TForm�ṹ��
                                           %'projective' is a type of
                                           %perspective transform:parallers
                                           %is converge in a point
%round(tformfwd(TForm,[42,27]))%�����ص����ȥ�������� roundȡ�� tformfwd����任
%������tdata��