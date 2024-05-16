use screenshot::{get_screenshot, Image};
use std::fs::File;
use std::io::Write;

fn main() {
    // Capture the first screen
    let screenshot = get_screenshot(0).expect("Failed to capture screenshot");

    // Save the screenshot as a PNG file
    save_screenshot_as_png(&screenshot, "screenshot.png").expect("Failed to save screenshot");
}

fn save_screenshot_as_png(image: &Image, path: &str) -> Result<(), Box<dyn std::error::Error>> {
    let buffer = image.to_png()?;
    let mut file = File::create(path)?;
    file.write_all(&buffer)?;
    Ok(())
}
