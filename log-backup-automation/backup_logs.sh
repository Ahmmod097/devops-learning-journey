#!/bin/bash

# === Configuration ===
LOG_DIR="/tmp/myapp_logs"
BACKUP_DIR="/tmp/myapp_backups"

DATE=$(date +%F)
ARCHIVE_NAME="logs_$DATE.tar.gz"

# === Create Backup Folder ===
mkdir -p "$BACKUP_DIR"

# === Compress Old Logs ===
tar -czf "$BACKUP_DIR/$ARCHIVE_NAME" -C "$LOG_DIR" .

# === DELETE OLD LOGS OLDER THAN 7 DAYS ===

find "$LOG_DIR" -type f -name "*.log" -mtime +7 -exec rm {} \;

echo "🎉 Backup complete: $ARCHIVE_NAME"

