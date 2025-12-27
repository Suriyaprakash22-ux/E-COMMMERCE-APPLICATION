# How to Run Your Flutter E-Commerce App

## 📍 Where to Run Commands

You need to open a **Terminal/Command Prompt** in your project folder. Here are your options:

### Option 1: Using VS Code (Recommended)
1. Open VS Code
2. Open your project folder: `C:\Calculator\E-Commerce`
3. Press `Ctrl + ~` (or go to View → Terminal)
4. The terminal will open in your project directory automatically

### Option 2: Using Windows Command Prompt
1. Press `Windows Key + R`
2. Type `cmd` and press Enter
3. Navigate to your project:
   ```cmd
   cd C:\Calculator\E-Commerce
   ```

### Option 3: Using Windows PowerShell
1. Press `Windows Key + X` and select "Windows PowerShell"
2. Navigate to your project:
   ```powershell
   cd C:\Calculator\E-Commerce
   ```

### Option 4: Using File Explorer
1. Open File Explorer
2. Navigate to `C:\Calculator\E-Commerce`
3. Click in the address bar, type `cmd` and press Enter
4. Command Prompt opens in that folder

---

## 🚀 Step-by-Step Instructions

### Step 1: Check Flutter Installation
First, verify Flutter is installed and working:

```bash
flutter doctor
```

This will show if Flutter is properly set up. If you see errors, you may need to install Flutter first from: https://flutter.dev/docs/get-started/install

### Step 2: Install Dependencies
Install all required packages:

```bash
flutter pub get
```

**Expected output:** Should download packages and show "Got dependencies!"

### Step 3: Check Available Devices
See what devices/emulators you can run on:

```bash
flutter devices
```

**You'll see something like:**
- Chrome (web browser)
- Windows (desktop)
- Android emulator (if you have one set up)
- Connected physical device (if connected)

### Step 4: Run the App

#### Option A: Run on Web Browser (Easiest - No setup needed)
```bash
flutter run -d chrome
```

#### Option B: Run on Windows Desktop
```bash
flutter run -d windows
```

#### Option C: Run on Android Emulator
```bash
flutter run
```
(Will automatically detect and use Android emulator if available)

#### Option D: Run on Connected Phone
1. Enable Developer Options on your Android phone
2. Enable USB Debugging
3. Connect phone via USB
4. Run: `flutter run`

---

## 📱 Running Options Explained

### 🌐 Web Browser (Chrome)
- **Pros:** Fastest to start, no emulator needed
- **Command:** `flutter run -d chrome`
- **Best for:** Quick testing and development

### 💻 Windows Desktop
- **Pros:** Native Windows app
- **Command:** `flutter run -d windows`
- **Note:** May need to enable Windows desktop support first

### 📱 Android Emulator
- **Pros:** Most realistic mobile experience
- **Setup:** Need Android Studio and emulator configured
- **Command:** `flutter run`

### 📲 Physical Device
- **Pros:** Real device testing
- **Setup:** Enable USB debugging, connect device
- **Command:** `flutter run`

---

## 🎯 Quick Start (Recommended for First Time)

1. **Open Terminal in VS Code** (Press `Ctrl + ~`)
2. **Install dependencies:**
   ```bash
   flutter pub get
   ```
3. **Run on Chrome (easiest):**
   ```bash
   flutter run -d chrome
   ```

The app will open in your Chrome browser automatically!

---

## 🔧 Troubleshooting

### Error: "flutter: command not found"
- Flutter is not installed or not in PATH
- Install Flutter: https://flutter.dev/docs/get-started/install
- Add Flutter to your system PATH

### Error: "No devices found"
- For web: Make sure Chrome is installed
- For Android: Set up Android Studio and create an emulator
- For Windows: Enable Windows desktop support in Flutter

### Error: "Pub get failed"
- Check your internet connection
- Run: `flutter clean` then `flutter pub get`

### App won't start
- Try: `flutter clean`
- Then: `flutter pub get`
- Finally: `flutter run -d chrome`

---

## 📝 What to Expect

When you run `flutter run -d chrome`:
1. Flutter will compile the app (takes 30-60 seconds first time)
2. Chrome browser will open automatically
3. You'll see the ShopHub app homepage
4. The terminal will show logs and hot reload is enabled

### Hot Reload
- Press `r` in terminal to hot reload (quick refresh)
- Press `R` to hot restart (full restart)
- Press `q` to quit

---

## ✅ Success Indicators

You'll know it's working when:
- ✅ Terminal shows "Flutter run key commands"
- ✅ Browser/emulator opens with your app
- ✅ You see the ShopHub home screen with products
- ✅ No red error messages in terminal

---

## 🎮 Testing the App

Once running, try:
1. **Browse products** on the home screen
2. **Click a product** to see details
3. **Add to cart** - tap the cart icon
4. **Search** - use the search tab
5. **Login** - go to Profile tab, use any email/password (min 6 chars)

---

## 💡 Pro Tips

- **Keep terminal open** - it shows logs and errors
- **Use hot reload** - Press `r` after code changes
- **Check Flutter doctor** - Run `flutter doctor` if issues occur
- **Web is fastest** - Use `-d chrome` for quick testing

Happy coding! 🚀

