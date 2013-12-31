.class public Lcom/android/settings/nearby/NearbySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NearbySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final DOWNLAOD_TO_MEMORY:Ljava/lang/String; = "1"

.field private static final DOWNLOAD_TO_PHONE:Ljava/lang/String; = "0"

.field private static final HANDLER_SELF_FINISH:I = 0xbbb

.field private static final KEY_ALLSHARE_ACCEPTED_DEVICE:Ljava/lang/String; = "allshare_accept_device"

.field private static final KEY_ALLSHARE_DEVICE_NAME:Ljava/lang/String; = "allshare_device_name"

.field private static final KEY_ALLSHARE_DOWNLOAD_FROME:Ljava/lang/String; = "allshare_download_from"

.field private static final KEY_ALLSHARE_DOWNLOAD_TO:Ljava/lang/String; = "allshare_download_to"

.field private static final KEY_ALLSHARE_REJECTED_DEVICE:Ljava/lang/String; = "allshare_reject_device"

.field private static final KEY_ALLSHARE_SHARED_CONTENTS:Ljava/lang/String; = "allshare_shared_contents"

.field private static final LENGTH_DEVICE_NAME_MAX:I = 0x37

.field private static final LENGTH_DEVICE_NAME_MAX_HOMESYNC:I = 0x35

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "pref_allshare"

.field private static final TAGClass:Ljava/lang/String; = "NearbySettings"

.field protected static lengthDeviceNameMax:I

.field protected static mStorageManager:Landroid/os/storage/StorageManager;

