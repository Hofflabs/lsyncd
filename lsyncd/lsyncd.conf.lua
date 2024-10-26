-- General settings
settings {
    logfile = "/var/log/lsyncd/lsyncd.log",
    statusFile = "/var/log/lsyncd/lsyncd-status.log",
    statusInterval = 10,
    maxProcesses = 2,
    insist = true,
}

-- Sync configuration for `internal_data` directory
sync {
    default.rsync,
    source = "/sync/internal_data",
    target = "rsync://192.168.2.2:873/sync_internal_data",
    delay = 5,  -- Sync delay in seconds
    rsync = {
        archive = true,
        compress = true,
        update = true,
	delete = true,
        _extra = {"--omit-dir-times"},
    },
}

--Sync configuration for `data` directory
sync {
    default.rsync,
    source = "/sync/data",
    target = "rsync://192.168.2.2:873/sync_data",
    delay = 5,  -- Sync delay in seconds
    rsync = {
        archive = true,
        compress = true,
        update = true,
	delete = true,
        _extra = {"--omit-dir-times"},
    },
}
