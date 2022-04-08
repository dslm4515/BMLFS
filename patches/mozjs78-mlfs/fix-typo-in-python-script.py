--- firefox-78.6.1.orig/third_party/python/virtualenv/virtualenv.py	2021-01-05 17:10:12.000000000 -0600
+++ firefox-78.6.1/third_party/python/virtualenv/virtualenv.py	2022-04-08 13:24:46.583136169 -0500
@@ -1804,7 +1804,7 @@
         pass
     else:
         # noinspection PyProtectedMember
-        if sysconfig._get_default_scheme() == "posix_local":
+        if sysconfig.get_default_scheme() == "posix_local":
             local_path = os.path.join(home_dir, "local")
             if not os.path.exists(local_path):
                 os.mkdir(local_path)
