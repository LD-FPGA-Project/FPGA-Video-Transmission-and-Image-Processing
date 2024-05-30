import screenshot
import convert

if __name__ == '__main__':
	while(True):
		screenshot.capture_webcam_screenshot()
		convert.convert_to_coe()
