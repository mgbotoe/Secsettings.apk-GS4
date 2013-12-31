.class public Lcom/android/settings/nearby/NearbyEnabler;
.super Ljava/lang/Object;
.source "NearbyEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nearby/NearbyEnabler$HandleRejectDevice;,
        Lcom/android/settings/nearby/NearbyEnabler$HandleAcceptDevice;,
        Lcom/android/settings/nearby/NearbyEnabler$HandleAllowUpload;,
        Lcom/android/settings/nearby/NearbyEnabler$HandleShareContentType;,
        Lcom/android/settings/nearby/NearbyEnabler$HandleServerName;,
        Lcom/android/settings/nearby/NearbyEnabler$HandleServerStart;,
        Lcom/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;
    }
.end annotation


# static fields
.field private static final ACCESS_ACCEPT_ALL:Ljava/lang/String; = "0"

.field private static final ACCESS_ONLY_ALLOWED_DEVICES:Ljava/lang/String; = "1"

.field private static final DOWNLAOD_TO_MEMORY:Ljava/lang/String; = "1"

.field private static final DOWNLOAD_TO_PHONE:Ljava/lang/String; = "0"

.field private static final KEY_ALLSHARE_ACCEPTED_DEVICE:Ljava/lang/String; = "allshare_accept_device"

.field private static final KEY_ALLSHARE_DEVICE_NAME:Ljava/lang/String; = "allshare_device_name"

.field private static final KEY_ALLSHARE_DOWNLOAD_OPTION:Ljava/lang/String; = "allshare_download_from"

.field private static final KEY_ALLSHARE_DOWNLOAD_TO:Ljava/lang/String; = "allshare_download_to"

.field private static final KEY_ALLSHARE_ONOFF:Ljava/lang/String; = "nearby_settings"

.field private static final KEY_ALLSHARE_REJECTED_DEVICE:Ljava/lang/String; = "allshare_reject_device"

.field private static final KEY_ALLSHARE_SHARED_CONTENTS:Ljava/lang/String; = "allshare_shared_contents"

.field private static final KEY_SEPARATOR:Ljava/lang/String; = "*--*"

.field private static final LENGTH_DEVICE_NAME_MAX:I = 0x37

.field private static final LENGTH_DEVICE_NAME_MAX_HOMESYNC:I = 0x35

.field private static final PATH_DOWNLOAD_FOLDER_NAME:Ljava/lang/String; = "/Nearby"

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "pref_allshare"

.field public static final SHARE_AUDIO_FLAG:I = 0xff

.field public static final SHARE_IMAGE_FLAG:I = 0xff0000

.field private static final SHARE_VALUE_MUSIC:Ljava/lang/String; = "2"

.field private static final SHARE_VALUE_PHOTOS:Ljava/lang/String; = "1"

.field private static final SHARE_VALUE_VIDEOS:Ljava/lang/String; = "0"

.field public static final SHARE_VIDEO_FLAG:I = 0xff00

.field private static final TAGClass:Ljava/lang/String; = "NearbyEnabler"

.field private static final TEXT_DEVICE_TYPE_CAMERA:Ljava/lang/String; = "[Camera]"

.field private static final TEXT_DEVICE_TYPE_HOMESYNC:Ljava/lang/String; = "[HomeSync]"

.field private static final TEXT_DEVICE_TYPE_MOBILE:Ljava/lang/String; = "[Mobile]"

.field private static final TEXT_DEVICE_TYPE_TABLET:Ljava/lang/String; = "[Tablet]"

.field private static final TEXT_SHOW_ACCESS_CONTROL:Ljava/lang/String; = "*#@&*#"

.field private static final UPLOAD_ALWAYS_ASK:Ljava/lang/String; = "1"


# instance fields
.field private isBroadcastRegistered:Z

.field private isResumeState:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

.field private final mNearbyAcceptList:Landroid/preference/MultiSelectListPreference;

.field private final mNearbyDeviceName:Landroid/preference/PreferenceScreen;

.field private final mNearbyDownloadOption:Landroid/preference/ListPreference;

.field private final mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

.field private final mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

.field private mNearbySwitch:Landroid/widget/Switch;

.field private mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

.field private mPreferenceChangeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/preference/Preference$OnPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceChangeThread:Landroid/os/HandlerThread;

.field private mPreferenceChangeWorker:Landroid/os/Handler;

