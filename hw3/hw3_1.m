a = imread('C:\Users\gaexp\OneDrive\Documents\Digital Image Processing\Homework\HW3\DIP2017_hw3\input1.bmp');
%�b���ƳB�A��X���T�����v�����A�ӨD�ogaussian smoothing�ݭn��mask�j�p
s1 = (mean(std(double(a((1:10),1,:)))));
s1 = double(6*(uint8(s1))+1);             %fspecial��hsize������double
g1 = fspecial('gaussian',[s1,s1]);
%��gaussain smoothing�A�Ϥ��P�򪺦a��A�ϥ�'same'��padding��k
a1 = filter2(g1,a(:,:,1),'same')/255;
a2 = filter2(g1,a(:,:,2),'same')/255;
a3 = filter2(g1,a(:,:,3),'same')/255;
a = cat(3,a1,a2,a3);

% ah1 = histeq(a(:,:,1));
% ah2 = histeq(a(:,:,2));
% ah3 = histeq(a(:,:,3));
hsv = rgb2hsv(a);
hsv1 = hsv(:,:,1);
hsv2 = hsv(:,:,2);
hsv3 = hsv(:,:,3).^(1/2.2);
hsv4 = cat(3,hsv1,hsv2,hsv3);

ah = hsv2rgb(hsv4);

%ah = cat(3,ah1,ah2,ah3);
imwrite(ah,'C:\Users\gaexp\OneDrive\Documents\Digital Image Processing\Homework\HW3\output1.bmp');
figure, imshow(ah)
