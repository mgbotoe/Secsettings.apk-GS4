.class public Lcom/android/settings/nearby/MountReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MountReceiver.java"


# static fields
.field private static final DOWNLOAD_TO_PHONE:Ljava/lang/String; = "0"

.field private static final KEY_ALLSHARE_ACCEPTED_DEVICE:Ljava/lang/String; = "allshare_accept_device"

.field private static final KEY_ALLSHARE_DEVICE_NAME:Ljava/lang/String; = "allshare_device_name"

.field private static final KEY_ALLSHARE_DOWNLOAD_FROME:Ljava/lang/String; = "allshare_download_from"

.field private static final KEY_ALLSHARE_DOWNLOAD_TO:Ljava/lang/String; = "allshare_download_to"

.field private static final KEY_ALLSHARE_ONOFF:Ljava/lang/String; = "allshare_onoff"

.field private static final KEY_ALLSHARE_REJECTED_DEVICE:Ljava/lang/String; = "allshare_reject_device"

.field private static final KEY_ALLSHARE_SHARED_CONTENTS:Ljava/lang/String; = "allshare_shared_contents"

.field private static final KEY_ALLSHARE_WELCOME_POPUP:Ljava/lang/String; = "allshare_welcome_popup"

.field private static final PATH_DOWNLOAD_FOLDER_NAME:Ljava/lang/String; = "/Nearby"

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "pref_allshare"

.field private static final SHARE_VALUE_MUSIC:Ljava/lang/String; = "2"

.field private static final SHARE_VALUE_PHOTOS:Ljava/lang/String; = "1"

.field private static final SHARE_VALUE_VIDEOS:Ljava/lang/String; = "0"

.field private static final UPLOAD_ALWAYS_ASK:Ljava/lang/String; = "1"


# instance fields
.field private final HANDLER_MSG_DOWNLOAD_TO_INTERNAL:I

.field private final HANDLER_MSG_INIT_PREF:I

.field private final HANDLER_MSG_IS_SHUTDOWN_FALSE:I

.field private final HANDLER_MSG_IS_SHUTDOWN_TRUE:I

.field private final HANDLER_MSG_ONOFF_FALSE:I

.field private final HANDLER_MSG_ONOFF_TRUE:I

.field private final KEY_ALLSHARE_IS_SHUTDOWN:Ljava/lang/String;

.field private final SETTINGS_SYSTEM_DOWNLOAD_PATH:Ljava/lang/String;

.field private final TAGClass:Ljava/lang/String;

.field mHandlerThread:Landroid/os/HandlerThread;