.field private mServiceConn:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 139
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    .line 203
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    .line 205
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;

    .line 458
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    .line 499
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    .line 501
    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$3;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    .line 743
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z

    .line 774
    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$4;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$4;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 140
    const-string v0, "NearbyEnabler"

    const-string v1, "NearbyEnabler"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    .line 142
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    .line 143
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    .line 144
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDeviceName:Landroid/preference/PreferenceScreen;

    .line 145
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    .line 146
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyAcceptList:Landroid/preference/MultiSelectListPreference;

    .line 148
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    .line 149
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    .line 151
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->initEnabler()V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreferenceScreen;)V
    .locals 4
    .parameter "context"
    .parameter "nearbyScreen"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 169
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    .line 203
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    .line 205
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;

    .line 458
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    .line 499
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    .line 501
    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$3;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    .line 743
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z

    .line 774
    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$4;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$4;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 170
    const-string v0, "NearbyEnabler"

    const-string v1, "NearbyEnabler"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    .line 172
    iput-object p2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    .line 173
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    .line 174
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDeviceName:Landroid/preference/PreferenceScreen;

    .line 175
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    .line 176
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyAcceptList:Landroid/preference/MultiSelectListPreference;

    .line 178
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    .line 179
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    .line 181
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->initEnabler()V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 4
    .parameter "context"
    .parameter "nearbySwitch"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 154
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    .line 203
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    .line 205
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;

    .line 458
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    .line 499
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    .line 501
    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$3;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    .line 743
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z

    .line 774
    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$4;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$4;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 155
    const-string v0, "NearbyEnabler"

    const-string v1, "NearbyEnabler"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    .line 157
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    .line 158
    iput-object p2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    .line 159
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDeviceName:Landroid/preference/PreferenceScreen;

    .line 160
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    .line 161
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyAcceptList:Landroid/preference/MultiSelectListPreference;

    .line 163
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    .line 164
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    .line 166
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->initEnabler()V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/preference/PreferenceScreen;Landroid/preference/MultiSelectListPreference;Landroid/preference/MultiSelectListPreference;Landroid/preference/MultiSelectListPreference;Lcom/android/settings/nearby/DownloadListPreference;Landroid/preference/ListPreference;)V
    .locals 4
    .parameter "context"
    .parameter "nearbySwitch"
    .parameter "deviceName"
    .parameter "sharedContents"
    .parameter "acceptList"
    .parameter "rejectList"
    .parameter "downloadTo"
    .parameter "downloadFrom"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 187
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    .line 203
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    .line 205
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;

    .line 458
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    .line 499
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    .line 501
    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$3;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$3;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    .line 743
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z

    .line 774
    new-instance v0, Lcom/android/settings/nearby/NearbyEnabler$4;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbyEnabler$4;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 188
    const-string v0, "NearbyEnabler"

    const-string v1, "NearbyEnabler"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    .line 190
    iput-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    .line 191
    iput-object p2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    .line 192
    iput-object p3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDeviceName:Landroid/preference/PreferenceScreen;

    .line 193
    iput-object p4, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    .line 194
    iput-object p5, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyAcceptList:Landroid/preference/MultiSelectListPreference;

    .line 196
    iput-object p7, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    .line 197
    iput-object p8, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    .line 199
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->initEnabler()V

    .line 200
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/nearby/NearbyEnabler;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/nearby/NearbyEnabler;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/nearby/NearbyEnabler;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDeviceName:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/nearby/NearbyEnabler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getExernalSdPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/nearby/NearbyEnabler;Ljava/util/HashSet;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/nearby/NearbyEnabler;->getListString(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/nearby/NearbyEnabler;)Lcom/android/settings/nearby/IMediaServer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/IMediaServer;)Lcom/android/settings/nearby/IMediaServer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/nearby/NearbyEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->setCheckedState()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/nearby/NearbyEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->setDefaultValues()V

    return-void
.end method

