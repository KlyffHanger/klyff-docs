Then, connect to the "postgres" database as the "postgres" user:

```bash
psql -U postgres -d postgres -h 127.0.0.1 -W
```
{: .copy-code}

Create the Klyff database named "thingsboard" :
```bash
CREATE DATABASE thingsboard;
```
{: .copy-code}

Press "Ctrl+D" twice to exit PostgreSQL.
