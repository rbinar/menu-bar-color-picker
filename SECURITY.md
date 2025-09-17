# 🔒 Security Guidelines

## Code Signing & Notarization Security

This repository contains scripts for building and distributing the macOS app. Please follow these security guidelines:

### ⚠️ Important Security Notes

1. **Never commit credentials** to the repository
2. **Use app-specific passwords** instead of your main Apple ID password
3. **Run notarization only on trusted machines**
4. **Keep your Apple Developer credentials secure**

### 🔐 Environment Variables (LOCAL ONLY)

For notarization, set these environment variables on your local machine:

```bash
# DO NOT commit these values to git!
export APPLE_ID="your-apple-id@email.com"
export APPLE_TEAM_ID="YOUR_TEAM_ID" 
export APPLE_APP_PASSWORD="app-specific-password"
```

### 📖 How to Get Required Values

#### Apple ID
- Your Apple Developer account email address

#### Team ID
1. Go to [Apple Developer Portal](https://developer.apple.com)
2. Sign in with your Apple ID
3. Go to "Membership" section
4. Find your "Team ID"

#### App-Specific Password
1. Go to [appleid.apple.com](https://appleid.apple.com)
2. Sign in with your Apple ID
3. Go to "Security" section
4. Under "App-Specific Passwords", click "Generate Password"
5. Enter a label like "Xcode Notarization"
6. Use the generated password (not your main Apple ID password)

### 🛡️ Best Practices

- **Use separate Apple ID** for development if possible
- **Enable two-factor authentication** on your Apple ID
- **Regularly rotate app-specific passwords**
- **Never share credentials** with others
- **Use environment variables** instead of hardcoding values
- **Clear environment variables** after use

### 🚨 If Credentials Are Compromised

1. **Immediately revoke** the app-specific password at appleid.apple.com
2. **Generate new** app-specific password
3. **Review your Apple Developer account** for unauthorized activity
4. **Contact Apple Developer Support** if needed

### 📝 Safe Usage Example

```bash
# Set environment variables (local terminal only)
export APPLE_ID="developer@yourcompany.com"
export APPLE_TEAM_ID="ABC123DEF4"
export APPLE_APP_PASSWORD="xxxx-xxxx-xxxx-xxxx"

# Run notarization
./notarize.sh MenuBarColorPicker-v1.0.0.dmg

# Clear variables after use
unset APPLE_ID APPLE_TEAM_ID APPLE_APP_PASSWORD
```

Remember: Security is everyone's responsibility! 🔐