.method private checkDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "deviceName"

    .prologue
    .line 679
    const-string v5, "NearbyEnabler"

    const-string v6, "checkDeviceName"

    invoke-static {v5, v6, p1}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    move-object v4, p1

    .line 684
    .local v4, modifiedName:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 685
    const-string v5, "/"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 686
    .local v0, changedName:Ljava/lang/String;
    move-object p1, v0

    .line 687
    const-string v5, "NearbyEnabler"

    const-string v6, "checkDeviceName"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remove all \'/\': "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    .end local v0           #changedName:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .line 696
    .local v3, maxLength:I
    const/16 v3, 0x37

    .line 699
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v3, :cond_1

    .line 700
    const/4 v5, 0x0

    const/16 v6, 0x36

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 701
    const-string v5, "NearbyEnabler"

    const-string v6, "checkDeviceName"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "substring for MAX length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    :cond_1
    :try_start_0
    const-string v1, "[Mobile]"

    .line 708
    .local v1, deviceType:Ljava/lang/String;
    const-string v5, "NONE"

    const-string v6, "NONE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 710
    const-string v5, "NearbyEnabler"

    const-string v6, "checkDeviceName"

    const-string v7, "Featured device: NONE"

    invoke-static {v5, v6, v7}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string v1, "[NONE]"

    .line 726
    :cond_2
    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 727
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 740
    .end local v1           #deviceType:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 721
    .restart local v1       #deviceType:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v6, 0x258

    if-lt v5, v6, :cond_2

    .line 722
    const-string v5, "NearbyEnabler"

    const-string v6, "checkDeviceName"

    const-string v7, "TABLET Device"

    invoke-static {v5, v6, v7}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string v1, "[Tablet]"

    goto :goto_0

    .line 729
    :cond_4
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 730
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 732
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const v7, 0x7f090f72

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_1

    .line 735
    .end local v1           #deviceType:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 736
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "NearbyEnabler"

    const-string v6, "checkDeviceName"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getDownloadOption()Ljava/lang/String;
    .locals 5

    .prologue
    .line 604
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const-string v3, "pref_allshare"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 607
    .local v0, sharedPreference:Landroid/content/SharedPreferences;
    const-string v2, "allshare_download_from"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 610
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 613
    :cond_0
    return-object v1
.end method

