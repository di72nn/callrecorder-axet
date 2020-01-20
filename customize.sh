install_apk() {
  if [ "$BOOTMODE" != 'true' ]; then
    ui_print '- Skipping APK installation since not running via Magisk Manager'
    return 0
  fi

  ui_print '- Installing CallRecorder APK'
  pm install -r "$MODPATH/system/priv-app/com.github.axet.callrecorder/com.github.axet.callrecorder_219.apk" || true
}


if [ "$API" -lt '19' ]; then
  abort 'This module is for Android 4.4+ only'
fi

install_apk
