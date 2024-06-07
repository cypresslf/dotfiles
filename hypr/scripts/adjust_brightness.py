#!/usr/bin/env python3
import subprocess
import sys

def set_brightness(new_brightness):
    cmd = ["brightnessctl", "set", str(new_brightness)]
    subprocess.run(cmd)

def get_brightness_info():
    cmd = ["brightnessctl", "g"]
    current_brightness = int(subprocess.check_output(cmd).strip().decode())
    
    cmd = ["brightnessctl", "m"]
    max_brightness = int(subprocess.check_output(cmd).strip().decode())
    
    return current_brightness, max_brightness

def adjust_brightness(direction):
    current_brightness, max_brightness = get_brightness_info()
    gamma = 2.2

    # Compute the relative step for brightness adjustment
    relative_step = current_brightness / max_brightness
    relative_step **= (1/gamma)
    relative_step *= 0.05  # A step of 5%

    # Convert relative step back to brightness space
    step = int(max_brightness * relative_step)

    # Ensure step size is never less than 1 and brightness never drops below 1
    step = max(step, 1)

    if direction == "up":
        new_brightness = current_brightness + step
        # Make sure we don't exceed max brightness
        new_brightness = min(new_brightness, max_brightness)
    else:
        new_brightness = current_brightness - step
        # Make sure we don't drop below 1
        new_brightness = max(new_brightness, 1)
        
    set_brightness(new_brightness)

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: script.py [up|down]")
        sys.exit(1)

    direction = sys.argv[1]
    if direction not in ["up", "down"]:
        print("Invalid direction. Use 'up' or 'down'.")
        sys.exit(1)

    adjust_brightness(direction)