#include <iostream>
#include <opencv2/opencv.hpp>

int main() {
  // Open the default camera (0), use other camera id if you have multiple
  // cameras
  cv::VideoCapture cap(0);

  if (!cap.isOpened()) {
    std::cerr << "Error: Could not open the webcam" << std::endl;
    return -1;
  }

  cv::Mat frame;

  // Capture a frame
  cap >> frame;

  if (frame.empty()) {
    std::cerr << "Error: Captured empty frame" << std::endl;
    return -1;
  }

  // Save the captured frame to a file
  std::string filename = "screenshot.png";
  bool result = cv::imwrite(filename, frame);

  if (!result) {
    std::cerr << "Error: Could not save the image" << std::endl;
    return -1;
  }

  std::cout << "Screenshot saved to " << filename << std::endl;

  // Release the video capture object
  cap.release();

  return 0;
}
