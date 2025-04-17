Project to test JS/PHP queries in real life tasks.
The "Submit Your Vote" button becomes active only after you select one of the options
and enter a unique number of more than 5 digits (not letters).

To make things rolling you should setup PostgreSQL database with the name "voting".
Setup local Apache webserver and drop to folder "htdocs" folder "app" and file "vote.php".
Also you should not forget to setup PHP environment in your phph.ini.

```
extension=pdo_pgsql
extension=pgsql
```

Deploy folder contains database export and php backend to store user ID, user choice and timestamp.

```
_deploy
```



