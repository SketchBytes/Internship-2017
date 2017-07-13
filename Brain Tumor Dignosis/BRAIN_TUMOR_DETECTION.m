%BRAIN TUMOR DETECTION 

%LET'S YOU CHOSE WHICH IMAGE TO WORK ON .
 sample_image_folder = fullfile(matlabroot,'');
 [filename,user_canceled] = imgetfile
%TAKES THE INPUT IMAGE 
inp_img=imread(filename);
gray_inp=rgb2gray(inp_img);

sharp_img=imsharpen(gray_inp); % IMAGE SHARPENING

[r c]=size(sharp_img);
b=zeros(r,c);
%HIGH PASS FILTER
hp_fil=[-1 2 -1;0 0 0;1 -2 1];
b=imfilter(sharp_img,hp_fil);
c=b+sharp_img+25;
medfilt2(c);
s=imadjust(c);
%q=fspecial('unsharp');#ANOTHER WAY 
%r=imfilter(sharp_img,q);#A TYPICAL HIGH PASS FILTER
%THRESHOLDING
T=graythresh(s);
bw=im2bw(s,T+0.3);

%WATERSHED SEGMENTATION
C=~bw;
D=-bwdist(C);
D(C)=-Inf;
w_seg=watershed(D);

%MORPHOLOGICAL OPERATION
SE = strel('disk',4);
bw1 = imerode(bw,SE);


SE = strel('disk',4);
bw1 = imdilate(bw1,SE);

%DISPLAYING SEGMENTED TUMOR IN ORIGINAL IMAGE
bw_outline=bwperim(bw1);
segout=inp_img ;
segout(bw_outline) =255;

figure;
subplot(131);imshow(inp_img); title('INPUT MRI IMAGE')
subplot(132);imshow(bw1); title('DETECTED TUMOUR')
subplot(133);imshow(segout); title('THE SEGMENTED TUMOR')



