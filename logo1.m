dd= dir ('*.jpg');
for i=1: length(dd)
img1=imread(dd(i).name);
logo =imread('rind.jpg');
logo =imresize(logo,[250 250]);
img3=img1;
[ylogo,xlogo,~] = size(logo);
img3(1: ylogo,1:xlogo,:)=logo;
img3(1:ylogo,end-xlogo+1:end,:)=logo;
img3(end-ylogo+1:end,1:xlogo,:)=logo;
img3(end-ylogo+1: end, end-xlogo+1:end,:)=logo;
subplot(1,3,1), imshow(img1);
subplot(1,3,2), imshow(logo);
subplot(1,3,3), imshow(img3);
imwrite(img3,['baloch' dd(i).name]);
pause(1);
end
