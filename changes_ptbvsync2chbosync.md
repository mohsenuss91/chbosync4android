The following is a list of modification made in the source of the _[PTBV SyncML Client](PTBV_SyncML_Client.md)_ to obtain _ChBoSync_:

  * Reactivated (commented in) synchronization of notes (requires that the free app _["OI Notepad"](oi_notepad.md)_ is installed on the device).

  * Users can now move the app's installation to the SDCard.

  * Requires no longer a menu button on the device.

  * Changed information displayed on about dialog.

  * _About Activity_ can now also be opened by a button from the login screen (so even if the user has no valid credentials for any SyncML server he can access the about activity with the license information).

  * Replaced implementation of method to detect if app is running in Emulator (see method _AndroidUtils::isAndroidEmulator()_ ).

  * Added dialog with confirmation question on logout.

  * When syncing of notes is not possible because the free app _["OI Notepad"](oi_notepad.md)_ is not installed on the device, then the app can show a _"fallback button"_ telling the reason to user (as replacement for the real button for syncing notes). By pressing on this _fallback button_ the user can directly open the entry for _["OI Notepad"](oi_notepad.md)_ in the app store client.

  * A button for opening the entry for _["OI Notepad"](oi_notepad.md)_ in the app store client was added to the tab _"Advanced"_ of the settings.

  * Added handling of empty notes; title of a note is now the first non-empty row; for completely empty notes a fallback text is used.

  * When sending the log file via e-mail, then no longer an e-mail address of the original developer is inserted as default recipient.

  * Several tiny improvements in the source code (e.g., improving formatting).

---



For a list of changes made to obtain _[PTBV SyncML Client](PTBV_SyncML_Client.md)_ based on the source code of
_[Funambol's SyncML Client](Funambol.md)_ you can look at the description of the corresponding
[appstore page](https://play.google.com/store/apps/details?id=de.ptbv.android.syncmlclient).
<br><br>