import cv2

def capture_webcam_screenshot(file_name='webcam_screenshot.jpg'):
    # Access the webcam
    cap = cv2.VideoCapture(0)

    # Check if the webcam is opened successfully
    if not cap.isOpened():
        print("Error: Unable to access the webcam")
        return

    # Capture a frame
    ret, frame = cap.read()

    # Check if the frame is captured successfully
    if not ret:
        print("Error: Unable to capture frame")
        cap.release()
        return

    # Save the frame as an image
    cv2.imwrite(file_name, frame)

    # Release the webcam
    cap.release()

    print(f"Screenshot saved as {file_name}")

# Call the function to capture and save a screenshot
# capture_webcam_screenshot()
