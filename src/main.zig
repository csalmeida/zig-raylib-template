const std = @import("std");
const rl = @import("raylib");

pub fn main() !void {
    // Print a message to the console
    std.debug.print("Zig & Raylib Template Starting...\n", .{});

    // Initialize the window with a title
    rl.initWindow(1024, 768, "Zig & Raylib");
    defer rl.closeWindow(); // when fn returns, closeWindow is called

    // Set target FPS to avoid excessive updates
    rl.setTargetFPS(60);

    // Main loop
    while (!rl.windowShouldClose()) {
        rl.beginDrawing();
        defer rl.endDrawing(); // when fn returns, endDrawing is called

        // Clear the screen with black color
        rl.clearBackground(.black);

        // Draw text in the center of the screen on top of the black background
        const text_size = 16 * 2;
        rl.drawText("Zig & Raylib", @divExact(rl.getScreenWidth(), 2) - 100, @divExact(rl.getScreenHeight(), 2) - 25, text_size, .white);

        // Show FPS for debugging
        rl.drawFPS(rl.getScreenWidth() - 90, rl.getScreenHeight() - 30);
    }
}
