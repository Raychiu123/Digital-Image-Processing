a = imread('C:\Users\gaexp\OneDrive\Documents\Digital Image Processing\Homework\HW3\DIP2017_hw3\input3.bmp');
%�b���ƳB�A��X���T�����v�����A�ӨD�ogaussian smoothing�ݭn��mask�j�p
s1 = (mean(std(double(a((1:25),1,:)))));
s1 = double(6*(uint8(s1))+1);             %fspecial��hsize������double
g1 = fspecial('gaussian',[s1,s1]);
%��gaussain smoothing�A�Ϥ��P�򪺦a��A�ϥ�'same'��padding��k
a1 = filter2(g1,a(:,:,1),'same')/255;
a2 = filter2(g1,a(:,:,2),'same')/255;
a3 = filter2(g1,a(:,:,3),'same')/255;
a = cat(3,a1,a2,a3);

ah1 = histeq(a(:,:,1));
ah2 = histeq(a(:,:,2));
ah3 = histeq(a(:,:,3));

ah = cat(3,ah1,ah2,ah3);
imwrite(ah,'C:\Users\gaexp\OneDrive\Documents\Digital Image Processing\Homework\HW3\output3.bmp');
figure, imshow(ah)
