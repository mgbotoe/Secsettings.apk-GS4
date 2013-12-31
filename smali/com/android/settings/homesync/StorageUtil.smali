.class Lcom/android/settings/homesync/StorageUtil;
.super Ljava/lang/Object;
.source "StorageUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doesFileExist(Lcom/sec/android/spc/service/ISpcBackupService;Ljava/io/File;)Z
    .locals 4
    .parameter "mService"
    .parameter "f"

    .prologue
    .line 98
    const/4 v1, 0x0

    .line 100
    .local v1, ret:Z
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/secdata"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/sec/android/spc/service/ISpcBackupService;->doesFileExist(Ljava/lang/String;)Z

    move-result v1

    .line 108
    :goto_0
    return v1

    .line 103
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static getBackupVolume(Landroid/content/Context;)Landroid/os/storage/StorageVolume;
    .locals 11
    .parameter "context"

    .prologue
    .line 13
    const/4 v1, -0x1

    .line 14
    .local v1, id:I
    const-string v5, ""

    .line 15
    .local v5, storagePath:Ljava/lang/String;
    const/4 v9, 0x0

    .line 17
    .local v9, usbStoragePath:Ljava/lang/String;
    const-string v10, "storage"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 20
    .local v3, mStorageManager:Landroid/os/storage/StorageManager;
    if-eqz v3, :cond_3

    .line 21
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 22
    .local v7, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v2, v7

    .line 23
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 24
    aget-object v6, v7, v0

    .line 25
    .local v6, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v8

    .line 26
    .local v8, subsystem:Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 27
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 28
    invoke-virtual {v3, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 29
    .local v4, state:Ljava/lang/String;
    const-string v10, "usb"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 30
    const-string v10, "mounted"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 31
    if-eqz v9, :cond_0

    invoke-virtual {v9, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_1

    .line 33
    :cond_0
    move v1, v0

    .line 23
    .end local v4           #state:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    .end local v6           #storageVolume:Landroid/os/storage/StorageVolume;
    .end local v8           #subsystem:Ljava/lang/String;
    :cond_2
    if-ltz v1, :cond_3

    .line 40
    aget-object v10, v7, v1

    .line 42
    .end local v0           #i:I
    .end local v2           #length:I
    .end local v7           #storageVolumes:[Landroid/os/storage/StorageVolume;
    :goto_1
    return-object v10

    :cond_3
    const/4 v10, 0x0

    goto :goto_1
.end method

.method static isNewerFile(Lcom/sec/android/spc/service/ISpcBackupService;Ljava/io/File;Ljava/io/File;)Z
    .locals 8
    .parameter "mService"
    .parameter "f1"
    .parameter "f2"

    .prologue
    const/4 v5, 0x1

    .line 46
    const-wide/16 v1, 0x0

    .line 47
    .local v1, lastModified1:J
    const-wide/16 v3, 0x0

    .line 50
    .local v3, lastModified2:J
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/secdata"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Lcom/sec/android/spc/service/ISpcBackupService;->getModifiedTime(Ljava/lang/String;)J

    move-result-wide v1

    .line 55
    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/secdata"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 56
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Lcom/sec/android/spc/service/ISpcBackupService;->getModifiedTime(Ljava/lang/String;)J

    move-result-wide v3

    .line 64
    :goto_1
    cmp-long v6, v1, v3

    if-lez v6, :cond_2

    :goto_2
    return v5

    .line 53
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    goto :goto_1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 64
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const/4 v5, 0x0

    goto :goto_2
.end method

.method static isSameFile(Lcom/sec/android/spc/service/ISpcBackupService;Ljava/io/File;Ljava/io/File;)Z
    .locals 12
    .parameter "mService"
    .parameter "f1"
    .parameter "f2"

    .prologue
    const/4 v9, 0x0

    .line 68
    const-wide/16 v5, 0x0

    .line 69
    .local v5, lastModified1:J
    const-wide/16 v7, 0x0

    .line 70
    .local v7, lastModified2:J
    const-wide/16 v1, 0x0

    .line 71
    .local v1, fileSize1:J
    const-wide/16 v3, 0x0

    .line 74
    .local v3, fileSize2:J
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const-string v11, "/secdata"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 75
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p0, v10}, Lcom/sec/android/spc/service/ISpcBackupService;->getModifiedTime(Ljava/lang/String;)J

    move-result-wide v5

    .line 76
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p0, v10}, Lcom/sec/android/spc/service/ISpcBackupService;->getFileSize(Ljava/lang/String;)J

    move-result-wide v1

    .line 82
    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const-string v11, "/secdata"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 83
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p0, v10}, Lcom/sec/android/spc/service/ISpcBackupService;->getModifiedTime(Ljava/lang/String;)J

    move-result-wide v7

    .line 84
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p0, v10}, Lcom/sec/android/spc/service/ISpcBackupService;->getFileSize(Ljava/lang/String;)J

    move-result-wide v3

    .line 94
    :goto_1
    cmp-long v10, v5, v7

    if-nez v10, :cond_0

    cmp-long v10, v1, v3

    if-nez v10, :cond_0

    const/4 v9, 0x1

    :cond_0
    :goto_2
    return v9

    .line 78
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    .line 79
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    .line 87
    invoke-virtual {p2}, Ljava/io/File;->length()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    goto :goto_1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method
