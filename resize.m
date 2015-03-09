%% Show an image
im = reshape(data(1,:), 64, 64 );
im = (im-min(min(im)))/(max(max(im))-min(min(im)));
imshow(im);

%% resize the frgc dataset
outdata = [];
s = 64*64;
for i=1:size(data,1)
    im = reshape(data(i,:), 128, 128 );
    J  = imresize(im, 0.5,'bilinear' );
    outdata(i,:) = reshape(J', s, 1); 
end