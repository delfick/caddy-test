Caddy test
==========

It appears line 10 in the Caddyfile makes Caddy complain that the Caddyfile isn't formatted::

    ╭─ 17:00:22    ~/Projects/Opensource/caddy-test     main  ✔ 
    ╰─ ./run.sh
    2022/04/11 07:00:22.362 INFO    using adjacent Caddyfile
    2022/04/11 07:00:22.363 WARN    input is not formatted with 'caddy fmt' {"adapter": "caddyfile", "file": "Caddyfile", "line": 19}
    2022/04/11 07:00:22.363 WARN    admin   admin endpoint disabled
    2022/04/11 07:00:22.364 INFO    tls.cache.maintenance   started background certificate maintenance      {"cache": "0x140001717a0"}
    2022/04/11 07:00:22.365 INFO    tls     cleaning storage unit   {"description": "FileStorage:/Users/stephenm/Library/Application Support/Caddy"}
    2022/04/11 07:00:22.366 INFO    autosaved config (load with --resume flag)      {"file": "/Users/stephenm/Library/Application Support/Caddy/autosave.json"}
    2022/04/11 07:00:22.366 INFO    serving initial configuration
    2022/04/11 07:00:22.370 INFO    tls     finished cleaning storage units
    ^C2022/04/11 07:00:23.398       INFO    shutting down   {"signal": "SIGINT"}
    2022/04/11 07:00:23.398 WARN    exiting; byeee!! 👋     {"signal": "SIGINT"}
    2022/04/11 07:00:23.399 INFO    tls.cache.maintenance   stopped background certificate maintenance      {"cache": "0x140001717a0"}
    2022/04/11 07:00:23.399 INFO    shutdown complete       {"signal": "SIGINT", "exit_code": 0}

    ╭─ 17:00:26    ~/Projects/Opensource/caddy-test     main  ✔ 
    ╰─ sed -i "" -e "10d" Caddyfile

    ╭─ 17:00:28    ~/Projects/Opensource/caddy-test     main !1  ✔ 
    ╰─ ./run.sh
    2022/04/11 07:00:28.167 INFO    using adjacent Caddyfile
    2022/04/11 07:00:28.170 WARN    admin   admin endpoint disabled
    2022/04/11 07:00:28.170 INFO    tls.cache.maintenance   started background certificate maintenance      {"cache": "0x14000358070"}
    2022/04/11 07:00:28.170 INFO    tls     cleaning storage unit   {"description": "FileStorage:/Users/stephenm/Library/Application Support/Caddy"}
    2022/04/11 07:00:28.170 INFO    autosaved config (load with --resume flag)      {"file": "/Users/stephenm/Library/Application Support/Caddy/autosave.json"}
    2022/04/11 07:00:28.170 INFO    serving initial configuration
    2022/04/11 07:00:28.173 INFO    tls     finished cleaning storage units
    ^C2022/04/11 07:00:29.126       INFO    shutting down   {"signal": "SIGINT"}
    2022/04/11 07:00:29.126 WARN    exiting; byeee!! 👋     {"signal": "SIGINT"}
    2022/04/11 07:00:29.127 INFO    tls.cache.maintenance   stopped background certificate maintenance      {"cache": "0x14000358070"}
    2022/04/11 07:00:29.127 INFO    shutdown complete       {"signal": "SIGINT", "exit_code": 0}