.method private getDownloadPath()Ljava/lang/String;
    .locals 6

    .prologue
    .line 559
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getDownloadTo()Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, flag:Ljava/lang/String;
    const/4 v1, 0x0

    .line 563
    .local v1, path:Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 564
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Nearby"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 565
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "NearbyDownloadTo"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    :goto_0
    move-object v3, v1

    .line 588
    :goto_1
    return-object v3

    .line 566
    :cond_1
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 567
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const-string v4, "storage"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 569
    .local v2, storageManager:Landroid/os/storage/StorageManager;
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getExernalSdPath()Ljava/lang/String;

    move-result-object v1

    .line 571
    const-string v3, "mounted"

    invoke-virtual {v2, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 572
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getExernalSdPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Nearby"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 573
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "NearbyDownloadTo"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 575
    :cond_2
    const-string v3, "NearbyEnabler"

    const-string v4, "getDownloadPath"

    const-string v5, "No External Volume: Change to Internal"

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Nearby"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 578
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "NearbyDownloadTo"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 579
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    if-eqz v3, :cond_0

    .line 580
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    const-string v4, "0"

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/nearby/NearbyEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 584
    .end local v2           #storageManager:Landroid/os/storage/StorageManager;
    :cond_3
    const-string v3, "NearbyEnabler"

    const-string v4, "getDownloadPath"

    const-string v5, "HandleSetUploadPath has incorrect value"

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method private getDownloadTo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 592
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const-string v3, "pref_allshare"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 594
    .local v0, sharedPreference:Landroid/content/SharedPreferences;
    const-string v2, "allshare_download_to"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 596
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    if-eqz v2, :cond_0

    .line 597
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/nearby/DownloadListPreference;->setValue(Ljava/lang/String;)V

    .line 600
    :cond_0
    return-object v1
.end method

.method private getExernalSdPath()Ljava/lang/String;
    .locals 11

    .prologue
    .line 539
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 541
    .local v4, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 543
    .local v5, storageVolumes:[Landroid/os/storage/StorageVolume;
    move-object v0, v5

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .line 544
    .local v6, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v7

    const-string v8, "sd"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 545
    const-string v7, "NearbyEnabler"

    const-string v8, "getExernalSdPath"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ExternalSD path:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 554
    .end local v0           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #storageManager:Landroid/os/storage/StorageManager;
    .end local v5           #storageVolumes:[Landroid/os/storage/StorageVolume;
    .end local v6           #volume:Landroid/os/storage/StorageVolume;
    :goto_1
    return-object v7

    .line 543
    .restart local v0       #arr$:[Landroid/os/storage/StorageVolume;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #storageManager:Landroid/os/storage/StorageManager;
    .restart local v5       #storageVolumes:[Landroid/os/storage/StorageVolume;
    .restart local v6       #volume:Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 550
    .end local v0           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #storageManager:Landroid/os/storage/StorageManager;
    .end local v5           #storageVolumes:[Landroid/os/storage/StorageVolume;
    .end local v6           #volume:Landroid/os/storage/StorageVolume;
    :catch_0
    move-exception v1

    .line 551
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "NearbyEnabler"

    const-string v8, "getExernalSdPath"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 554
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private getListString(Ljava/util/HashSet;)Ljava/lang/String;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 1094
    :cond_0
    const/4 v0, 0x0

    .line 1104
    :goto_0
    return-object v0

    .line 1096
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1098
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1100
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1102
    const-string v0, "*--*"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1104
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSharedContent()I
    .locals 9

    .prologue
    .line 617
    const/4 v1, 0x0

    .line 620
    .local v1, flag:I
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v6}, Lcom/android/settings/nearby/IMediaServer;->getSharedMediaType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 625
    :goto_0
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const-string v7, "pref_allshare"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 628
    .local v4, sharedPreference:Landroid/content/SharedPreferences;
    const-string v6, "allshare_shared_contents"

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 631
    .local v3, sharedContents:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 632
    const-string v6, "NearbyEnabler"

    const-string v7, "getSharedContent"

    const-string v8, "Init SharedContent Value"

    invoke-static {v6, v7, v8}, Lcom/android/settings/nearby/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 634
    .local v5, temp:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 635
    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 636
    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 637
    move-object v3, v5

    .line 640
    .end local v5           #temp:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    if-eqz v6, :cond_1

    .line 641
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 644
    :cond_1
    if-eqz v3, :cond_2

    .line 646
    const-string v6, "0"

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 647
    const v6, 0xff00

    or-int/2addr v1, v6

    .line 653
    :goto_1
    const-string v6, "1"

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 654
    const/high16 v6, 0xff

    or-int/2addr v1, v6

    .line 660
    :goto_2
    const-string v6, "2"

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 661
    or-int/lit16 v1, v1, 0xff

    .line 668
    :cond_2
    :goto_3
    return v1

    .line 621
    .end local v3           #sharedContents:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #sharedPreference:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 622
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 649
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v3       #sharedContents:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4       #sharedPreference:Landroid/content/SharedPreferences;
    :cond_3
    const v2, -0xff01

    .line 650
    .local v2, mask:I
    and-int/2addr v1, v2

    goto :goto_1

    .line 656
    .end local v2           #mask:I
    :cond_4
    const v2, -0xff0001

    .line 657
    .restart local v2       #mask:I
    and-int/2addr v1, v2

    goto :goto_2

    .line 663
    .end local v2           #mask:I
    :cond_5
    const/16 v2, -0x100

    .line 664
    .restart local v2       #mask:I
    and-int/2addr v1, v2

    goto :goto_3
.end method

.method private initChangePreferenceHandler()V
    .locals 5

    .prologue
    .line 461
    const-string v1, "NearbyEnabler"

    const-string v2, "initChangePreferenceHandler"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "nearby_settings"

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$HandleServerStart;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbyEnabler$HandleServerStart;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_shared_contents"

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$HandleShareContentType;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbyEnabler$HandleShareContentType;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_device_name"

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$HandleServerName;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbyEnabler$HandleServerName;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_download_from"

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$HandleAllowUpload;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbyEnabler$HandleAllowUpload;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_download_to"

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbyEnabler$HandleSetUploadPath;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_accept_device"

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$HandleAcceptDevice;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbyEnabler$HandleAcceptDevice;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_reject_device"

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$HandleRejectDevice;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbyEnabler$HandleRejectDevice;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Lcom/android/settings/nearby/NearbyEnabler$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_0
    return-void

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NearbyEnabler"

    const-string v2, "initChangePreferenceHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initEnabler()V
    .locals 5

    .prologue
    .line 210
    const-string v1, "NearbyEnabler"

    const-string v2, "initEnabler"

    const-string v3, "Start new DMS Serivce"

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->startDmsService()V

    .line 215
    :try_start_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Preference Change Worker"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    .line 216
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 217
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->initChangePreferenceHandler()V

    .line 225
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NearbyEnabler"

    const-string v2, "InitEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception on Thread :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isServerStarted()Z
    .locals 2

    .prologue
    .line 820
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-eqz v1, :cond_0

    .line 821
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v1}, Lcom/android/settings/nearby/IMediaServer;->isServerStarted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 826
    :goto_0
    return v1

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 826
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWifiConnected()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 830
    iget-object v5, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 832
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 833
    .local v2, netInfo:Landroid/net/NetworkInfo;
    const/16 v5, 0xd

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 836
    .local v3, netInfoP2p:Landroid/net/NetworkInfo;
    const/4 v0, 0x0

    .line 847
    .local v0, bEthernetConnected:Z
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 848
    if-nez v0, :cond_0

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 857
    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private registerBroadcastReceiver()V
    .locals 5

    .prologue
    .line 746
    const-string v1, "NearbyEnabler"

    const-string v2, ""

    const-string v3, "setBroadcastReceiver()"

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z

    if-nez v1, :cond_0

    .line 749
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.settings.allshare.SERVER_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 752
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 755
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    :cond_0
    :goto_0
    return-void

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NearbyEnabler"

    const-string v2, "registerBroadcastReceiver"

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

