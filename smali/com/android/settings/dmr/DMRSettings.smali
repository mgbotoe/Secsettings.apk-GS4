.class public Lcom/android/settings/dmr/DMRSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DMRSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field protected static final PROJECTION_CONTACT:[Ljava/lang/String;


# instance fields
.field private bFunctionState:Z

.field private bRegisterReceiver:Z

.field private bWifiPopupShown:Z

.field private mAccessControl:Landroid/preference/ListPreference;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mCurConnection:Landroid/content/ServiceConnection;

.field private mDMREnabler:Lcom/android/settings/dmr/DMREnabler;

.field private mDeviceName:Landroid/preference/EditTextPreference;

.field private mDeviceNameWatcher:Lcom/android/settings/dmr/EditTextWatcher;

.field private mEnabledSwitch:Landroid/widget/Switch;

.field private mHandler:Landroid/os/Handler;

.field private mIsBound:Z

.field public mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 156
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "link"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/dmr/DMRSettings;->PROJECTION_CONTACT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    .line 117
    iput-boolean v1, p0, Lcom/android/settings/dmr/DMRSettings;->bWifiPopupShown:Z

    .line 119
    iput-boolean v1, p0, Lcom/android/settings/dmr/DMRSettings;->mIsBound:Z

    .line 121
    iput-boolean v1, p0, Lcom/android/settings/dmr/DMRSettings;->bFunctionState:Z

    .line 123
    iput-boolean v1, p0, Lcom/android/settings/dmr/DMRSettings;->bRegisterReceiver:Z

    .line 887
    new-instance v0, Lcom/android/settings/dmr/DMRSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dmr/DMRSettings$1;-><init>(Lcom/android/settings/dmr/DMRSettings;)V

    iput-object v0, p0, Lcom/android/settings/dmr/DMRSettings;->mConnection:Landroid/content/ServiceConnection;

    .line 1250
    new-instance v0, Lcom/android/settings/dmr/DMRSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/dmr/DMRSettings$4;-><init>(Lcom/android/settings/dmr/DMRSettings;)V

    iput-object v0, p0, Lcom/android/settings/dmr/DMRSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1792
    new-instance v0, Lcom/android/settings/dmr/DMRSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/dmr/DMRSettings$8;-><init>(Lcom/android/settings/dmr/DMRSettings;)V

    iput-object v0, p0, Lcom/android/settings/dmr/DMRSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dmr/DMRSettings;Landroid/preference/PreferenceGroup;Ljava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dmr/DMRSettings;->registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/dmr/DMRSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings/dmr/DMRSettings;->refreshPreferenceValues()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/dmr/DMRSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/settings/dmr/DMRSettings;->bWifiPopupShown:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/dmr/DMRSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/android/settings/dmr/DMRSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/dmr/DMRSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/dmr/DMRSettings;->mAccessControl:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private bindRemoteService()V
    .locals 5

    .prologue
    .line 850
    const-string v1, "Settings"

    const-string v2, "bindService"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-boolean v1, p0, Lcom/android/settings/dmr/DMRSettings;->mIsBound:Z

    if-nez v1, :cond_0

    .line 854
    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1389

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 855
    const-string v1, "Settings"

    const-string v2, "service is not bound "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    new-instance v0, Landroid/content/Intent;

    const-string v1, "asfdmr.intent.action.bindDMRService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 858
    .local v0, bindIntent:Landroid/content/Intent;
    const-string v1, "com.sec.android.allshare.dmrservice"

    const-string v2, "com.sec.android.allshare.dmrservice.DMRServiceManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 860
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 863
    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 864
    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dmr/DMRSettings;->mConnection:Landroid/content/ServiceConnection;

    const/16 v3, 0x49

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 865
    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings;->mConnection:Landroid/content/ServiceConnection;

    iput-object v1, p0, Lcom/android/settings/dmr/DMRSettings;->mCurConnection:Landroid/content/ServiceConnection;

    .line 866
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/dmr/DMRSettings;->mIsBound:Z

    .line 868
    .end local v0           #bindIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private checkDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 1202
    const-string v0, "Settings"

    const-string v1, "DMR Setting: checkDeviceName()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :try_start_0
    const-string v0, "[HomeSync]"

    .line 1210
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1214
    :try_start_1
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMR Setting: modify Device Name to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1238
    :goto_0
    return-object v0

    .line 1218
    :cond_0
    :try_start_2
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1224
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090f72

    invoke-virtual {p0, v1}, Lcom/android/settings/dmr/DMRSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1230
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p1

    .line 1232
    :goto_1
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMR Setting: checkDeviceName(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1230
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private initPreferences()V
    .locals 5

    .prologue
    .line 1164
    const-string v1, "Settings"

    const-string v2, "DMR Setting: initPreferences()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings;->mAccessControl:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/dmr/DMRSettings;->mAccessControl:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1169
    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    if-eqz v1, :cond_0

    .line 1171
    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1389

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1176
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    if-eqz v1, :cond_1

    .line 1177
    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/dmr/DMRSettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    :cond_1
    :goto_0
    return-void

    .line 1178
    :catch_0
    move-exception v0

    .line 1179
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMR Setting: initPreferences() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private refreshPreferenceValues()V
    .locals 7

    .prologue
    .line 1122
    const-string v3, "Settings"

    const-string v4, "DMR Setting: refreshPreferenceValues()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    const/4 v2, 0x0

    .line 1126
    .local v2, updatedNeme:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_2

    .line 1129
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/dmr/DMRSettings;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1389

    const-wide/16 v5, 0x96

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1134
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/dmr/DMRSettings;->bWifiPopupShown:Z

    .line 1137
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/dmr/DMRSettings;->bWifiPopupShown:Z

    .line 1138
    iget-object v3, p0, Lcom/android/settings/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-interface {v3}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->getMediaRendererName()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1148
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/android/settings/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    if-eqz v3, :cond_1

    .line 1149
    if-nez v2, :cond_0

    .line 1150
    iget-object v3, p0, Lcom/android/settings/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    .line 1151
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/dmr/DMRSettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1152
    .local v1, modifiedName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1153
    iget-object v3, p0, Lcom/android/settings/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v3, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1161
    .end local v1           #modifiedName:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1139
    :catch_0
    move-exception v0

    .line 1140
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DMR Setting: refreshPreferenceValues getMediaRendererName : RemoteException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1155
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1156
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DMR Setting: refreshPreferenceValues() preference variable :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1145
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_3
    const-string v3, "Settings"

    const-string v4, "DMR Setting: mService is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method private registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V
    .locals 15
    .parameter "preferenceGroup"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceGroup;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 991
    .local p2, currentPreference:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v1, "Settings"

    const-string v2, "DMR Setting: registerPreferenceChangeListener"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    move-object/from16 v0, p1

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceGroup;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 994
    invoke-virtual/range {p1 .. p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v12

    .line 996
    .local v12, nCount:I
    const/4 v11, 0x0

    .local v11, index:I
    :goto_0
    if-ge v11, v12, :cond_a

    .line 998
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v13

    .line 1000
    .local v13, preference:Landroid/preference/Preference;
    if-eqz v13, :cond_2

    .line 1002
    invoke-virtual {v13, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1004
    invoke-virtual {v13}, Landroid/preference/Preference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1007
    invoke-virtual {v13}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 1010
    .local v14, value:Ljava/lang/Object;
    invoke-virtual {v13}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dmr_onoff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v14, :cond_3

    .line 1011
    const-string v1, "Settings"

    const-string v2, "DMR Setting: Preference Init OFF"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    const/4 v14, 0x0

    .line 1098
    .end local v14           #value:Ljava/lang/Object;
    :cond_0
    :goto_1
    if-eqz v14, :cond_1

    .line 1100
    invoke-virtual {p0, v13, v14}, Lcom/android/settings/dmr/DMRSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1106
    :cond_1
    instance-of v1, v13, Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_2

    .line 1108
    check-cast v13, Landroid/preference/PreferenceGroup;

    .end local v13           #preference:Landroid/preference/Preference;
    move-object/from16 v0, p2

    invoke-direct {p0, v13, v0}, Lcom/android/settings/dmr/DMRSettings;->registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V

    .line 996
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1051
    .restart local v13       #preference:Landroid/preference/Preference;
    .restart local v14       #value:Ljava/lang/Object;
    :cond_3
    invoke-virtual {v13}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dmr_device_name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-nez v14, :cond_9

    .line 1052
    invoke-virtual {p0}, Lcom/android/settings/dmr/DMRSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/dmr/DMRSettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1055
    .local v9, deviceName:Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 1056
    move-object v14, v9

    .line 1086
    .local v14, value:Ljava/lang/String;
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 1059
    .local v14, value:Ljava/lang/Object;
    :cond_5
    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/settings/dmr/DMRSettings;->PROJECTION_CONTACT:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1061
    .local v8, cursor:Landroid/database/Cursor;
    const-string v10, ""

    .line 1064
    .local v10, friendlyName:Ljava/lang/String;
    :goto_3
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1065
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1066
    if-eqz v10, :cond_6

    .line 1067
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMR Setting: friendlyName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 1072
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1069
    :cond_6
    :try_start_1
    const-string v1, "Settings"

    const-string v2, "DMR Setting: freindlyName is NULL"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1072
    :cond_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1075
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 1076
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMR Setting: Set Default Device Name :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1082
    .local v14, value:Ljava/lang/String;
    :goto_4
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 1083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 1079
    .local v14, value:Ljava/lang/Object;
    :cond_8
    const v1, 0x7f090f72

    invoke-virtual {p0, v1}, Lcom/android/settings/dmr/DMRSettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    .local v14, value:Ljava/lang/String;
    goto :goto_4

    .line 1090
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #deviceName:Ljava/lang/String;
    .end local v10           #friendlyName:Ljava/lang/String;
    .local v14, value:Ljava/lang/Object;
    :cond_9
    invoke-virtual {v13}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dmr_device_name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1092
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1093
    .local v7, changedName:Ljava/lang/String;
    move-object v14, v7

    .line 1094
    .local v14, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1095
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMR Setting: Remove all \'/\': "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1116
    .end local v7           #changedName:Ljava/lang/String;
    .end local v13           #preference:Landroid/preference/Preference;
    .end local v14           #value:Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private requestWifiSettingPopup()V
    .locals 4

    .prologue
    .line 923
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/dmr/DMRSettings;->bFunctionState:Z

    .line 924
    iget-boolean v1, p0, Lcom/android/settings/dmr/DMRSettings;->bWifiPopupShown:Z

    if-nez v1, :cond_0

    .line 926
    const-string v1, "Settings"

    const-string v2, "DMR Setting: requestWifiSettingPopup()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/dmr/DMRSettings;->bWifiPopupShown:Z

    .line 936
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/dmr/DMRSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0913f0

    invoke-virtual {p0, v2}, Lcom/android/settings/dmr/DMRSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0913fa

    invoke-virtual {p0, v2}, Lcom/android/settings/dmr/DMRSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090f68

    new-instance v3, Lcom/android/settings/dmr/DMRSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/dmr/DMRSettings$3;-><init>(Lcom/android/settings/dmr/DMRSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/dmr/DMRSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/dmr/DMRSettings$2;-><init>(Lcom/android/settings/dmr/DMRSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 974
    :catch_0
    move-exception v0

    .line 976
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMR Setting: requestWifiSettingPopup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setBroadcastReceiver()V
    .locals 4

    .prologue
    .line 1591
    const-string v0, "Settings"

    const-string v1, "DMR Setting: setBroadcastReceiver()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/dmr/DMRSettings;->bRegisterReceiver:Z

    if-nez v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/android/settings/dmr/DMRSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1601
    iget-object v0, p0, Lcom/android/settings/dmr/DMRSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "WIFI_P2P_CONNECTION_CHANGED_ACTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1605
    iget-object v0, p0, Lcom/android/settings/dmr/DMRSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1643
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dmr/DMRSettings;->bRegisterReceiver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1652
    :cond_0
    :goto_0
    return-void

    .line 1647
    :catch_0
    move-exception v0

    .line 1648
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMR Setting: Exception on setBroadcastReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unBindRemoteService()V
    .locals 2

    .prologue
    .line 874
    const-string v0, "Settings"

    const-string v1, "unbindService"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-boolean v0, p0, Lcom/android/settings/dmr/DMRSettings;->mIsBound:Z

    if-eqz v0, :cond_1

    .line 876
    iget-object v0, p0, Lcom/android/settings/dmr/DMRSettings;->mCurConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/android/settings/dmr/DMRSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings;->mCurConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 879
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/dmr/DMRSettings;->mCurConnection:Landroid/content/ServiceConnection;

    .line 880
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dmr/DMRSettings;->mIsBound:Z

    .line 882
    :cond_1
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 4

    .prologue
    .line 1658
    const-string v0, "Settings"

    const-string v1, "DMR Setting: unregisterBroadcastReceiver()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/dmr/DMRSettings;->bRegisterReceiver:Z

    if-eqz v0, :cond_0

    .line 1664
    iget-object v0, p0, Lcom/android/settings/dmr/DMRSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1666
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dmr/DMRSettings;->bRegisterReceiver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1676
    :cond_0
    :goto_0
    return-void

    .line 1670
    :catch_0
    move-exception v0

    .line 1672
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMR Setting: Exception on unregisterBroadcastReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public displayList(Lcom/sec/android/allshare/dmrservice/DeviceList;Z)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1687
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DMR Setting: displayList with permission"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/dmr/DMRSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1692
    if-eqz p2, :cond_1

    .line 1693
    const v0, 0x7f0913f4

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1699
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/allshare/dmrservice/DeviceList;->getDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1700
    :cond_0
    const-string v0, "Settings"

    const-string v1, "DMR Setting: No deivce in list."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    const v0, 0x7f0913f9

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1780
    :goto_1
    const v0, 0x7f090f69

    new-instance v1, Lcom/android/settings/dmr/DMRSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/dmr/DMRSettings$7;-><init>(Lcom/android/settings/dmr/DMRSettings;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1787
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1788
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1789
    return-void

    .line 1695
    :cond_1
    const v0, 0x7f0913f6

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1704
    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/allshare/dmrservice/DeviceList;->getDeviceList()Ljava/util/List;

    move-result-object v4

    .line 1705
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1707
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 1708
    new-array v6, v0, [Ljava/lang/String;

    .line 1709
    new-array v7, v0, [Ljava/lang/String;

    .line 1710
    new-array v8, v0, [Z

    .line 1712
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v1, v2

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/allshare/dmrservice/Device;

    .line 1713
    iget-object v10, v0, Lcom/sec/android/allshare/dmrservice/Device;->deviceName:Ljava/lang/String;

    aput-object v10, v6, v1

    .line 1714
    iget-object v0, v0, Lcom/sec/android/allshare/dmrservice/Device;->deviceID:Ljava/lang/String;

    aput-object v0, v7, v1

    .line 1715
    aput-boolean v2, v8, v1

    .line 1716
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1719
    :cond_3
    new-instance v0, Lcom/android/settings/dmr/DMRSettings$5;

    invoke-direct {v0, p0, v5, v4}, Lcom/android/settings/dmr/DMRSettings$5;-><init>(Lcom/android/settings/dmr/DMRSettings;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v6, v8, v0}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1743
    const v0, 0x7f090f70

    new-instance v1, Lcom/android/settings/dmr/DMRSettings$6;

    invoke-direct {v1, p0, v5, p2}, Lcom/android/settings/dmr/DMRSettings$6;-><init>(Lcom/android/settings/dmr/DMRSettings;Ljava/util/List;Z)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 260
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/dmr/DMRSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 263
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/dmr/DMRSettings;->mEnabledSwitch:Landroid/widget/Switch;

    .line 264
    iget-object v2, p0, Lcom/android/settings/dmr/DMRSettings;->mEnabledSwitch:Landroid/widget/Switch;

    sget-boolean v3, Lcom/android/settings/dmr/DMREnabler;->mIsON:Z

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 265
    new-instance v2, Lcom/android/settings/dmr/DMREnabler;

    iget-object v3, p0, Lcom/android/settings/dmr/DMRSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-direct {v2, v0, v3}, Lcom/android/settings/dmr/DMREnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v2, p0, Lcom/android/settings/dmr/DMRSettings;->mDMREnabler:Lcom/android/settings/dmr/DMREnabler;

    .line 267
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 269
    .local v1, padding:I
    iget-object v2, p0, Lcom/android/settings/dmr/DMRSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 270
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 199
    const-string v2, "Settings"

    const-string v3, "DMR Setting:   onCreate()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/dmr/DMRSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    const-string v3, "pref_dmr"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 205
    const v2, 0x7f070037

    invoke-virtual {p0, v2}, Lcom/android/settings/dmr/DMRSettings;->addPreferencesFromResource(I)V

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/dmr/DMRSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/dmr/DMRSettings;->mContext:Landroid/content/Context;

    .line 219
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/dmr/DMRSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "dmr_device_name"

    invoke-virtual {p0, v3}, Lcom/android/settings/dmr/DMRSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 240
    const-string v2, "dmr_accept_device"

    invoke-virtual {p0, v2}, Lcom/android/settings/dmr/DMRSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 241
    .local v0, allowedDevice:Landroid/preference/Preference;
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 242
    const-string v2, "dmr_reject_device"

    invoke-virtual {p0, v2}, Lcom/android/settings/dmr/DMRSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 243
    .local v1, deniedDevice:Landroid/preference/Preference;
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 244
    const-string v2, "dmr_access_control"

    invoke-virtual {p0, v2}, Lcom/android/settings/dmr/DMRSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/dmr/DMRSettings;->mAccessControl:Landroid/preference/ListPreference;

    .line 249
    iget-boolean v2, p0, Lcom/android/settings/dmr/DMRSettings;->mIsBound:Z

    if-nez v2, :cond_0

    .line 250
    const-string v2, "Settings"

    const-string v3, "DMR Setting:  MediaRenderer Service is not bound so bounding the serivce."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-direct {p0}, Lcom/android/settings/dmr/DMRSettings;->bindRemoteService()V

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/dmr/DMRSettings;->setBroadcastReceiver()V

    .line 256
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 377
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 378
    const-string v0, "Settings"

    const-string v1, "DMR Setting: onDestroy()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-direct {p0}, Lcom/android/settings/dmr/DMRSettings;->unBindRemoteService()V

    .line 383
    invoke-direct {p0}, Lcom/android/settings/dmr/DMRSettings;->unregisterBroadcastReceiver()V

    .line 384
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 296
    const-string v0, "Settings"

    const-string v1, "DMR Setting:   onDestroyView()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/dmr/DMRSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 298
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 299
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 363
    const-string v0, "Settings"

    const-string v1, "DMR Setting: onPause()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 366
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 17
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 478
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 479
    .local v5, key:Ljava/lang/String;
    const-string v13, "Settings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DMR Setting: Preference Changed: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const-string v13, "dmr_onoff"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v13, p2

    .line 485
    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 487
    .local v10, value:Z
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/dmr/DMRSettings;->bFunctionState:Z

    if-ne v13, v10, :cond_1

    .line 488
    const-string v13, "Settings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DMR Setting: Duplicated on/off message: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/dmr/DMRSettings;->bFunctionState:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    if-nez v13, :cond_0

    .line 490
    const/4 v13, 0x0

    .line 842
    .end local v10           #value:Z
    .end local p2
    :goto_0
    return v13

    .line 492
    .restart local v10       #value:Z
    .restart local p2
    :cond_0
    const/4 v13, 0x1

    goto :goto_0

    .line 498
    :cond_1
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/settings/dmr/DMRSettings;->bFunctionState:Z

    .line 499
    const-string v13, "wifi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/dmr/DMRSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    .line 500
    .local v11, wifiManager:Landroid/net/wifi/WifiManager;
    const-string v13, "wifip2p"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/dmr/DMRSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 503
    .local v12, wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    if-eqz v11, :cond_5

    if-eqz v12, :cond_5

    if-eqz p2, :cond_5

    .line 504
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/dmr/DMRSettings;->mContext:Landroid/content/Context;

    const-string v14, "connectivity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 506
    .local v2, connectivityManager:Landroid/net/ConnectivityManager;
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 508
    .local v8, netInfoWifi:Landroid/net/NetworkInfo;
    const/16 v13, 0xd

    invoke-virtual {v2, v13}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    .line 510
    .local v7, netInfoP2p:Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 523
    .local v1, bEthernetConnected:Z
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_b

    .line 525
    if-nez v1, :cond_3

    if-eqz v8, :cond_3

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 533
    if-eqz v7, :cond_2

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 539
    const-string v13, "Settings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DMR Setting: Wifi State : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", WifiDirect State : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/dmr/DMRSettings;->requestWifiSettingPopup()V

    .line 563
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 565
    :cond_2
    if-nez v7, :cond_b

    .line 567
    const-string v13, "Settings"

    const-string v14, "DMR Setting: Wifi State : netInfoP2p is null >> check p2p state"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/dmr/DMRSettings;->requestWifiSettingPopup()V

    .line 585
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 593
    :cond_3
    if-nez v8, :cond_b

    .line 595
    const-string v13, "Settings"

    const-string v14, "DMR Setting: Wifi State : netInfoWifi is null >> check p2p state"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    if-eqz v7, :cond_4

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 603
    const-string v13, "Settings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DMR Setting:  WifiDirect State : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/dmr/DMRSettings;->requestWifiSettingPopup()V

    .line 623
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 629
    :cond_4
    if-nez v7, :cond_b

    .line 631
    const-string v13, "Settings"

    const-string v14, "DMR Setting: Wifi State : netInfoP2p is null >> check p2p state"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/dmr/DMRSettings;->requestWifiSettingPopup()V

    .line 651
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 665
    .end local v1           #bEthernetConnected:Z
    .end local v2           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v7           #netInfoP2p:Landroid/net/NetworkInfo;
    .end local v8           #netInfoWifi:Landroid/net/NetworkInfo;
    .restart local p2
    :cond_5
    const-string v13, "Settings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DMR Setting: Check Wi-Fi State or Function state"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 756
    .end local v10           #value:Z
    .end local v11           #wifiManager:Landroid/net/wifi/WifiManager;
    .end local v12           #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_6
    const-string v13, "dmr_device_name"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    if-eqz p2, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    if-eqz v13, :cond_d

    .line 758
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    .line 760
    .local v6, length:I
    if-lez v6, :cond_7

    const/16 v13, 0x37

    if-le v6, v13, :cond_8

    .line 761
    :cond_7
    const-string v13, "Settings"

    const-string v14, "DMR Setting: Device name length error "

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 766
    :cond_8
    const/4 v3, 0x0

    .line 767
    .local v3, currentName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v9

    .line 768
    .local v9, updatedNeme:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    if-eqz v13, :cond_9

    .line 770
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-interface {v13}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->getMediaRendererName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 783
    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const-string v13, "[HomeSync]"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 784
    const-string v13, "Settings"

    const-string v14, "DMR Setting: Device name is same. return"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 771
    :catch_0
    move-exception v4

    .line 772
    .local v4, e:Landroid/os/RemoteException;
    const-string v13, "Settings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DMR Setting: getMediaRendererName : RemoteException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 774
    .end local v4           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 775
    .local v4, e:Ljava/lang/Exception;
    const-string v13, "Settings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DMR Setting: getMediaRendererName : Exception"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 780
    .end local v4           #e:Ljava/lang/Exception;
    :cond_9
    const-string v13, "Settings"

    const-string v14, "DMR Setting: mService is null"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 791
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    if-eqz v13, :cond_c

    .line 794
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->setMediaRendererName(Ljava/lang/String;)V

    .line 795
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/dmr/DMRSettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 796
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 797
    :catch_2
    move-exception v4

    .line 798
    .local v4, e:Landroid/os/RemoteException;
    const-string v13, "Settings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DMR Setting: setMediaRendererName : RemoteException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 842
    .end local v3           #currentName:Ljava/lang/String;
    .end local v4           #e:Landroid/os/RemoteException;
    .end local v6           #length:I
    .end local v9           #updatedNeme:Ljava/lang/String;
    .end local p2
    :cond_b
    :goto_2
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 800
    .restart local v3       #currentName:Ljava/lang/String;
    .restart local v6       #length:I
    .restart local v9       #updatedNeme:Ljava/lang/String;
    .restart local p2
    :catch_3
    move-exception v4

    .line 801
    .local v4, e:Ljava/lang/Exception;
    const-string v13, "Settings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DMR Setting: setMediaRendererName : Exception"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 806
    .end local v4           #e:Ljava/lang/Exception;
    :cond_c
    const-string v13, "Settings"

    const-string v14, "DMR Setting: mService is null"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/dmr/DMRSettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 810
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 816
    .end local v3           #currentName:Ljava/lang/String;
    .end local v6           #length:I
    .end local v9           #updatedNeme:Ljava/lang/String;
    :cond_d
    const-string v13, "dmr_access_control"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 817
    const-string v13, "Settings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DMR Setting: key is dmr_access_control With previous value :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/dmr/DMRSettings;->mAccessControl:Landroid/preference/ListPreference;

    invoke-virtual {v15}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const-string v13, "Settings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DMR Setting: key is dmr_access_control With new entry :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    if-eqz v13, :cond_e

    move-object/from16 v0, p2

    instance-of v13, v0, Ljava/lang/String;

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/dmr/DMRSettings;->mAccessControl:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    .line 822
    :try_start_2
    const-string v13, "Settings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DMR Setting: saving the value"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->setDeviceAccessMode(Ljava/lang/String;)V

    .line 824
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/dmr/DMRSettings;->mHandler:Landroid/os/Handler;

    const/16 v14, 0x138a

    const-wide/16 v15, 0xc8

    invoke-virtual/range {v13 .. v16}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 839
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 825
    :catch_4
    move-exception v4

    .line 827
    .local v4, e:Landroid/os/RemoteException;
    const-string v13, "Settings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DMR Setting: KEY_DMR_ACCESS_CONTROL getMediaRendererName : RemoteException"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 829
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 830
    .end local v4           #e:Landroid/os/RemoteException;
    :catch_5
    move-exception v4

    .line 831
    .local v4, e:Ljava/lang/Exception;
    const-string v13, "Settings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DMR Setting: KEY_DMR_ACCESS_CONTROL  getMediaRendererName : Exception"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 833
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 837
    .end local v4           #e:Ljava/lang/Exception;
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 392
    const-string v6, "Settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DMR Setting: onPreferenceClick(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :try_start_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "dmr_device_name"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 397
    const-string v6, "Settings"

    const-string v7, "DMR Setting: PreferenceClick :  KEY_DMR_DEVICE_NAME"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v6, p0, Lcom/android/settings/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 399
    .local v1, dialog:Landroid/app/AlertDialog;
    if-eqz v1, :cond_0

    .line 400
    const/4 v6, -0x1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 401
    .local v3, positiveButton:Landroid/widget/Button;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 402
    check-cast p1, Landroid/preference/EditTextPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->selectAll()V

    .line 403
    iget-object v6, p0, Lcom/android/settings/dmr/DMRSettings;->mDeviceNameWatcher:Lcom/android/settings/dmr/EditTextWatcher;

    iget-object v7, p0, Lcom/android/settings/dmr/DMRSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v1, v7}, Lcom/android/settings/dmr/EditTextWatcher;->setDialog(Landroid/app/Dialog;Landroid/content/Context;)V

    .line 470
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v3           #positiveButton:Landroid/widget/Button;
    :cond_0
    :goto_0
    return v4

    .line 412
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "dmr_accept_device"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "dmr_reject_device"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 414
    :cond_2
    const-string v6, "Settings"

    const-string v7, "DMR Setting: Accept or Reject Device name preference clicked"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "dmr_accept_device"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 419
    const-string v6, "Settings"

    const-string v7, "DMR Setting: onPreferenceClick(): KEY_ALLSHARE_ACCE;PTED_DEVICE "

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v6, p0, Lcom/android/settings/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_4

    .line 423
    :try_start_1
    iget-object v6, p0, Lcom/android/settings/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-interface {v6}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->getAllowedDevices()Lcom/sec/android/allshare/dmrservice/DeviceList;

    move-result-object v0

    .line 424
    .local v0, device_list:Lcom/sec/android/allshare/dmrservice/DeviceList;
    const/4 v6, 0x1

    invoke-virtual {p0, v0, v6}, Lcom/android/settings/dmr/DMRSettings;->displayList(Lcom/sec/android/allshare/dmrservice/DeviceList;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 439
    .end local v0           #device_list:Lcom/sec/android/allshare/dmrservice/DeviceList;
    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "dmr_reject_device"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 441
    const-string v6, "Settings"

    const-string v7, "DMR Setting: onPreferenceClick(): REJECTED_DEVICE "

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v6, p0, Lcom/android/settings/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v6, :cond_5

    .line 444
    :try_start_3
    iget-object v6, p0, Lcom/android/settings/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-interface {v6}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->getDeniedDevices()Lcom/sec/android/allshare/dmrservice/DeviceList;

    move-result-object v0

    .line 445
    .restart local v0       #device_list:Lcom/sec/android/allshare/dmrservice/DeviceList;
    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6}, Lcom/android/settings/dmr/DMRSettings;->displayList(Lcom/sec/android/allshare/dmrservice/DeviceList;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_0

    .line 446
    .end local v0           #device_list:Lcom/sec/android/allshare/dmrservice/DeviceList;
    :catch_0
    move-exception v2

    .line 447
    .local v2, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v6, "Settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DMR Setting: onPreferenceClick(): REJECTED_DEVICE  RemoteException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 461
    .end local v2           #e:Landroid/os/RemoteException;
    .end local p1
    :catch_1
    move-exception v2

    .line 462
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DMR Setting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v5

    .line 464
    goto/16 :goto_0

    .line 425
    .end local v2           #e:Ljava/lang/Exception;
    .restart local p1
    :catch_2
    move-exception v2

    .line 426
    .local v2, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v6, "Settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DMR Setting: onPreferenceClick():  ACCEPTED_DEVICE  RemoteException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 428
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v2

    .line 429
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "Settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DMR Setting: onPreferenceClick(): ACCEPTED_DEVICE Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 433
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/dmr/DMRSettings;->displayList(Lcom/sec/android/allshare/dmrservice/DeviceList;Z)V

    .line 434
    const-string v6, "Settings"

    const-string v7, "DMR Setting: mService is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 449
    :catch_4
    move-exception v2

    .line 450
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v6, "Settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DMR Setting: onPreferenceClick(): REJECTED_DEVICE Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 454
    .end local v2           #e:Ljava/lang/Exception;
    :cond_5
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/dmr/DMRSettings;->displayList(Lcom/sec/android/allshare/dmrservice/DeviceList;Z)V

    .line 455
    const-string v6, "Settings"

    const-string v7, "DMR Setting: mService is null"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 303
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 304
    const-string v4, "Settings"

    const-string v5, "DMR Setting:   onResume()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/dmr/DMRSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 308
    .local v0, currentPreference:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-virtual {p0}, Lcom/android/settings/dmr/DMRSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/android/settings/dmr/DMRSettings;->registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V

    .line 309
    invoke-direct {p0}, Lcom/android/settings/dmr/DMRSettings;->initPreferences()V

    .line 345
    iget-object v4, p0, Lcom/android/settings/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    if-eqz v4, :cond_0

    .line 346
    iget-object v4, p0, Lcom/android/settings/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    check-cast v2, Landroid/app/AlertDialog;

    .line 347
    .local v2, dialog:Landroid/app/AlertDialog;
    if-eqz v2, :cond_0

    .line 348
    iget-object v4, p0, Lcom/android/settings/dmr/DMRSettings;->mDeviceNameWatcher:Lcom/android/settings/dmr/EditTextWatcher;

    iget-object v5, p0, Lcom/android/settings/dmr/DMRSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2, v5}, Lcom/android/settings/dmr/EditTextWatcher;->setDialog(Landroid/app/Dialog;Landroid/content/Context;)V

    .line 349
    iget-object v4, p0, Lcom/android/settings/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, currentText:Ljava/lang/String;
    const-string v4, "Settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DMR Setting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v4, p0, Lcom/android/settings/dmr/DMRSettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 352
    const-string v4, "Settings"

    const-string v5, "DMR Setting: device name button disabled!!"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 354
    .local v3, positiveButton:Landroid/widget/Button;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 358
    .end local v1           #currentText:Ljava/lang/String;
    .end local v2           #dialog:Landroid/app/AlertDialog;
    .end local v3           #positiveButton:Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 371
    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DMR Setting: onSaveInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 373
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/16 v2, 0x10

    const/4 v5, -0x2

    .line 274
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 275
    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings;->mDMREnabler:Lcom/android/settings/dmr/DMREnabler;

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings;->mDMREnabler:Lcom/android/settings/dmr/DMREnabler;

    invoke-virtual {v1}, Lcom/android/settings/dmr/DMREnabler;->resume()V

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dmr/DMRSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 278
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 280
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dmr/DMRSettings;->mEnabledSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v4, 0x800015

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 284
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 288
    const-string v0, "Settings"

    const-string v1, "DMR Setting:   onStop()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/android/settings/dmr/DMRSettings;->mDMREnabler:Lcom/android/settings/dmr/DMREnabler;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/settings/dmr/DMRSettings;->mDMREnabler:Lcom/android/settings/dmr/DMREnabler;

    invoke-virtual {v0}, Lcom/android/settings/dmr/DMREnabler;->pause()V

    .line 291
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 292
    return-void
.end method
