[m,n,o]=size(img); % the size of the image that is read in
normalize=k*(1/sum(abs(k(:)))); % normalizes the kernel matrix
for i=1:o % applies the kernel color wise
    for j=2:m-1 % applies the kernel row wise
        for k=2:n-1 % applies the kernel column wise
            % creates a new image by applying a kernel and normalizing it
            newImg(j,k,i)=sum(sum(img(j-1:j+1,k-1:k+1,i).*normalize));
        end
    end
end