.method private requestRestartServerPopup()V
    .locals 5

    .prologue
    .line 886
    const-string v0, "NearbyEnabler"

    const-string v1, "requestRestartServerPopup"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    :try_start_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f090f72

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f090f7e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090f68

    new-instance v2, Lcom/android/settings/nearby/NearbyEnabler$9;

    invoke-direct {v2, p0}, Lcom/android/settings/nearby/NearbyEnabler$9;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090f69

    new-instance v2, Lcom/android/settings/nearby/NearbyEnabler$8;

    invoke-direct {v2, p0}, Lcom/android/settings/nearby/NearbyEnabler$8;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/nearby/NearbyEnabler$7;

    invoke-direct {v1, p0}, Lcom/android/settings/nearby/NearbyEnabler$7;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    :goto_0
    return-void

    .line 918
    :catch_0
    move-exception v0

    .line 919
    const-string v1, "NearbyEnabler"

    const-string v2, "requestRestartServerPopup"

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

    .line 920
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private requestWifiSettingPopup()V
    .locals 5

    .prologue
    .line 861
    const-string v1, "NearbyEnabler"

    const-string v2, "requestWifiSettingPopup"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    :try_start_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f090f72

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f090f6a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090f68

    new-instance v3, Lcom/android/settings/nearby/NearbyEnabler$6;

    invoke-direct {v3, p0}, Lcom/android/settings/nearby/NearbyEnabler$6;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/nearby/NearbyEnabler$5;

    invoke-direct {v2, p0}, Lcom/android/settings/nearby/NearbyEnabler$5;-><init>(Lcom/android/settings/nearby/NearbyEnabler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :goto_0
    return-void

    .line 879
    :catch_0
    move-exception v0

    .line 880
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NearbyEnabler"

    const-string v2, "requestWifiSettingPopup"

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

    .line 881
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setCheckedState()V
    .locals 3

    .prologue
    .line 246
    const-string v0, "NearbyEnabler"

    const-string v1, "setCheckedState"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-nez v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->isServerStarted()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 252
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->isServerStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->isServerStarted()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->isServerStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method private setDefaultValues()V
    .locals 8

    .prologue
    .line 228
    const-string v5, "NearbyEnabler"

    const-string v6, "setDefaultValues"

    const-string v7, ""

    invoke-static {v5, v6, v7}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getDownloadPath()Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, downloadPath:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getDownloadOption()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, downloadOption:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, deviceName:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->getSharedContent()I

    move-result v4

    .line 236
    .local v4, flag:I
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v5, v4}, Lcom/android/settings/nearby/IMediaServer;->setSharedMediaType(I)V

    .line 237
    iget-object v5, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v5, v0}, Lcom/android/settings/nearby/IMediaServer;->setMediaServerName(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    iget-object v5, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v5, v2}, Lcom/android/settings/nearby/IMediaServer;->setUploadPath(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    iget-object v5, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v5, v1}, Lcom/android/settings/nearby/IMediaServer;->setContentUploadAllowed(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v3

    .line 241
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private startDmsService()V
    .locals 6

    .prologue
    .line 488
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.nearby.MediaServer.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 490
    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "NearbyEnabler"

    const-string v3, "startDmsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception on bind service:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private unregisterBroadcastReceiver()V
    .locals 5

    .prologue
    .line 763
    const-string v1, "NearbyEnabler"

    const-string v2, "unregisterBroadcastReceiver"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z

    if-eqz v1, :cond_0

    .line 766
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbyEnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 767
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isBroadcastRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 769
    :catch_0
    move-exception v0

    .line 770
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "NearbyEnabler"

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
.method public getAcceptEntry()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1109
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v3}, Lcom/android/settings/nearby/IMediaServer;->getAcceptEntry()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1115
    :goto_0
    return-object v2

    .line 1110
    :catch_0
    move-exception v0

    .line 1111
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1113
    .end local v0           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1114
    .local v1, e2:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAcceptEntryValue()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1121
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v3}, Lcom/android/settings/nearby/IMediaServer;->getAcceptEntryValue()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1127
    :goto_0
    return-object v2

    .line 1122
    :catch_0
    move-exception v0

    .line 1123
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1125
    .end local v0           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1126
    .local v1, e2:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 672
    const-string v0, "NearbyEnabler"

    const-string v1, "getDeviceName"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/nearby/NearbyEnabler;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRejectList()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1133
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v3}, Lcom/android/settings/nearby/IMediaServer;->getRejectList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1139
    :goto_0
    return-object v2

    .line 1134
    :catch_0
    move-exception v0

    .line 1135
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1137
    .end local v0           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1138
    .local v1, e2:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getRejectListValue()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1145
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v3}, Lcom/android/settings/nearby/IMediaServer;->getRejectListValue()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1151
    :goto_0
    return-object v2

    .line 1146
    :catch_0
    move-exception v0

    .line 1147
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1149
    .end local v0           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1150
    .local v1, e2:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .parameter "button"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 352
    const-string v4, "NearbyEnabler"

    const-string v5, "onCheckedChanged"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->isWifiConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 355
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->requestWifiSettingPopup()V

    .line 356
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 365
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-nez v4, :cond_3

    .line 366
    const-string v4, "NearbyEnabler"

    const-string v5, "onCheckedChanged"

    const-string v6, "Start new DMS Serivce"

    invoke-static {v4, v5, v6}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->startDmsService()V

    .line 371
    iget-object v4, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    if-nez p2, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 390
    :catch_0
    move-exception v1

    .line 391
    .local v1, e1:Landroid/os/RemoteException;
    const-string v3, "NearbyEnabler"

    const-string v4, "onCheckedChanged"

    const-string v5, "RemoteException: "

    invoke-static {v3, v4, v5, v1}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 392
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 373
    .end local v1           #e1:Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v3}, Lcom/android/settings/nearby/IMediaServer;->isServerStarted()Z

    move-result v3

    if-eq v3, p2, :cond_4

    .line 374
    const-string v3, "NearbyEnabler"

    const-string v4, "onCheckedChanged"

    const-string v5, "Change State to:"

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 377
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v4, "nearby_settings"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 379
    .local v2, handler:Landroid/preference/Preference$OnPreferenceChangeListener;
    if-eqz v2, :cond_0

    .line 380
    iget-object v3, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;

    new-instance v4, Lcom/android/settings/nearby/NearbyEnabler$1;

    invoke-direct {v4, p0, v2, p2}, Lcom/android/settings/nearby/NearbyEnabler$1;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Landroid/preference/Preference$OnPreferenceChangeListener;Z)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 393
    .end local v2           #handler:Landroid/preference/Preference$OnPreferenceChangeListener;
    :catch_1
    move-exception v0

    .line 394
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "NearbyEnabler"

    const-string v4, "onCheckedChanged"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception on run: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 388
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_2
    const-string v3, "NearbyEnabler"

    const-string v4, "onCheckedChanged"

    const-string v5, "Change check state"

    invoke-static {v3, v4, v5}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 402
    const-string v6, "NearbyEnabler"

    const-string v7, "onPreferenceChange"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    instance-of v6, p2, Ljava/lang/Boolean;

    if-ne v6, v5, :cond_3

    .line 406
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->isWifiConnected()Z

    move-result v6

    if-nez v6, :cond_1

    .line 407
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->requestWifiSettingPopup()V

    .line 408
    iget-object v5, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 454
    :cond_0
    :goto_0
    return v4

    .line 411
    :cond_1
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 435
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 440
    .local v1, handler:Landroid/preference/Preference$OnPreferenceChangeListener;
    if-eqz v1, :cond_0

    .line 441
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mPreferenceChangeWorker:Landroid/os/Handler;

    new-instance v7, Lcom/android/settings/nearby/NearbyEnabler$2;

    invoke-direct {v7, p0, v1, p1, p2}, Lcom/android/settings/nearby/NearbyEnabler$2;-><init>(Lcom/android/settings/nearby/NearbyEnabler;Landroid/preference/Preference$OnPreferenceChangeListener;Landroid/preference/Preference;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 448
    goto :goto_0

    .line 415
    .end local v1           #handler:Landroid/preference/Preference$OnPreferenceChangeListener;
    .end local v2           #key:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyAcceptList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 416
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->isServerStarted()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 417
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->requestRestartServerPopup()V

    goto :goto_1

    .line 421
    :cond_4
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 422
    const-string v6, "NearbyEnabler"

    const-string v7, "onPreferenceChange"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mNearbyDownloadTo: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {v6}, Lcom/android/settings/nearby/DownloadListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v3, v6, v7

    check-cast v3, Ljava/lang/String;

    .line 425
    .local v3, summary:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {v6, v3}, Lcom/android/settings/nearby/DownloadListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 428
    .end local v3           #summary:Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 429
    const-string v6, "NearbyEnabler"

    const-string v7, "onPreferenceChange"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mNearbyDownloadOption: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v3, v6, v7

    check-cast v3, Ljava/lang/String;

    .line 432
    .restart local v3       #summary:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {v6, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 450
    .end local v3           #summary:Ljava/lang/String;
    .restart local v1       #handler:Landroid/preference/Preference$OnPreferenceChangeListener;
    .restart local v2       #key:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 451
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "NearbyEnabler"

    const-string v6, "onPreferenceChange"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception run: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/settings/nearby/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 315
    const-string v1, "NearbyEnabler"

    const-string v2, "pause"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v1}, Lcom/android/settings/nearby/IMediaServer;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 331
    :cond_1
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_2

    .line 332
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 335
    :cond_2
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    if-eqz v1, :cond_3

    .line 336
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 339
    :cond_3
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    if-eqz v1, :cond_4

    .line 340
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {v1, v5}, Lcom/android/settings/nearby/DownloadListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 343
    :cond_4
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    if-eqz v1, :cond_5

    .line 344
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 347
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->unregisterBroadcastReceiver()V

    .line 348
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "NearbyEnabler"

    const-string v2, "pause"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public reannounceServer()V
    .locals 2

    .prologue
    .line 477
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-eqz v1, :cond_0

    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v1}, Lcom/android/settings/nearby/IMediaServer;->reannounceServer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    .prologue
    .line 273
    const-string v1, "NearbyEnabler"

    const-string v2, "resume"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    .line 278
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-eqz v1, :cond_5

    .line 279
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v1}, Lcom/android/settings/nearby/IMediaServer;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 297
    :cond_1
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    if-eqz v1, :cond_2

    .line 298
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySharedContents:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 301
    :cond_2
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    if-eqz v1, :cond_3

    .line 302
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/nearby/DownloadListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 305
    :cond_3
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    if-eqz v1, :cond_4

    .line 306
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbyDownloadOption:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 309
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->registerBroadcastReceiver()V

    .line 311
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->setCheckedState()V

    .line 312
    return-void

    .line 281
    :cond_5
    :try_start_1
    const-string v1, "NearbyEnabler"

    const-string v2, "resume"

    const-string v3, "Start new DMS Serivce"

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->startDmsService()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "NearbyEnabler"

    const-string v2, "resume"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 3
    .parameter "nearbySwitch"

    .prologue
    .line 261
    const-string v0, "NearbyEnabler"

    const-string v1, "setSwitch"

    invoke-virtual {p1}, Landroid/widget/Switch;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/nearby/DLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    if-eqz p1, :cond_0

    .line 264
    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    .line 265
    iget-boolean v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->isResumeState:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/settings/nearby/NearbyEnabler;->mNearbySwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 267
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbyEnabler;->setCheckedState()V

    .line 270
    :cond_0
    return-void
.end method
