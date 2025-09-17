#!/bin/bash
# notarize.sh - Apple Notarization script
# Requires: Apple Developer account and app-specific password
# 
# SECURITY NOTE: This script uses environment variables for credentials.
# DO NOT commit actual credentials to the repository.
# Use this script only on your local machine with proper environment setup.

DMG_FILE=$1
if [ -z "$DMG_FILE" ]; then
    echo "Usage: ./notarize.sh MenuBarColorPicker-v1.0.0.dmg"
    echo ""
    echo "Required environment setup:"
    echo "  export APPLE_ID='your-apple-id@email.com'"
    echo "  export APPLE_TEAM_ID='YOUR_TEAM_ID'"
    echo "  export APPLE_APP_PASSWORD='app-specific-password'"
    echo ""
    echo "⚠️  SECURITY WARNING: Only run this on trusted machines"
    echo "   Never commit actual credentials to git repository"
    exit 1
fi

# Security check: Ensure we're not accidentally logging credentials
set +x  # Disable command echoing to prevent credential exposure

# Check if required environment variables are set
if [ -z "$APPLE_ID" ] || [ -z "$APPLE_TEAM_ID" ] || [ -z "$APPLE_APP_PASSWORD" ]; then
    echo "❌ Missing required environment variables for notarization"
    echo ""
    echo "Please set the following environment variables:"
    echo "  export APPLE_ID='your-apple-id@email.com'"
    echo "  export APPLE_TEAM_ID='YOUR_TEAM_ID'"
    echo "  export APPLE_APP_PASSWORD='app-specific-password'"
    echo ""
    echo "📖 How to get these values:"
    echo "  • APPLE_ID: Your Apple Developer account email"
    echo "  • APPLE_TEAM_ID: Found in Apple Developer portal"
    echo "  • APPLE_APP_PASSWORD: Generate at appleid.apple.com"
    echo ""
    echo "⚠️  SECURITY: Use app-specific passwords, not your main Apple ID password"
    exit 1
fi

echo "📤 Submitting DMG for notarization..."
echo "   Using Apple ID: ${APPLE_ID}"
echo "   Using Team ID: ${APPLE_TEAM_ID}"
echo "   File: ${DMG_FILE}"

# Submit for notarization
xcrun notarytool submit "$DMG_FILE" \
    --apple-id "$APPLE_ID" \
    --team-id "$APPLE_TEAM_ID" \
    --password "$APPLE_APP_PASSWORD" \
    --wait

# Staple the ticket
if [ $? -eq 0 ]; then
    echo "📎 Stapling notarization ticket..."
    xcrun stapler staple "$DMG_FILE"
    echo "✅ Notarization complete!"
    echo "🎉 Your DMG is now notarized and ready for distribution"
else
    echo "❌ Notarization failed"
    echo "💡 Check your credentials and try again"
    exit 1
fi