.field protected static mStorageVolumes:[Landroid/os/storage/StorageVolume;


# instance fields
.field private bRegisterReceiver:Z

.field private bSelfFinish:Z

.field private mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDeviceName:Landroid/preference/PreferenceScreen;

.field private mDownloadFrom:Landroid/preference/ListPreference;

.field private mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

.field private mHandler:Landroid/os/Handler;

.field private mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

.field private mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

.field private mSearchpreference:Landroid/preference/Preference;

.field private mSharedContents:Landroid/preference/MultiSelectListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/nearby/NearbySettings;->lengthDeviceNameMax:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 73
    iput-boolean v0, p0, Lcom/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/settings/nearby/NearbySettings;->bSelfFinish:Z

    .line 364
    new-instance v0, Lcom/android/settings/nearby/NearbySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbySettings$1;-><init>(Lcom/android/settings/nearby/NearbySettings;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 500
    new-instance v0, Lcom/android/settings/nearby/NearbySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbySettings$2;-><init>(Lcom/android/settings/nearby/NearbySettings;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/DownloadListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/NearbyEnabler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/AcceptListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/RejectListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/nearby/NearbySettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/nearby/NearbySettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/nearby/NearbySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/settings/nearby/NearbySettings;->openSearchDetailMenu()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/settings/nearby/NearbySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/settings/nearby/NearbySettings;->bSelfFinish:Z

    return p1
.end method

.method private initPreferences()V
    .locals 5

    .prologue
    .line 292
    const-string v1, "NearbySettings"

    const-string v2, "initPreferences"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v2}, Lcom/android/settings/nearby/NearbyEnabler;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {v2}, Lcom/android/settings/nearby/DownloadListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/nearby/DownloadListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NearbySettings"

    const-string v2, "initPreferences"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setBroadcastReceiver()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 319
    const-string v2, "NearbySettings"

    const-string v3, "setBroadcastReceiver"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :try_start_0
    iget-boolean v2, p0, Lcom/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z

    if-nez v2, :cond_1

    .line 323
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.sec.android.nearby.mediaserver.REFRESH_DEVICE_LIST"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 326
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.settings.allshare.UPDATE_LIST"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 328
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.settings.allshare.ACTIVITY_START"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 331
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-ne v2, v6, :cond_0

    .line 332
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.settings.connected_mediaServer"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 337
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 338
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 339
    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 342
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 343
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 345
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_1
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "NearbySettings"

    const-string v3, "setBroadcastReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unregisterBroadcastReceiver()V
    .locals 5

    .prologue
    .line 353
    const-string v1, "NearbySettings"

    const-string v2, "unregisterBroadcastReceiver"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 357
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NearbySettings"

    const-string v2, "unregisterBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public isExternalStorageSdMounted()Z
    .locals 6

    .prologue
    .line 306
    const/4 v1, 0x0

    .line 308
    .local v1, value:Z
    :try_start_0
    sget-object v2, Lcom/android/settings/nearby/NearbySettings;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v3, Lcom/android/settings/nearby/NearbySettings;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 315
    :goto_0
    return v1

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "NearbySettings"

    const-string v3, "isExternalStorageSdMounted"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 283
    const-string v1, "NearbySettings"

    const-string v2, "onActivityCreated"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NearbySettings"

    const-string v2, "onActivityCreated"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 100
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const-string v1, "NearbySettings"

    const-string v4, "onCreate"

    const-string v5, ""

    invoke-static {v1, v4, v5}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/nearby/NearbySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    const-string v4, "pref_allshare"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 105
    const v1, 0x7f070011

    invoke-virtual {p0, v1}, Lcom/android/settings/nearby/NearbySettings;->addPreferencesFromResource(I)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    .line 111
    const/16 v1, 0x37

    sput v1, Lcom/android/settings/nearby/NearbySettings;->lengthDeviceNameMax:I

    .line 116
    :try_start_0
    const-string v1, "allshare_device_name"

    invoke-virtual {p0, v1}, Lcom/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/PreferenceScreen;

    .line 117
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/PreferenceScreen;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 119
    const-string v1, "allshare_shared_contents"

    invoke-virtual {p0, v1}, Lcom/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/MultiSelectListPreference;

    iput-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mSharedContents:Landroid/preference/MultiSelectListPreference;

    .line 120
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mSharedContents:Landroid/preference/MultiSelectListPreference;

    const v4, 0x7f040155

    invoke-virtual {v1, v4}, Landroid/preference/MultiSelectListPreference;->setWidgetLayoutResource(I)V

    .line 122
    const-string v1, "allshare_download_to"

    invoke-virtual {p0, v1}, Lcom/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/nearby/DownloadListPreference;

    iput-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    .line 123
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    const v4, 0x7f040155

    invoke-virtual {v1, v4}, Lcom/android/settings/nearby/DownloadListPreference;->setWidgetLayoutResource(I)V

    .line 125
    const-string v1, "allshare_download_from"

    invoke-virtual {p0, v1}, Lcom/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    .line 126
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    const v4, 0x7f040155

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 128
    const-string v1, "allshare_accept_device"

    invoke-virtual {p0, v1}, Lcom/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/nearby/AcceptListPreference;

    iput-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    .line 129
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    const v4, 0x7f040155

    invoke-virtual {v1, v4}, Lcom/android/settings/nearby/AcceptListPreference;->setWidgetLayoutResource(I)V

    .line 130
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    const v4, 0x7f090f70

    invoke-virtual {v1, v4}, Lcom/android/settings/nearby/AcceptListPreference;->setPositiveButtonText(I)V

    .line 131
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/nearby/AcceptListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 133
    const-string v1, "allshare_reject_device"

    invoke-virtual {p0, v1}, Lcom/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/nearby/RejectListPreference;

    iput-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    .line 134
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    const v4, 0x7f040155

    invoke-virtual {v1, v4}, Lcom/android/settings/nearby/RejectListPreference;->setWidgetLayoutResource(I)V

    .line 135
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    const v4, 0x7f090f70

    invoke-virtual {v1, v4}, Lcom/android/settings/nearby/RejectListPreference;->setPositiveButtonText(I)V

    .line 136
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/nearby/RejectListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbySettings;->setBroadcastReceiver()V

    .line 148
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const-string v4, "storage"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    sput-object v1, Lcom/android/settings/nearby/NearbySettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 149
    sget-object v1, Lcom/android/settings/nearby/NearbySettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    sput-object v1, Lcom/android/settings/nearby/NearbySettings;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 151
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {p0}, Lcom/android/settings/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/settings/nearby/DownloadListPreference;->setIsExternalMounted(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 159
    .local v2, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 162
    .local v3, actionBarSwitch:Landroid/widget/Switch;
    :try_start_2
    instance-of v1, v2, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_1

    .line 163
    move-object v0, v2

    check-cast v0, Landroid/preference/PreferenceActivity;

    move-object v14, v0

    .line 164
    .local v14, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v14}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v14}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    :cond_0
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v4, 0x7f090f72

    invoke-virtual {p0, v4}, Lcom/android/settings/nearby/NearbySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0f001b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 168
    .local v13, padding:I
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v13, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 169
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v4, 0x10

    const/16 v5, 0x10

    invoke-virtual {v1, v4, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 171
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v7, 0x15

    invoke-direct {v4, v5, v6, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 183
    .end local v13           #padding:I
    .end local v14           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    :goto_2
    new-instance v1, Lcom/android/settings/nearby/NearbyEnabler;

    iget-object v4, p0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/nearby/NearbySettings;->mSharedContents:Landroid/preference/MultiSelectListPreference;

    iget-object v6, p0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    iget-object v7, p0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    iget-object v8, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    iget-object v9, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    invoke-direct/range {v1 .. v9}, Lcom/android/settings/nearby/NearbyEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/PreferenceScreen;Landroid/preference/MultiSelectListPreference;Landroid/preference/MultiSelectListPreference;Landroid/preference/MultiSelectListPreference;Lcom/android/settings/nearby/DownloadListPreference;Landroid/preference/ListPreference;)V

    iput-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    .line 186
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    iget-object v4, p0, Lcom/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v1, v4}, Lcom/android/settings/nearby/AcceptListPreference;->setEnabler(Lcom/android/settings/nearby/NearbyEnabler;)V

    .line 187
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    iget-object v4, p0, Lcom/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v1, v4}, Lcom/android/settings/nearby/RejectListPreference;->setEnabler(Lcom/android/settings/nearby/NearbyEnabler;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v10

    .line 190
    .local v10, currentFlag:I
    new-instance v12, Landroid/content/Intent;

    const-string v1, "com.android.settings.allshare.ACTIVITY_START"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    .local v12, intentStart:Landroid/content/Intent;
    const-string v1, "FLAG"

    invoke-virtual {v12, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 193
    return-void

    .line 138
    .end local v2           #activity:Landroid/app/Activity;
    .end local v3           #actionBarSwitch:Landroid/widget/Switch;
    .end local v10           #currentFlag:I
    .end local v12           #intentStart:Landroid/content/Intent;
    :catch_0
    move-exception v11

    .line 139
    .local v11, e:Ljava/lang/Exception;
    const-string v1, "NearbySettings"

    const-string v4, "onCreate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception Thread: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 152
    .end local v11           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v11

    .line 153
    .restart local v11       #e:Ljava/lang/Exception;
    const-string v1, "NearbySettings"

    const-string v4, "onCreate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception storage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 178
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v2       #activity:Landroid/app/Activity;
    .restart local v3       #actionBarSwitch:Landroid/widget/Switch;
    :catch_2
    move-exception v11

    .line 179
    .restart local v11       #e:Ljava/lang/Exception;
    const-string v1, "NearbySettings"

    const-string v4, "onCreate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception Title : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 197
    const-string v1, "NearbySettings"

    const-string v2, "onDestroy"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bSelfFinish:Z

    if-nez v1, :cond_0

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbySettings;->unregisterBroadcastReceiver()V

    .line 212
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 213
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 221
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NearbySettings"

    const-string v2, "onDestroy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 263
    const-string v1, "NearbySettings"

    const-string v2, "onPause"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v1}, Lcom/android/settings/nearby/NearbyEnabler;->pause()V

    .line 267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.nearby.mediaserver.SET_NEARBY_FLAG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, intentFlag:Landroid/content/Intent;
    const-string v1, "FLAG"

    invoke-virtual {p0}, Lcom/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    const-string v1, "SCREEN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 272
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 273
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 11
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 525
    const-string v8, "NearbySettings"

    const-string v9, "onPreferenceClick"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    :try_start_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "allshare_accept_device"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "allshare_reject_device"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 532
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "allshare_accept_device"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 533
    const-string v8, "NearbySettings"

    const-string v9, "onPreferenceClick"

    const-string v10, "KEY_ALLSHARE_ACCEPTED_DEVICE"

    invoke-static {v8, v9, v10}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v8, p0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    invoke-virtual {v8}, Lcom/android/settings/nearby/AcceptListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 536
    .local v1, dialog:Landroid/app/AlertDialog;
    if-eqz v1, :cond_1

    .line 537
    const/4 v8, -0x1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    .line 538
    .local v5, positiveButton:Landroid/widget/Button;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 540
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 542
    .local v4, listView:Landroid/widget/ListView;
    if-eqz v4, :cond_1

    .line 543
    new-instance v3, Lcom/android/settings/nearby/ListItemListener;

    invoke-direct {v3, v5}, Lcom/android/settings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    .line 544
    .local v3, listItemListener:Lcom/android/settings/nearby/ListItemListener;
    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 546
    new-instance v0, Lcom/android/settings/nearby/DeleteButtonListener;

    iget-object v8, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-direct {v0, v3, v1, v8, v9}, Lcom/android/settings/nearby/DeleteButtonListener;-><init>(Lcom/android/settings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    .line 548
    .local v0, deletebuttonlistener:Lcom/android/settings/nearby/DeleteButtonListener;
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    .end local v0           #deletebuttonlistener:Lcom/android/settings/nearby/DeleteButtonListener;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v3           #listItemListener:Lcom/android/settings/nearby/ListItemListener;
    .end local v4           #listView:Landroid/widget/ListView;
    .end local v5           #positiveButton:Landroid/widget/Button;
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    const-string v9, "allshare_reject_device"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 553
    const-string v8, "NearbySettings"

    const-string v9, "onPreferenceClick"

    const-string v10, "KEY_ALLSHARE_REJECTED_DEVICE"

    invoke-static {v8, v9, v10}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v8, p0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    invoke-virtual {v8}, Lcom/android/settings/nearby/RejectListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 556
    .restart local v1       #dialog:Landroid/app/AlertDialog;
    if-eqz v1, :cond_2

    .line 557
    const/4 v8, -0x1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    .line 558
    .restart local v5       #positiveButton:Landroid/widget/Button;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 560
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 562
    .restart local v4       #listView:Landroid/widget/ListView;
    if-eqz v4, :cond_2

    .line 563
    new-instance v3, Lcom/android/settings/nearby/ListItemListener;

    invoke-direct {v3, v5}, Lcom/android/settings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    .line 564
    .restart local v3       #listItemListener:Lcom/android/settings/nearby/ListItemListener;
    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 566
    new-instance v0, Lcom/android/settings/nearby/DeleteButtonListener;

    iget-object v8, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-direct {v0, v3, v1, v8, v9}, Lcom/android/settings/nearby/DeleteButtonListener;-><init>(Lcom/android/settings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    .line 568
    .restart local v0       #deletebuttonlistener:Lcom/android/settings/nearby/DeleteButtonListener;
    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    .end local v0           #deletebuttonlistener:Lcom/android/settings/nearby/DeleteButtonListener;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v3           #listItemListener:Lcom/android/settings/nearby/ListItemListener;
    .end local v4           #listView:Landroid/widget/ListView;
    .end local v5           #positiveButton:Landroid/widget/Button;
    :cond_2
    :goto_0
    return v6

    .line 575
    :catch_0
    move-exception v2

    .line 576
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "NearbySettings"

    const-string v8, "onPreferenceClick"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v6, v7

    .line 578
    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 225
    const-string v3, "NearbySettings"

    const-string v4, "onResume"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, bFromSearch:Z
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-ne v3, v7, :cond_0

    .line 228
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getArrayLinkKey()Ljava/util/ArrayList;

    move-result-object v2

    .line 229
    .local v2, searchKey:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 230
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    invoke-virtual {v4}, Lcom/android/settings/nearby/AcceptListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 231
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 232
    iput-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 233
    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbySettings;->mSearchpreference:Landroid/preference/Preference;

    .line 245
    .end local v2           #searchKey:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 247
    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings;->mNearbyEnabler:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-virtual {v3}, Lcom/android/settings/nearby/NearbyEnabler;->resume()V

    .line 249
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbySettings;->initPreferences()V

    .line 251
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.android.nearby.mediaserver.SET_NEARBY_FLAG"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v1, intentFlag:Landroid/content/Intent;
    const-string v3, "FLAG"

    invoke-virtual {p0}, Lcom/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    const-string v3, "SCREEN"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 254
    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 256
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 257
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 259
    :cond_1
    return-void

    .line 234
    .end local v1           #intentFlag:Landroid/content/Intent;
    .restart local v2       #searchKey:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    invoke-virtual {v4}, Lcom/android/settings/nearby/RejectListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 235
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 236
    iput-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 237
    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbySettings;->mSearchpreference:Landroid/preference/Preference;

    goto :goto_0

    .line 238
    :cond_3
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/nearby/NearbySettings;->mSharedContents:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v4}, Landroid/preference/MultiSelectListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 239
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 240
    iput-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 241
    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings;->mSharedContents:Landroid/preference/MultiSelectListPreference;

    iput-object v3, p0, Lcom/android/settings/nearby/NearbySettings;->mSearchpreference:Landroid/preference/Preference;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 277
    const-string v0, "NearbySettings"

    const-string v1, "onSaveInstanceState"

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 279
    return-void
.end method
