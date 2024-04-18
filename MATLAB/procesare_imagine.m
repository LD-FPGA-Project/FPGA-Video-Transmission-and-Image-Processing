img = imread('in.jpg');
img = imresize(img, [240, 320]); % Resize image if necessary

img = uint8(double(img) * 15 / 255); % Scale from 0-255 to 0-15

fileID = fopen('image_data.coe', 'w');
fprintf(fileID, 'memory_initialization_radix=16;\nmemory_initialization_vector=\n');

for row = 1:size(img, 1)
    for col = 1:size(img, 2)
        r = img(row, col, 1);
        g = img(row, col, 2);
        b = img(row, col, 3);
        fprintf(fileID, '%01X%01X%01X', r, g, b);
        if row == size(img, 1) && col == size(img, 2)
            fprintf(fileID, ';');
        else
            fprintf(fileID, ',\n');
        end
    end
end
fclose(fileID);