source=[88,107;158,108;159,144;54,144];
object=[0,0;10,0;10,10;0,10];
TForm=cp2tform(source,object,'projective');%cp2tform����һ��TForm�ṹ��
                                           %'projective' is a type of
                                           %perspective transform:parallers
                                           %is converge in a point
round(tformfwd(TForm,[1,1]))%�����ص����ȥ�������� roundȡ�� tformfwd����任
%������tdata��