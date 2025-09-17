# 🎨 Menu Bar Color Picker

A powerful and intuitive color picker utility that lives in your macOS menu bar.

![Menu Bar Color Picker](https://img.shields.io/badge/macOS-11.0+-blue.svg)
![Swift](https://img.shields.io/badge/Swift-5.0+-orange.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)

## ✨ Features

- 🎯 **Screen Color Picker**: Use the eyedropper tool to pick any color from your screen
- 🎨 **Native Color Panel**: Access macOS's built-in color picker
- 📋 **Auto-Copy**: Hex codes are automatically copied to clipboard
- 🎨 **Multiple Formats**: Support for HEX, RGB, HSL, and HSV color formats
- 📚 **Color History**: Keep track of your recently picked colors (up to 8)
- 🌈 **Color Shades**: See color variations and shades
- ⚡ **Menu Bar Integration**: Quick access from the menu bar
- 🔊 **Audio Feedback**: Haptic and sound feedback when colors are picked

## 📋 Requirements

- macOS 11.0 (Big Sur) or later
- 64-bit Intel or Apple Silicon Mac

## 🚀 Installation

### Download from Releases
1. Download the latest `MenuBarColorPicker.dmg` from [Releases](https://github.com/rbinar/menu-bar-color-picker/releases)
2. Open the DMG file
3. Drag `MenuBarColorPicker.app` to your Applications folder
4. Launch from Applications or Spotlight

### Build from Source
```bash
git clone https://github.com/rbinar/menu-bar-color-picker.git
cd menu-bar-color-picker
open MenuBarColorPicker.xcodeproj
```

## 🎯 Usage

![How to use Menu Bar Color Picker](screenshot-how-to-use.gif)

1. **Launch the app** - The eyedropper icon will appear in your menu bar
2. **Click the menu bar icon** to open the color picker
3. **Pick colors**:
   - Click "Pick" button and use eyedropper on screen
   - Click the color circle to open native color picker
4. **View formats** - See HEX, RGB, HSL, and HSV representations
5. **Color history** - Access previously picked colors
6. **Copy formats** - Click copy buttons or colors auto-copy as HEX

## 🛠️ Development

This app is built with:
- **SwiftUI** for the user interface
- **AppKit** for macOS integration
- **NSColorSampler** for screen color picking
- **NSColorPanel** for native color selection

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## ⭐ Support

If you find this app useful, please consider giving it a star on GitHub!