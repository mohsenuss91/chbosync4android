_Horde_ is a _web-based groupware_ written in PHP. It offers features like e-mail, calendar, notes & tasks. Further, it supports _[SyncML](SyncML.md)_ and therefore _ChBoSync_ can be used as a client for a _Horde server_ to synchronize the data of your _Horde account_ with your _Android device_.


For more information on _Horde_ you can refer to:

  * Horde's homepage: http://www.horde.org

  * Information on Horde's SynML support: http://wiki.horde.org/SyncML

  * Article in English Wikipedia: http://en.wikipedia.org/wiki/Horde_%28software%29

  * Demo account: http://demo.horde.org/login.php  (username & password are mentioned on bottom of the page)

  * Horde Syncing mailing list: http://lists.horde.org/mailman/listinfo/sync (_[Posting](http://lists.horde.org/archives/sync/Week-of-Mon-20141215/003196.html)_ on this list announcing _ChBoSync_).


_ChBoSync_ did _NOT_ alter the source code of _Horde_. We mention _Horde_ in this Wiki because _ChBoSync_ was only tested with Horde's _[SyncML](SyncML.md)_ service so far.

The developers of _ChBoSync_ are _NOT_ related to the authors of _Horde_.

## Trouble Shooting ##

When _ChBoSync_ shows the error message _"Invalid URL"_ during login, then make sure that the module for SyncML support is installed on your Horde server.