.field private mPrefHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 28
    const-string v0, "MountReceiver"

    iput-object v0, p0, Lcom/android/settings/nearby/MountReceiver;->TAGClass:Ljava/lang/String;

    .line 55
    const-string v0, "isShutdowned"

    iput-object v0, p0, Lcom/android/settings/nearby/MountReceiver;->KEY_ALLSHARE_IS_SHUTDOWN:Ljava/lang/String;

    .line 57
    const-string v0, "NearbyDownloadTo"

    iput-object v0, p0, Lcom/android/settings/nearby/MountReceiver;->SETTINGS_SYSTEM_DOWNLOAD_PATH:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/android/settings/nearby/MountReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 70
    iput-object v1, p0, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    .line 72
    const/16 v0, 0x1b59

    iput v0, p0, Lcom/android/settings/nearby/MountReceiver;->HANDLER_MSG_ONOFF_TRUE:I

    .line 74
    const/16 v0, 0x1b5a

    iput v0, p0, Lcom/android/settings/nearby/MountReceiver;->HANDLER_MSG_ONOFF_FALSE:I

    .line 76
    const/16 v0, 0x1b5b

    iput v0, p0, Lcom/android/settings/nearby/MountReceiver;->HANDLER_MSG_DOWNLOAD_TO_INTERNAL:I

    .line 78
    const/16 v0, 0x1b5d

    iput v0, p0, Lcom/android/settings/nearby/MountReceiver;->HANDLER_MSG_IS_SHUTDOWN_TRUE:I

    .line 80
    const/16 v0, 0x1b5e

    iput v0, p0, Lcom/android/settings/nearby/MountReceiver;->HANDLER_MSG_IS_SHUTDOWN_FALSE:I

    .line 82
    const/16 v0, 0x1b62

    iput v0, p0, Lcom/android/settings/nearby/MountReceiver;->HANDLER_MSG_INIT_PREF:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 26
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 87
    move-object/from16 v13, p1

    .line 89
    .local v13, mContext:Landroid/content/Context;
    new-instance v22, Landroid/os/HandlerThread;

    const-string v23, "Preference Handler Thread"

    invoke-direct/range {v22 .. v23}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/nearby/MountReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/MountReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/HandlerThread;->start()V

    .line 91
    new-instance v22, Lcom/android/settings/nearby/MountReceiver$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/MountReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v13}, Lcom/android/settings/nearby/MountReceiver$1;-><init>(Lcom/android/settings/nearby/MountReceiver;Landroid/os/Looper;Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, action:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const-string v22, "MountReceiver"

    const-string v23, "onReceive"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ACTION: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcom/android/settings/nearby/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v22, "android.intent.action.MEDIA_UNMOUNTED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    const-string v22, "android.intent.action.MEDIA_BAD_REMOVAL"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 149
    :cond_2
    const-string v22, "pref_allshare"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 151
    .local v16, preference:Landroid/content/SharedPreferences;
    const-string v22, "allshare_download_to"

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 153
    .local v17, preferenceValue:Ljava/lang/String;
    const-string v22, "isShutdowned"

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    if-nez v22, :cond_0

    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "NearbyDownloadTo"

    invoke-static/range {v22 .. v23}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 159
    .local v20, systemPath:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/Nearby"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 162
    .local v11, internalPath:Ljava/lang/String;
    if-eqz v11, :cond_5

    const-string v22, "0"

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 165
    :cond_3
    const-string v22, "MountReceiver"

    const-string v23, "onReceive"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "change path: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x1b5b

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "NearbyDownloadTo"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 273
    .end local v11           #internalPath:Ljava/lang/String;
    .end local v16           #preference:Landroid/content/SharedPreferences;
    .end local v17           #preferenceValue:Ljava/lang/String;
    .end local v20           #systemPath:Ljava/lang/String;
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/MountReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/MountReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 275
    :try_start_0
    monitor-enter v13
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    const-wide/16 v22, 0x64

    :try_start_1
    move-wide/from16 v0, v22

    invoke-virtual {v13, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 277
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/MountReceiver;->mHandlerThread:Landroid/os/HandlerThread;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/HandlerThread;->quit()Z

    goto/16 :goto_0

    .line 173
    .restart local v11       #internalPath:Ljava/lang/String;
    .restart local v16       #preference:Landroid/content/SharedPreferences;
    .restart local v17       #preferenceValue:Ljava/lang/String;
    .restart local v20       #systemPath:Ljava/lang/String;
    :cond_5
    const-string v22, "MountReceiver"

    const-string v23, "onReceive"

    const-string v24, "there is no need to change download path."

    invoke-static/range {v22 .. v24}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 176
    .end local v11           #internalPath:Ljava/lang/String;
    .end local v16           #preference:Landroid/content/SharedPreferences;
    .end local v17           #preferenceValue:Ljava/lang/String;
    .end local v20           #systemPath:Ljava/lang/String;
    :cond_6
    const-string v22, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x1b5a

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x1b5e

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 183
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/Nearby"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 187
    .restart local v11       #internalPath:Ljava/lang/String;
    const/4 v8, 0x0

    .line 189
    .local v8, externalPath:Ljava/lang/String;
    const-string v22, "storage"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/storage/StorageManager;

    .line 191
    .local v18, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v19

    .line 192
    .local v19, storageVolumes:[Landroid/os/storage/StorageVolume;
    const/4 v9, 0x0

    .line 194
    .local v9, externalVolume:Landroid/os/storage/StorageVolume;
    move-object/from16 v4, v19

    .local v4, arr$:[Landroid/os/storage/StorageVolume;
    array-length v12, v4

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_3
    if-ge v10, v12, :cond_8

    aget-object v21, v4, v10

    .line 195
    .local v21, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v21 .. v21}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v22

    const-string v23, "sd"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 196
    const-string v22, "MountReceiver"

    const-string v23, "getExernalSdPath"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "ExternalSD path:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v21 .. v21}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v21 .. v21}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/Nearby"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 198
    move-object/from16 v9, v21

    .line 194
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 203
    .end local v21           #volume:Landroid/os/storage/StorageVolume;
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "NearbyDownloadTo"

    invoke-static/range {v22 .. v23}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 206
    .restart local v20       #systemPath:Ljava/lang/String;
    if-nez v20, :cond_9

    .line 207
    const-string v22, "MountReceiver"

    const-string v23, "onReceive"

    const-string v24, "DOWNLOAD systemPath  is NULL"

    invoke-static/range {v22 .. v24}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "NearbyDownloadTo"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 210
    move-object/from16 v20, v11

    .line 213
    :cond_9
    const-string v22, "MountReceiver"

    const-string v23, "onReceive"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Path: (systemPath)"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", (internalPath)"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", (externalPath)"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 217
    const-string v22, "MountReceiver"

    const-string v23, "onReceive"

    const-string v24, "Internal Path"

    invoke-static/range {v22 .. v24}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 218
    :cond_a
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 219
    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "mounted"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_b

    .line 221
    const-string v22, "MountReceiver"

    const-string v23, "onReceive"

    const-string v24, "External Unmounted: Fix to Internal"

    invoke-static/range {v22 .. v24}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x1b5b

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 223
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "NearbyDownloadTo"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 226
    :cond_b
    const-string v22, "MountReceiver"

    const-string v23, "onReceive"

    const-string v24, "External Path"

    invoke-static/range {v22 .. v24}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 229
    :cond_c
    const-string v22, "MountReceiver"

    const-string v23, "onReceive"

    const-string v24, "Wrong Path: Fix to Internal Default path"

    invoke-static/range {v22 .. v24}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x1b5b

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "NearbyDownloadTo"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 235
    .end local v4           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v8           #externalPath:Ljava/lang/String;
    .end local v9           #externalVolume:Landroid/os/storage/StorageVolume;
    .end local v10           #i$:I
    .end local v11           #internalPath:Ljava/lang/String;
    .end local v12           #len$:I
    .end local v18           #storageManager:Landroid/os/storage/StorageManager;
    .end local v19           #storageVolumes:[Landroid/os/storage/StorageVolume;
    .end local v20           #systemPath:Ljava/lang/String;
    :cond_d
    const-string v22, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_e

    const-string v22, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 237
    :cond_e
    const-string v22, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 239
    .local v6, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v14

    .line 240
    .local v14, netInfo:Landroid/net/NetworkInfo;
    const/16 v22, 0xd

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v15

    .line 242
    .local v15, netInfoP2p:Landroid/net/NetworkInfo;
    const-string v22, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    .line 245
    .local v5, changedState:Landroid/net/NetworkInfo;
    const-string v22, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    .line 246
    move-object v14, v5

    .line 251
    :cond_f
    :goto_4
    if-eqz v14, :cond_4

    if-eqz v15, :cond_4

    .line 252
    const-string v22, "MountReceiver"

    const-string v23, "onReceive"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "STATE WIFI:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", P2P:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v22 .. v24}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v22, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_11

    sget-object v22, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v14}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_11

    sget-object v22, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_11

    sget-object v22, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_11

    .line 259
    const-string v22, "MountReceiver"

    const-string v23, "onReceive"

    const-string v24, "Set preference state off"

    invoke-static/range {v22 .. v24}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x1b5a

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 247
    :cond_10
    const-string v22, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 248
    move-object v15, v5

    goto/16 :goto_4

    .line 263
    :cond_11
    const-string v22, "MountReceiver"

    const-string v23, "onReceive"

    const-string v24, "Keep current state"

    invoke-static/range {v22 .. v24}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 266
    .end local v5           #changedState:Landroid/net/NetworkInfo;
    .end local v6           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v14           #netInfo:Landroid/net/NetworkInfo;
    .end local v15           #netInfoP2p:Landroid/net/NetworkInfo;
    :cond_12
    const-string v22, "android.intent.action.ACTION_SHUTDOWN"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x1b5d

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 268
    :cond_13
    invoke-static {}, Lcom/android/settings/nearby/DMSUtil;->isVZWFeature()Z

    move-result v22

    if-eqz v22, :cond_4

    const-string v22, "android.intent.action.SETTINGS_SOFT_RESET"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/MountReceiver;->mPrefHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    const/16 v23, 0x1b62

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 277
    :catchall_0
    move-exception v22

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v22
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 278
    :catch_0
    move-exception v7

    .line 279
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2
.end method
