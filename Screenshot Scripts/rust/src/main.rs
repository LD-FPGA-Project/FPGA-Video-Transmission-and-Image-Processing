use image::{DynamicImage, ImageBuffer, RgbaImage};
use scrap::{Capturer, Display};
use std::thread;
use std::time::Duration;

fn main() {
    // Get the primary display.
    let display = Display::primary().expect("Failed to get primary display");

    // Create a capturer for the display.
    let mut capturer = Capturer::new(display).expect("Failed to create capturer");

    let frame = loop {
        // Capture one frame.
        let frame = capturer.frame();
        match frame {
            Ok(frame) => break frame,
            Err(error) => {
                if error.kind() == std::io::ErrorKind::WouldBlock {
                    // Wait for the next frame.
                    thread::sleep(Duration::new(0, 1_000_000));
                } else {
                    panic!("Error: {}", error);
                }
            }
        }
    };

    // Calculate the dimensions of the captured frame.
    let frame_width = 1920; // Example: Width of the captured frame
    let frame_height = frame.len() as u32 / (4 * frame_width as usize); // Assuming each pixel is represented by 4 bytes (RGBA)

    // Convert the frame to an image buffer.
    let image_buffer: Vec<u8> = frame.to_vec();

    // Create a dynamic image from the image buffer.
    let imgbuf =
        ImageBuffer::<image::Rgba<u8>, _>::from_raw(frame_width as u32, frame_height, image_buffer)
            .expect("Failed to create image buffer");

    // Convert the image buffer to a dynamic image.
    let dynamic_image = DynamicImage::ImageRgba8(imgbuf);

    // Resize the image to 320 x 240 pixels.
    let resized_img = dynamic_image.resize_exact(320, 240, image::imageops::FilterType::Nearest);

    // Save the resized image as a PNG file.
    resized_img
        .save("resized_screenshot.png")
        .expect("Failed to save resized image");
}
