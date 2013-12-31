.class public Lcom/android/settings/wfd/WfdPickerActivity;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# static fields
.field private static mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private static mWfdAlreadyEnabled:Z

.field private static mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# instance fields
.field private final ACTION_ALLSHARE_CAST_START:Ljava/lang/String;

.field private final ACTION_WFD_RESTART:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final TEST:Ljava/lang/Boolean;

.field private TICKS_PER_SEC:J

.field private TOT_CONNECT_TIME:I

.field private TOT_CONNECT_TIME_MS:J

.field private bShowInternalHelp:Z

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivityStartedByAllShare:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAlreadyTurnedOn:Z

.field private mAutoConnStartedFromInv:Z

.field private mAutoConnectDialog:Landroid/app/AlertDialog;

.field private mAutoConnectSysProp:Ljava/lang/String;

.field private mCanShake:Z

.field private mCastEndConnect:Landroid/view/MenuItem;

.field private mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

.field mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectingDialogCalled:Z

.field private mConnectionRetriesLeft:I

.field private final mConnectionTimeout:Ljava/lang/Runnable;

.field private mControlByWfdService:I

.field private mCurDialog:Landroid/app/AlertDialog;

.field private mCurMenuType:I

.field private mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field mCurrentWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mEditDeviceName:Landroid/widget/EditText;

.field private mEmptyMessage:Landroid/widget/TextView;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableControlByWfdService:Z

.field private mErrorHandlingDialog:Landroid/app/AlertDialog;

.field private mInPickerDialog:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsConnectRequestedFlag:Z

.field private mIsHotspotOn:Z

.field private mIsP2pBusyDialogCalled:Z

.field private mIsPaused:Z

.field private mIsTablet:Z

.field private mLastConnectDeviceAddr:Ljava/lang/String;

.field private mLastConnectDeviceName:Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mMenuItemHelp:Landroid/view/MenuItem;

.field private mMenuItemScanStop:Landroid/view/MenuItem;

.field private mMotionHandler:Landroid/os/Handler;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mMultiPaneSwitch:Landroid/preference/SwitchPreference;

.field private mNfcWriteMode:Z

.field private mNoDeviceImage:Landroid/widget/ImageView;

.field private mNoDeviceText:Landroid/widget/TextView;

.field private mNotNfcEntry:Z

.field private mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mPeersConnected:Landroid/preference/PreferenceGroup;

.field private mPeersGroup:Lcom/android/settings/ProgressCategory;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRtspTimeout:Ljava/lang/Runnable;

.field private mSRController:Lcom/sec/android/app/screenrecorder/remote/SRServiceController;

.field private mScanningTimer:Landroid/os/CountDownTimer;

.field private mTempSsid:Ljava/lang/String;

.field private mTerminatedFlag:Z

.field private mTickCount:I

.field private mWFDDialogState:I

.field private mWFDSettingState:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWfdDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mWfdEnabled:Z

.field private mWfdManager:Lcom/samsung/wfd/WfdManager;

.field private mWfdState:I

.field mWfdSwitchCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

.field mWfdSwitchOkListener:Landroid/content/DialogInterface$OnClickListener;

.field private mWfdTerminateDialog:Landroid/app/AlertDialog;

.field private final wfdStateArr:[Ljava/lang/String;

.field wfdTerminateCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field wfdTerminateOkListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    sput-object v1, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 205
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdAlreadyEnabled:Z

    .line 211
    sput-object v1, Lcom/android/settings/wfd/WfdPickerActivity;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 122
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 125
    const-string v0, "WfdPickerActivity"

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TAG:Ljava/lang/String;

    .line 126
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TEST:Ljava/lang/Boolean;

    .line 139
    iput v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurMenuType:I

    .line 148
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 151
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 152
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 154
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    .line 155
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    .line 156
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    .line 165
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    .line 177
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WFD_PICKER_STATE_UNKNOWN"

    aput-object v1, v0, v4

    const-string v1, "WFD_PICKER_STATE_DISABLED"

    aput-object v1, v0, v5

    const-string v1, "WFD_PICKER_STATE_ENABLED"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "WFD_PICKER_STATE_SCANNING"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "WFD_PICKER_STATE_CONNECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "WFD_PICKER_STATE_ESTABLISHED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WFD_PICKER_STATE_SCANSTOP"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "WFD_PICKER_STATE_DISCONNECTED"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->wfdStateArr:[Ljava/lang/String;

    .line 184
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TOT_CONNECT_TIME:I

    .line 185
    const-wide/32 v0, 0x9c40

    iput-wide v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TOT_CONNECT_TIME_MS:J

    .line 186
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TICKS_PER_SEC:J

    .line 188
    iput v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 190
    iput v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I

    .line 192
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdEnabled:Z

    .line 193
    iput v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdState:I

    .line 194
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTerminatedFlag:Z

    .line 195
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    .line 196
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 197
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    .line 198
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    .line 199
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsConnectRequestedFlag:Z

    .line 200
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    .line 201
    iput-boolean v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsPaused:Z

    .line 202
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsHotspotOn:Z

    .line 203
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsP2pBusyDialogCalled:Z

    .line 204
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNotNfcEntry:Z

    .line 206
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAlreadyTurnedOn:Z

    .line 207
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    .line 209
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 210
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 219
    const-string v0, "com.samsung.wfd.PICK_WFD_NETWORK"

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->ACTION_WFD_RESTART:Ljava/lang/String;

    .line 220
    const-string v0, "com.sec.android.allshare.intent.action.CAST_START"

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->ACTION_ALLSHARE_CAST_START:Ljava/lang/String;

    .line 230
    iput v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTickCount:I

    .line 231
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    .line 233
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 234
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 235
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    .line 236
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->bShowInternalHelp:Z

    .line 238
    iput v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDDialogState:I

    .line 239
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 240
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    .line 241
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    .line 242
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    .line 243
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    .line 245
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    .line 246
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    .line 247
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    .line 249
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    .line 250
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mListView:Landroid/widget/ListView;

    .line 252
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    .line 256
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    .line 258
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 262
    iput-boolean v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCanShake:Z

    .line 264
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mSRController:Lcom/sec/android/app/screenrecorder/remote/SRServiceController;

    .line 265
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    .line 267
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    .line 270
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 272
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTempSsid:Ljava/lang/String;

    .line 274
    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdPickerActivity$1;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 557
    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdPickerActivity$2;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 575
    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdPickerActivity$3;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionHandler:Landroid/os/Handler;

    .line 1590
    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$8;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdPickerActivity$8;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->wfdTerminateOkListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1611
    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$9;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdPickerActivity$9;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->wfdTerminateCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2942
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2943
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2946
    iput v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectionRetriesLeft:I

    .line 2952
    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$27;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdPickerActivity$27;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectionTimeout:Ljava/lang/Runnable;

    .line 2964
    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$28;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdPickerActivity$28;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mRtspTimeout:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->showDisableToast()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAlreadyTurnedOn:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/settings/wfd/WfdPickerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->cancelWfdConnect()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/settings/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/settings/wfd/WfdPickerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/settings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsP2pBusyDialogCalled:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsP2pBusyDialogCalled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/wfd/WfdPickerActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->setDialogListener(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsHotspotOn:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsHotspotOn:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/settings/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPowerSavingMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/settings/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getCPUPowerSavingMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/settings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isHotspotOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->setLastConnectedDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCanShake:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/hardware/motion/MotionRecognitionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/hardware/motion/MRListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/android/settings/wfd/WfdSwitchEnabler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->setPowerSavingMode(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->turnOnScreenMirroring()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400()Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$402(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    sput-object p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/android/settings/wfd/WfdPickerActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->setDeviceName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/settings/wfd/WfdPickerActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/settings/wfd/WfdPickerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->getNfcDevAddrFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/settings/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDDialogState:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/settings/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTickCount:I

    return v0
.end method

.method static synthetic access$4610(Lcom/android/settings/wfd/WfdPickerActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 122
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTickCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTickCount:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->displayConnectionFailed()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/settings/wfd/WfdPickerActivity;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->cancelConnecting()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/settings/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->finishScanDevice(I)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/settings/wfd/WfdPickerActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->handleConnectionFailure(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->removeAutoConnectDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdState:I

    return v0
.end method

.method private addActionsTo(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter

    .prologue
    .line 979
    const-string v0, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 981
    const-string v0, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 982
    const-string v0, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 983
    const-string v0, "android.intent.action.WIFIDISPLAY_CONTROL_FROM_SERVICE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 985
    const-string v0, "com.samsung.wfd.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 986
    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 987
    const-string v0, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 989
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 990
    return-void
.end method

.method private addMessagePreference(I)V
    .locals 2
    .parameter

    .prologue
    .line 2656
    const-string v0, "WfdPickerActivity"

    const-string v1, "addMessagePreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 2658
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2659
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2660
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    .line 2661
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2665
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v0, :cond_1

    .line 2666
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2667
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2668
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2670
    :cond_1
    return-void
.end method

.method private autoConnecting()V
    .locals 5

    .prologue
    .line 3032
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsConnectRequestedFlag:Z

    .line 3034
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_1

    .line 3035
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connecting to Wifi display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 3039
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-nez v0, :cond_0

    .line 3040
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 3041
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 3048
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    .line 3050
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 3051
    sget-object v2, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v4, Lcom/android/settings/wfd/WfdPickerActivity$29;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity$29;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 3083
    :goto_1
    return-void

    .line 3043
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->makePinConnConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    .line 3044
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->setDialogListener(Z)V

    goto :goto_0

    .line 3082
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    goto :goto_1
.end method

.method private cancelConnecting()V
    .locals 3

    .prologue
    .line 2346
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDDialogState:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2347
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 2348
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const v1, 0x7f09048d

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setTitle(I)V

    .line 2349
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 2350
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 2351
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2353
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 2355
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->cancelWfdConnect()V

    .line 2356
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    .line 2357
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->cancelConnect()V

    .line 2359
    :cond_0
    return-void
.end method

.method private cancelWfdConnect()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2385
    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsConnectRequestedFlag:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 2389
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-ne v0, v4, :cond_1

    .line 2390
    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect if (isWfdConnected() == true)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 2447
    :cond_0
    :goto_0
    return-void

    .line 2394
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2395
    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect if (isP2pConnected() && isWfdConnected() == false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WfdPickerActivity$23;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WfdPickerActivity$23;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 2415
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 2417
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    goto :goto_0

    .line 2420
    :cond_2
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WfdPickerActivity$24;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WfdPickerActivity$24;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 2431
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 2433
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->clearLastConnectedDeviceInfo()V

    .line 2435
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 2436
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 2437
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2438
    invoke-direct {p0, v4}, Lcom/android/settings/wfd/WfdPickerActivity;->setDialogListener(Z)V

    .line 2439
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V

    goto :goto_0
.end method

.method private clearLastConnectedDeviceInfo()V
    .locals 2

    .prologue
    .line 2513
    const-string v0, "WfdPickerActivity"

    const-string v1, "clearLastConnectedDeviceInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2516
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 2517
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 2519
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->putLastConnectedDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2521
    return-void
.end method

.method private connectByNFC(Landroid/net/wifi/p2p/WifiP2pDevice;Lcom/android/settings/wifi/p2p/WifiP2pPeer;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1898
    invoke-direct {p0, p3}, Lcom/android/settings/wfd/WfdPickerActivity;->getNfcDevAddrFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 1899
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1902
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device is found in the list device name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1904
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1906
    invoke-direct {p0, p2}, Lcom/android/settings/wfd/WfdPickerActivity;->startWifiDisplayTo(Lcom/android/settings/wifi/p2p/WifiP2pPeer;)V

    .line 1908
    :cond_0
    return-void
.end method

.method private connectLastConnection(Landroid/net/wifi/p2p/WifiP2pDevice;Lcom/android/settings/wifi/p2p/WifiP2pPeer;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1890
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1891
    invoke-direct {p0, p2}, Lcom/android/settings/wfd/WfdPickerActivity;->startWifiDisplayTo(Lcom/android/settings/wifi/p2p/WifiP2pPeer;)V

    .line 1893
    :cond_1
    return-void
.end method

.method private createAutoConnectDialog()Landroid/app/AlertDialog;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2246
    const-string v0, "WfdPickerActivity"

    const-string v1, "createAutoConnectDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    .line 2250
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2251
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    const v2, 0x7f0904c8

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 2259
    const v1, 0x7f0401a7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2263
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 2265
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 2267
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v6}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 2269
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TOT_CONNECT_TIME:I

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTickCount:I

    .line 2271
    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$19;

    iget-wide v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TOT_CONNECT_TIME_MS:J

    iget-wide v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TICKS_PER_SEC:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wfd/WfdPickerActivity$19;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;JJ)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    .line 2284
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 2286
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    .line 2287
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->autoConnecting()V

    .line 2288
    iput-boolean v6, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    .line 2291
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/wfd/WfdPickerActivity$20;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WfdPickerActivity$20;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2317
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    const v2, 0x7f09074e

    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wfd/WfdPickerActivity$21;

    invoke-direct {v3, p0}, Lcom/android/settings/wfd/WfdPickerActivity$21;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2327
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/wfd/WfdPickerActivity$22;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WfdPickerActivity$22;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2342
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private createDongleRenameDialog()Landroid/app/AlertDialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1952
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/text/InputFilter;

    .line 1953
    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$12;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdPickerActivity$12;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    aput-object v0, v1, v4

    .line 1975
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1976
    const v2, 0x7f0401db

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1977
    const v0, 0x7f0b04d4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    .line 1978
    const v0, 0x7f0b0536

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1979
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1980
    const v0, 0x7f0b0537

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1981
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1982
    const-string v3, "~`!@$%^&*()-_=+[];:\'\",<.>/?"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1985
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1986
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    const/16 v3, 0x4000

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 1987
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1988
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    .line 1989
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1992
    :cond_0
    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$13;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdPickerActivity$13;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 2004
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 2005
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 2006
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2008
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0904f2

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09074d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wfd/WfdPickerActivity$15;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity$15;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09074e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wfd/WfdPickerActivity$14;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity$14;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2034
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2035
    new-instance v1, Lcom/android/settings/wfd/WfdPickerActivity$16;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WfdPickerActivity$16;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2042
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2044
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 2045
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    new-instance v3, Lcom/android/settings/wfd/WfdPickerActivity$17;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity$17;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/widget/Button;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2084
    return-object v0
.end method

.method private createErrorHandlingDialog(I)Landroid/app/AlertDialog;
    .locals 4
    .parameter

    .prologue
    .line 2187
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createErrorHandlingDialog << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    .line 2189
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0904c8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 2191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2193
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 2194
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0904cb

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2201
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    const v2, 0x7f09074d

    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wfd/WfdPickerActivity$18;

    invoke-direct {v3, p0}, Lcom/android/settings/wfd/WfdPickerActivity$18;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2219
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    return-object v0

    .line 2196
    :cond_1
    const/16 v0, 0xe

    if-ne p1, v0, :cond_0

    .line 2197
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0904cc

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private createWfdTerminateDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2168
    const-string v0, "WfdPickerActivity"

    const-string v1, "createWfdTerminateDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    .line 2171
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0904c8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 2173
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0904ca

    invoke-virtual {p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2176
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    const v2, 0x7f09074d

    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2179
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    const v2, 0x7f09074e

    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2182
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private static createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .locals 5
    .parameter "device"

    .prologue
    .line 3003
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private displayConnectionFailed()V
    .locals 2

    .prologue
    .line 2231
    const-string v0, "WfdPickerActivity"

    const-string v1, "displayConnectionFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 2234
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->removeAutoConnectDialog()V

    .line 2236
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->cancelWfdConnect()V

    .line 2237
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 2238
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 2242
    :cond_0
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    .line 2243
    return-void
.end method

.method private finishScanDevice(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2851
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishScanDevice << result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 2855
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 2856
    const-string v0, "WfdPickerActivity"

    const-string v1, "mWfdDeviceList is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    :cond_0
    :goto_0
    return-void

    .line 2860
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2861
    const-string v0, "WfdPickerActivity"

    const-string v1, "finishScanDevice GetActivity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2865
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 2866
    packed-switch p1, :pswitch_data_0

    .line 2894
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check the reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2897
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v4}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 2899
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 2901
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_4

    .line 2902
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->changeToScan()V

    .line 2903
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 2904
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2905
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2912
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdSwitchEnabler;->isSwitchChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2913
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2914
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2868
    :pswitch_0
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scan timer expired! peer list num is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->getNfcDevAddrFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 2873
    const-string v1, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nfc dev info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2875
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->displayConnectionFailed()V

    goto/16 :goto_1

    .line 2880
    :pswitch_1
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverPeers received onFailure! peer list num is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2882
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2883
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v4}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    goto/16 :goto_0

    .line 2889
    :pswitch_2
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverPeers cancel! peer list num is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2917
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 2920
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v4}, Lcom/android/settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 2922
    iget-object v1, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->isWifiDisplayDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->isWifiBusy(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2924
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2926
    :cond_6
    const-string v1, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoconnect prop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2932
    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->startWifiDisplayTo(Lcom/android/settings/wifi/p2p/WifiP2pPeer;)V

    goto/16 :goto_0

    .line 2866
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCPUPowerSavingMode()I
    .locals 4

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_cpu_clock"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 634
    .local v0, iCpuPowerSavinge:I
    return v0
.end method

.method private getLastConnectedDeviceInfo()V
    .locals 4

    .prologue
    .line 2450
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "WfdPickerActivity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2452
    const-string v1, "wlan.wfd.lastdevicename"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2454
    const-string v2, "wlan.wfd.lastdeviceaddr"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2457
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 2458
    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 2461
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 2462
    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 2465
    :cond_1
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastConnectedDeviceInfo Last n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    return-void
.end method

.method private getNfcDevAddrFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1911
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->getNdefMessages(Landroid/content/Intent;)[Landroid/nfc/NdefMessage;

    move-result-object v0

    .line 1912
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1914
    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v1

    .line 1915
    const-string v0, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connecting by nfc dev addr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 1920
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPowerSavingMode()I
    .locals 4

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "psm_switch"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getPreviousWifiState()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2106
    .line 2107
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_0

    .line 2109
    :try_start_0
    const-string v0, "com.samsung.wfd.WfdManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2110
    const-string v2, "getPreviousWifiState"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2111
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2112
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2120
    :goto_0
    return v0

    .line 2114
    :catch_0
    move-exception v0

    .line 2115
    const-string v2, "WfdPickerActivity"

    const-string v3, "this method is not supported for this model"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private handleConnectionFailure(Z)V
    .locals 2
    .parameter

    .prologue
    .line 2978
    const-string v0, "WfdPickerActivity"

    const-string v1, "Wifi display connection failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    .line 2981
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectionRetriesLeft:I

    if-lez v0, :cond_0

    .line 2982
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 3000
    :cond_0
    return-void
.end method

.method private handleIntentActions(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 935
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 936
    const-string v1, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current action is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    .line 940
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    .line 942
    if-eqz v0, :cond_1

    .line 943
    const-string v1, "com.sec.android.allshare.intent.action.CAST_START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.samsung.wfd.PICK_WFD_NETWORK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 945
    :cond_0
    iput-boolean v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    .line 951
    :cond_1
    :goto_0
    return-void

    .line 946
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.wfd.SELECT_DEV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 947
    iput-boolean v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    goto :goto_0
.end method

.method private initConnectedDevUI(Landroid/preference/PreferenceScreen;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1869
    const-string v0, "WfdPickerActivity"

    const-string v1, "show connected devices"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1873
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1874
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1876
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const v1, 0x7f09048e

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 1877
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1879
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 1881
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1882
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1884
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1885
    return-void
.end method

.method private initMemberVariables()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 811
    const-string v0, "WfdPickerActivity"

    const-string v1, "Initializing member variables"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/wfd/WfdPickerDialog;

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    .line 814
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    .line 815
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInPickerDialog:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_0
    iput v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I

    .line 818
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    .line 819
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 820
    iput v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDDialogState:I

    .line 821
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsConnectRequestedFlag:Z

    .line 822
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCanShake:Z

    .line 824
    const-string v0, "wlan.wfd.autoconnect"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    .line 825
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProp wlan.wfd.autoconnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const-string v0, "com.samsung.helphub"

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->isPackageExists(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->bShowInternalHelp:Z

    .line 829
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isNotNfcEntry()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNotNfcEntry:Z

    .line 831
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->addActionsTo(Landroid/content/IntentFilter;)V

    .line 832
    return-void
.end method

.method private initUI()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 905
    const v0, 0x7f0700bb

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->addPreferencesFromResource(I)V

    .line 907
    const-string v0, "allsharecast_available"

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ProgressCategory;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    .line 908
    const-string v0, "allsharecast_connected"

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    .line 909
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 911
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setIgnoreNoDevice(Z)V

    .line 912
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setIgnoreMessage(Z)V

    .line 914
    const-string v0, "allsharecast_switch"

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    .line 916
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    .line 917
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 920
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 921
    instance-of v1, v0, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_1

    .line 922
    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 924
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 925
    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    .line 931
    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->setHasOptionsMenu(Z)V

    .line 932
    return-void

    .line 927
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    goto :goto_0
.end method

.method private isDongleRenameAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2088
    .line 2089
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_0

    .line 2091
    :try_start_0
    const-string v0, "com.samsung.wfd.WfdManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2092
    const-string v2, "isDongleRenameAvailable"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2093
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2094
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2102
    :goto_0
    return v0

    .line 2096
    :catch_0
    move-exception v0

    .line 2097
    const-string v2, "WfdPickerActivity"

    const-string v3, "this method is not supported for this model"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isHotspotOn()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3149
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 3151
    if-nez v0, :cond_0

    move v0, v1

    .line 3165
    :goto_0
    return v0

    .line 3155
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 3165
    goto :goto_0

    .line 3159
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3155
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isNotNfcEntry()Z
    .locals 2

    .prologue
    .line 851
    .line 853
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 854
    if-eqz v0, :cond_0

    .line 855
    const/4 v0, 0x0

    .line 857
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isP2pConnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3170
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3173
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3176
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v2, :cond_0

    .line 3177
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pConnected >> true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    const/4 v0, 0x1

    .line 3187
    :goto_0
    return v0

    .line 3180
    :cond_0
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pConnected >> false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 3181
    goto :goto_0

    .line 3183
    :catch_0
    move-exception v0

    .line 3184
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pConnected - NullPointerException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 3187
    goto :goto_0
.end method

.method private isP2pEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3192
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3195
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3198
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3199
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pEnabled >> true!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3200
    const/4 v0, 0x1

    .line 3209
    :goto_0
    return v0

    .line 3202
    :cond_0
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pEnabled >> false!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 3203
    goto :goto_0

    .line 3205
    :catch_0
    move-exception v0

    .line 3206
    const-string v0, "WfdPickerActivity"

    const-string v2, "isP2pEnabled - NullPointerException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 3209
    goto :goto_0
.end method

.method private static isPrimarySinkDeviceType(I)Z
    .locals 2
    .parameter "deviceType"

    .prologue
    const/4 v0, 0x1

    .line 3085
    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiBusy(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 3
    .parameter

    .prologue
    .line 3097
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3099
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckItemWifiBusy >> ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is busy device"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3101
    const/4 v0, 0x1

    .line 3103
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiDisplayDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 1
    .parameter "dev"

    .prologue
    .line 3090
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isSessionAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isWfdEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->isPrimarySinkDeviceType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makePinConnConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 3
    .parameter

    .prologue
    .line 2374
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 2375
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makePinConnConfig << n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 2379
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v1, 0x2

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 2380
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    return-object v0
.end method

.method private printWfdSettingState()V
    .locals 3

    .prologue
    .line 2524
    const-string v0, "printWfdSettingState << curr WFDState is "

    .line 2525
    iget v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v2, 0x7

    if-gt v1, v2, :cond_0

    .line 2526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->wfdStateArr:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2531
    :goto_0
    const-string v1, "WfdPickerActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    return-void

    .line 2528
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown! curr WFDState is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private putLastConnectedDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2496
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "WfdPickerActivity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2498
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2500
    const-string v1, "wlan.wfd.lastdevicename"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2501
    const-string v1, "wlan.wfd.lastdeviceaddr"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2503
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2505
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastConnectedDeviceInfo Last n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2510
    :goto_0
    return-void

    .line 2507
    :catch_0
    move-exception v0

    .line 2508
    const-string v0, "WfdPickerActivity"

    const-string v1, "putLastConnectedDeviceInfo - NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeAutoConnectDialog()V
    .locals 1

    .prologue
    .line 2362
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 2363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 2364
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->removeDialog(I)V

    .line 2365
    return-void
.end method

.method private retrieveServiceManagers()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 863
    const-string v0, "WfdPickerActivity"

    const-string v1, "Retrieving Service Managers"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const-string v0, "WfdPickerActivity"

    const-string v1, "try to getSystemService WIFI_DISPLAY_SERVICE..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const-string v0, "wifip2p"

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    sput-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 868
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_3

    .line 869
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 872
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_0

    .line 873
    const-string v0, "WfdPickerActivity"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    sput-object v4, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 881
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 884
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_1

    .line 885
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setDialogListener(Z)V

    .line 887
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cause"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 889
    packed-switch v0, :pswitch_data_0

    .line 895
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 897
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_2

    .line 899
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->setWfdEnabled()V

    .line 902
    :cond_2
    return-void

    .line 878
    :cond_3
    const-string v0, "WfdPickerActivity"

    const-string v1, "mWifiP2pManager is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 891
    :pswitch_0
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    goto :goto_1

    .line 889
    nop

    :pswitch_data_0
    .packed-switch 0x22077
        :pswitch_0
    .end packed-switch
.end method

.method private scanDevice()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x3

    .line 2761
    const-string v0, "WfdPickerActivity"

    const-string v1, "scanDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2764
    const-string v0, "WfdPickerActivity"

    const-string v1, "scanDevice GetActivity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    :cond_0
    :goto_0
    return-void

    .line 2768
    :cond_1
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-ne v0, v3, :cond_2

    .line 2769
    const-string v0, "WfdPickerActivity"

    const-string v1, "already scanning devices"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2773
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 2774
    const-string v0, "WfdPickerActivity"

    const-string v1, "wfd state is WFD_STATE_DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2778
    :cond_3
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 2779
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTickCount:I

    .line 2781
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 2783
    const-string v0, "WfdPickerActivity"

    const-string v1, "remove current device list!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 2786
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 2787
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const v1, 0x7f09048d

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setTitle(I)V

    .line 2788
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v5}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 2790
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2792
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v0, :cond_4

    .line 2793
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2794
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2797
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2798
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2800
    invoke-direct {p0, v3}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 2801
    iput v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurMenuType:I

    .line 2802
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_5

    .line 2803
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->changeToStop()V

    .line 2806
    :cond_5
    new-instance v0, Lcom/android/settings/wfd/WfdPickerActivity$25;

    const-wide/16 v2, 0x2710

    iget-wide v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TICKS_PER_SEC:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wfd/WfdPickerActivity$25;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;JJ)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    .line 2816
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 2819
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 2824
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2828
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2829
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_0

    .line 2825
    :catch_0
    move-exception v0

    .line 2826
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 2833
    :cond_6
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/16 v2, 0x64b

    new-instance v3, Lcom/android/settings/wfd/WfdPickerActivity$26;

    invoke-direct {v3, p0}, Lcom/android/settings/wfd/WfdPickerActivity$26;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_0
.end method

.method private setAllShareCastSwitch()V
    .locals 8

    .prologue
    const/16 v4, 0x10

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 1019
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1020
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    .line 1022
    instance-of v0, v1, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 1023
    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1024
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1026
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1029
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v6, v6, v2, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 1030
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->requestFocus()Z

    .line 1031
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1034
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v7, v7, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 1042
    :cond_1
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1043
    new-instance v0, Lcom/android/settings/wfd/WfdSwitchEnabler;

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/wfd/WfdSwitchEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;Lcom/android/settings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    .line 1050
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mListView:Landroid/widget/ListView;

    .line 1051
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    .line 1052
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 1054
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 1056
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_6

    .line 1058
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->updateScreenOnEnabled()V

    .line 1065
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getDisplayDeviceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getDisplayDeviceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1067
    :cond_3
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 1068
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdManager;->getDisplayDeviceAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 1069
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdManager;->getDisplayDeviceName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1070
    iput v6, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1071
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 1072
    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1073
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setLastConnectedDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1076
    :cond_4
    return-void

    .line 1045
    :cond_5
    new-instance v0, Lcom/android/settings/wfd/WfdSwitchEnabler;

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/wfd/WfdSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/settings/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    goto/16 :goto_0

    .line 1061
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->updateScreenOnDisabled()V

    goto :goto_1
.end method

.method private setCastMenu(I)V
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f020335

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2673
    const-string v0, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCastMenu in with menuType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 2677
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    if-nez v3, :cond_3

    .line 2678
    :cond_0
    const-string v0, "WfdPickerActivity"

    const-string v1, "setCastMenu menu item is not created yet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2758
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    :cond_2
    move v0, v2

    .line 2675
    goto :goto_0

    .line 2682
    :cond_3
    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v3, :cond_1

    .line 2684
    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_8

    .line 2685
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2686
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2693
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "launch_from_help"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2694
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2697
    :cond_6
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 2702
    :pswitch_1
    const-string v2, "WfdPickerActivity"

    const-string v3, "MENU_TYPE_SCAN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v2, :cond_7

    if-eqz v0, :cond_9

    .line 2704
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v2, 0x7f0200d6

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2705
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2713
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2714
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v2, 0x7f09049c

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2716
    iput p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurMenuType:I

    goto :goto_1

    .line 2688
    :cond_8
    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v3, :cond_5

    .line 2689
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2690
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2

    .line 2709
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 2710
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_3

    .line 2720
    :pswitch_2
    const-string v2, "WfdPickerActivity"

    const-string v3, "MENU_TYPE_SCAN_STOP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v2, :cond_a

    if-eqz v0, :cond_b

    .line 2722
    :cond_a
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v2, 0x7f0200d8

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2723
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2731
    :goto_4
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2732
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v2, 0x7f090791

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2734
    iput p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurMenuType:I

    .line 2736
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    goto/16 :goto_1

    .line 2727
    :cond_b
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 2728
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_4

    .line 2740
    :pswitch_3
    const-string v3, "WfdPickerActivity"

    const-string v4, "MENU_TYPE_ENDCONNECT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v3, :cond_c

    if-eqz v0, :cond_e

    .line 2742
    :cond_c
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    const v3, 0x7f0200d2

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2743
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2744
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    :goto_5
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2749
    :goto_6
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2750
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v3

    if-eqz v3, :cond_f

    :goto_7
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2751
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    const v2, 0x7f09049d

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_d
    move v0, v1

    .line 2744
    goto :goto_5

    .line 2746
    :cond_e
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 2747
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_6

    :cond_f
    move v2, v1

    .line 2750
    goto :goto_7

    .line 2697
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setDeviceName(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 2125
    :try_start_0
    const-string v0, "com.samsung.wfd.WfdManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2126
    const-string v1, "setDeviceName"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2127
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2133
    :goto_0
    return-void

    .line 2129
    :catch_0
    move-exception v0

    .line 2130
    const-string v1, "WfdPickerActivity"

    const-string v2, "this method is not supported for this model"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setDialogListener(Z)V
    .locals 3
    .parameter "option"

    .prologue
    .line 1924
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1925
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WfdPickerActivity$11;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WfdPickerActivity$11;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setDialogListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;)V

    .line 1948
    :goto_0
    return-void

    .line 1946
    :cond_0
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setDialogListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;)V

    goto :goto_0
.end method

.method private setLastConnectedDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2471
    if-nez p1, :cond_1

    .line 2472
    const-string v0, "WfdPickerActivity"

    const-string v1, "setLastConnectedDeviceInfo if (mP2pDevice == null) initialize!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 2475
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 2490
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->putLastConnectedDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2492
    return-void

    .line 2477
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 2479
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 2483
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2485
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    goto :goto_0
.end method

.method private setPowerSavingMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    const/4 v3, -0x2

    invoke-static {v1, v2, p1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 624
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 625
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 626
    return-void
.end method

.method private showDisableToast()V
    .locals 3

    .prologue
    .line 1294
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1299
    return-void
.end method

.method private startWifiDisplayTo(Lcom/android/settings/wifi/p2p/WifiP2pPeer;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 3008
    const-string v0, "WfdPickerActivity"

    const-string v1, "startwifidisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 3010
    iget-object v0, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 3012
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 3013
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 3014
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    if-eqz v0, :cond_1

    .line 3015
    const-string v0, "WfdPickerActivity"

    const-string v1, "startwifidisplay without ui"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    .line 3017
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->autoConnecting()V

    .line 3029
    :cond_0
    :goto_0
    return-void

    .line 3019
    :cond_1
    const-string v0, "WfdPickerActivity"

    const-string v1, "startwifidisplay with ui"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3020
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsPaused:Z

    if-eqz v0, :cond_2

    .line 3021
    const-string v0, "WfdPickerActivity"

    const-string v1, "activity already paused! we don\'t need to create this dialog...skip!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3024
    :cond_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 3025
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    goto :goto_0
.end method

.method private stopConnectingCountDown()V
    .locals 1

    .prologue
    .line 2368
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 2369
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 2371
    :cond_0
    return-void
.end method

.method private terminateWfdActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1302
    const-string v0, "WfdPickerActivity"

    const-string v1, "terminateWfdActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 1305
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1307
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTerminatedFlag:Z

    if-ne v0, v2, :cond_1

    .line 1352
    :cond_0
    :goto_0
    return-void

    .line 1310
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mTerminatedFlag:Z

    .line 1313
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1314
    const-string v0, "WfdPickerActivity"

    const-string v1, "terminateWfdActivity >> Since the wfd state is established, do not terminate WfdManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1317
    :cond_2
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I

    sparse-switch v0, :sswitch_data_0

    .line 1333
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no problem! << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1339
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1340
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1341
    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1343
    :cond_3
    const-string v0, "WfdPickerActivity"

    const-string v1, "lock release!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I

    .line 1347
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    .line 1349
    const-string v0, "WfdPickerActivity"

    const-string v1, "terminateWfdActivity >> Wi-Fi Wfd Terminate ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1322
    :sswitch_0
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "terminateWfdActivity >> picker is finished by WfdService! cause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1317
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x1e -> :sswitch_0
        0x28 -> :sswitch_0
        0x32 -> :sswitch_0
    .end sparse-switch
.end method

.method private turnOnScreenMirroring()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 638
    const-string v0, "WfdPickerActivity"

    const-string v1, "AllShare Cast is turned on..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAlreadyTurnedOn:Z

    if-nez v0, :cond_0

    .line 640
    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAlreadyTurnedOn:Z

    .line 641
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 642
    sput-boolean v2, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdAlreadyEnabled:Z

    .line 646
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isHotspotOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsHotspotOn:Z

    .line 647
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0, v2}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    .line 649
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdMode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 651
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->setWfdModeAlways()V

    .line 653
    :cond_1
    return-void
.end method


# virtual methods
.method finishWfdPickerDialog()V
    .locals 2

    .prologue
    .line 601
    const-string v0, "WfdPickerActivity"

    const-string v1, "finishWfdPickerDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->finish()V

    .line 603
    return-void
.end method

.method getNdefMessages(Landroid/content/Intent;)[Landroid/nfc/NdefMessage;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 955
    .line 957
    const-string v1, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 958
    if-eqz v3, :cond_1

    .line 959
    array-length v1, v3

    new-array v2, v1, [Landroid/nfc/NdefMessage;

    move v1, v0

    .line 960
    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_0

    .line 961
    aget-object v0, v3, v1

    check-cast v0, Landroid/nfc/NdefMessage;

    aput-object v0, v2, v1

    .line 960
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 975
    :goto_1
    return-object v0

    .line 965
    :cond_1
    new-array v1, v0, [B

    .line 966
    new-instance v2, Landroid/nfc/NdefRecord;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v1, v1, v1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 967
    new-instance v3, Landroid/nfc/NdefMessage;

    new-array v1, v4, [Landroid/nfc/NdefRecord;

    aput-object v2, v1, v0

    invoke-direct {v3, v1}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 970
    new-array v1, v4, [Landroid/nfc/NdefMessage;

    aput-object v3, v1, v0

    move-object v0, v1

    goto :goto_1
.end method

.method handleP2pStateChanged(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2581
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleP2pStateChanged with state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    .line 2584
    iput p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdState:I

    .line 2585
    packed-switch p1, :pswitch_data_0

    .line 2652
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2589
    :pswitch_1
    const-string v0, "WfdPickerActivity"

    const-string v1, " onReceive << WIFI_P2P_STATE_DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    .line 2591
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdEnabled:Z

    .line 2593
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->updateScreenOnDisabled()V

    .line 2595
    invoke-direct {p0, v6}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 2596
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 2598
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_1

    .line 2599
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2601
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 2602
    invoke-direct {p0, v4}, Lcom/android/settings/wfd/WfdPickerActivity;->setDialogListener(Z)V

    .line 2603
    iput v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    goto :goto_0

    .line 2607
    :pswitch_2
    const-string v0, "WfdPickerActivity"

    const-string v1, " onReceive << WIFI_P2P_STATE_ENABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    iput-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdEnabled:Z

    .line 2610
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-ne v0, v5, :cond_2

    .line 2611
    const-string v0, "WfdPickerActivity"

    const-string v1, "Wfd state is already established, don\'t need to set Wfd state enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2615
    :cond_2
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 2616
    iput v6, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 2617
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->updateScreenOnEnabled()V

    .line 2620
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2621
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    if-eqz v0, :cond_4

    .line 2622
    const-string v0, "WfdPickerActivity"

    const-string v1, "wait... scanDevice is called next time! received on WfdManager.WIFIDISPLAY_CONTROL_FROM_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    .line 2625
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->changeToScan()V

    goto :goto_0

    .line 2629
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V

    goto :goto_0

    .line 2633
    :cond_5
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 2634
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_0

    .line 2640
    :pswitch_3
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-eq v0, v5, :cond_0

    .line 2641
    iput v5, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    goto :goto_0

    .line 2585
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isPackageExists(Ljava/lang/String;)Z
    .locals 6
    .parameter "targetPackage"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 835
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 837
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 838
    .local v1, info:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget v5, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne v5, v4, :cond_0

    .line 846
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return v3

    .line 840
    .restart local v1       #info:Landroid/content/pm/PackageInfo;
    :cond_0
    if-eqz v1, :cond_1

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    move v3, v4

    .line 841
    goto :goto_0

    .line 843
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 844
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #info:Landroid/content/pm/PackageInfo;
    :cond_1
    move v3, v4

    .line 846
    goto :goto_0
.end method

.method isWfdConnected()Z
    .locals 3

    .prologue
    .line 3108
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_0

    .line 3109
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWfdConnected status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 3112
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3126
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 3116
    :pswitch_0
    const-string v0, "WfdPickerActivity"

    const-string v1, "isWfdConnected >> true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3117
    const/4 v0, 0x1

    goto :goto_1

    .line 3120
    :cond_1
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWfdConnected >> false - getWfdState current state - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3112
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isWiFiConnected()Z
    .locals 2

    .prologue
    .line 3131
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3133
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3141
    :goto_0
    return v0

    .line 3137
    :catch_0
    move-exception v0

    .line 3138
    const-string v0, "WfdPickerActivity"

    const-string v1, "isWiFiConnected - NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 1012
    const-string v0, "WfdPickerActivity"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->setAllShareCastSwitch()V

    .line 1015
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1016
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1693
    const-string v0, "WfdPickerActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurMenuType:I

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1697
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1698
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1699
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1700
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1703
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdEnabled:Z

    if-nez v0, :cond_2

    .line 1704
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 1705
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1708
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1709
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 1532
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1533
    const-string v0, "WfdPickerActivity"

    const-string v1, "MENU_ID_PIN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 1535
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 1536
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1537
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->autoConnecting()V

    .line 1540
    :cond_0
    const-string v0, "WfdPickerActivity"

    const-string v1, "user press to connect!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    const/4 v0, 0x1

    .line 1547
    :goto_0
    return v0

    .line 1542
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1544
    const-string v0, "WfdPickerActivity"

    const-string v1, "user press to rename!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    .line 1547
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 759
    const-string v2, "WfdPickerActivity"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 763
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 764
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 765
    .local v1, intent:Landroid/content/Intent;
    const v2, 0x7f10002d

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setTheme(I)V

    .line 767
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->TEST:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 781
    :cond_0
    if-nez v1, :cond_1

    .line 782
    const-string v2, "WfdPickerActivity"

    const-string v3, "intent is null! check!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->finish()V

    .line 808
    :goto_0
    return-void

    .line 787
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 788
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.wfd.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 789
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.wfd.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 791
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 792
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 793
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 794
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 796
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.WIFIDISPLAY_CONTROL_FROM_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 799
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->initMemberVariables()V

    .line 801
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->retrieveServiceManagers()V

    .line 803
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getLastConnectedDeviceInfo()V

    .line 805
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->initUI()V

    .line 807
    invoke-direct {p0, v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->handleIntentActions(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1570
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_0

    .line 1571
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 1574
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    if-nez v1, :cond_1

    .line 1575
    instance-of v1, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v1, :cond_0

    .line 1576
    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 1577
    const/4 v0, 0x4

    const v1, 0x7f0904f1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1588
    :cond_0
    :goto_0
    return-void

    .line 1581
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isDongleRenameAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1582
    instance-of v0, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_0

    .line 1583
    const/4 v0, 0x5

    const v1, 0x7f0904f2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 1630
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    iput p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDDialogState:I

    .line 1635
    packed-switch p1, :pswitch_data_0

    .line 1657
    const/4 v0, 0x0

    .line 1687
    :goto_0
    return-object v0

    .line 1637
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->createAutoConnectDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1661
    :goto_1
    packed-switch p1, :pswitch_data_1

    .line 1666
    if-eqz v0, :cond_0

    .line 1667
    new-instance v1, Lcom/android/settings/wfd/WfdPickerActivity$10;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WfdPickerActivity$10;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1686
    :cond_0
    :pswitch_1
    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1640
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->wfdTerminateOkListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->wfdTerminateCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->createWfdTerminateDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1

    .line 1644
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->createErrorHandlingDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1

    .line 1648
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->createDongleRenameDialog()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1

    .line 1651
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchOkListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->createWfdTerminateDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_1

    .line 1635
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1661
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const v6, 0x7f020335

    const/4 v5, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1356
    const-string v0, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateOptionsMenu  NfcWriteMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v7, :cond_3

    move v0, v1

    .line 1359
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v3, :cond_2

    .line 1361
    const v3, 0x7f09049c

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdEnabled:Z

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    .line 1365
    const v3, 0x7f09049d

    invoke-interface {p1, v2, v7, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    .line 1369
    const/4 v3, 0x3

    const v4, 0x7f0904a1

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    .line 1373
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "launch_from_help"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1374
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1377
    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    if-eqz v3, :cond_1

    .line 1378
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1384
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 1385
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1386
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1392
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1394
    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v1, :cond_4

    .line 1395
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v1, 0x7f0200d6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1398
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    const v1, 0x7f0200d5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1401
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1402
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1403
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurMenuType:I

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1423
    :cond_2
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1424
    return-void

    :cond_3
    move v0, v2

    .line 1357
    goto/16 :goto_0

    .line 1388
    :catch_0
    move-exception v3

    .line 1389
    const-string v4, "WfdPickerActivity"

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1405
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1406
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1408
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1409
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1411
    if-eqz v0, :cond_5

    .line 1412
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v1, 0x7f0200d6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1413
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1414
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1415
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    const v1, 0x7f0200d5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1418
    :cond_5
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCastMenu mCurMenuType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurMenuType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurMenuType:I

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 994
    const-string v0, "WfdPickerActivity"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    const v0, 0x7f0401a9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 996
    const v0, 0x7f0b0475

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    .line 997
    const v0, 0x7f0b0474

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    .line 998
    const v0, 0x7f0b0476

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    .line 1000
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    const v2, 0x7f02030b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1001
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    const v2, 0x7f0911bb

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1002
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const v2, 0x7f0904cf

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1003
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const/high16 v2, 0x41b0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1005
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1007
    :cond_0
    return-object v1
.end method

.method public onDetach()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1217
    const-string v0, "WfdPickerActivity"

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    .line 1221
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1222
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1223
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1224
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1225
    const/16 v2, 0x12

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1226
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1227
    const-string v3, "stop"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1228
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1229
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 1248
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1250
    const-string v1, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1251
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tag_write_if_success"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1252
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tag_write_if_success"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1253
    const-string v1, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDetach writeIfSuccess="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/settings/wfd/WfdPickerActivity;->setDialogListener(Z)V

    .line 1264
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-eq v0, v5, :cond_6

    sget-boolean v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdAlreadyEnabled:Z

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1266
    const-string v0, "WfdPickerActivity"

    const-string v1, "onDetach mWFDSettingState != WFD_PICKER_STATE_DISABLED "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-eq v0, v6, :cond_2

    .line 1268
    const-string v0, "WfdPickerActivity"

    const-string v1, "onDetach P2p is on.. but wfd is not connected..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :cond_2
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getCPUPowerSavingMode()I

    move-result v0

    if-ne v0, v5, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPowerSavingMode()I

    move-result v0

    if-eq v0, v5, :cond_4

    .line 1271
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->showDisableToast()V

    .line 1273
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->terminateWfdActivity()V

    .line 1285
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWiFiConnected()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreviousWifiState()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1286
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1287
    if-eqz v0, :cond_5

    .line 1288
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1291
    :cond_5
    return-void

    .line 1277
    :cond_6
    sget-boolean v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdAlreadyEnabled:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-eq v0, v6, :cond_7

    .line 1278
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->showDisableToast()V

    .line 1279
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->terminateWfdActivity()V

    .line 1281
    :cond_7
    sput-boolean v4, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdAlreadyEnabled:Z

    .line 1282
    const-string v0, "WfdPickerActivity"

    const-string v1, "onDetach mWFDSettingState = WFD_PICKER_STATE_DISABLED already"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1450
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1527
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1452
    :pswitch_0
    const-string v0, "WfdPickerActivity"

    const-string v1, "MENU_ID_SCAN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09049c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1455
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1456
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1457
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V

    :cond_0
    :goto_1
    move v0, v7

    .line 1468
    goto :goto_0

    .line 1461
    :cond_1
    iput-boolean v6, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 1462
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->clearLastConnectedDeviceInfo()V

    .line 1464
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1466
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->finishScanDevice(I)V

    goto :goto_1

    .line 1470
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->bShowInternalHelp:Z

    if-nez v0, :cond_8

    .line 1473
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 1474
    if-eqz v0, :cond_4

    .line 1482
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-ne v0, v7, :cond_6

    .line 1483
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.samsung.wfd.WRITE_NFC"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1488
    :goto_2
    if-eqz v2, :cond_3

    .line 1490
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1491
    if-eqz v0, :cond_2

    const-string v1, "com.samsung.wfd.PICK_WFD_NETWORK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "noaction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1492
    :cond_2
    const-string v0, "called_by_settings"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1498
    :goto_3
    const/high16 v0, 0x400

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1499
    invoke-virtual {p0, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    move v0, v7

    .line 1501
    goto/16 :goto_0

    .line 1475
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v0, :cond_5

    .line 1476
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wfd/WfdHelpFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0904e1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_2

    .line 1479
    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.samsung.wfd.DP_HELP"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 1485
    :cond_6
    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.samsung.wfd.DP_HELP"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 1494
    :cond_7
    :try_start_1
    const-string v0, "called_by_settings"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1495
    :catch_0
    move-exception v0

    .line 1496
    const-string v1, "WfdPickerActivity"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1505
    :cond_8
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1506
    const-string v1, "helphub:section"

    const-string v2, "allshare_cast"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1507
    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    move v0, v7

    .line 1515
    goto/16 :goto_0

    .line 1508
    :catch_1
    move-exception v0

    .line 1509
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1510
    const-string v1, "com.sec.android.app.popupuireceiver"

    const-string v2, "com.sec.android.app.popupuireceiver.DisableApp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1512
    const-string v1, "app_package_name"

    const-string v2, "com.samsung.helphub"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1513
    invoke-virtual {p0, v0, v6}, Lcom/android/settings/wfd/WfdPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    .line 1519
    :pswitch_2
    const-string v0, "WfdPickerActivity"

    const-string v1, "MENU_ID_ENDCONNECT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1522
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    :cond_9
    move v0, v7

    .line 1524
    goto/16 :goto_0

    .line 1450
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1144
    const-string v0, "WfdPickerActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 1147
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 1148
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsPaused:Z

    .line 1150
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 1153
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1154
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 1155
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 1156
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.wfd.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1159
    :cond_1
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1162
    :cond_2
    iput-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    .line 1165
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    if-eqz v0, :cond_4

    .line 1166
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdSwitchEnabler;->pause()V

    .line 1168
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/settings/wfd/WfdPickerActivity;->setDialogListener(Z)V

    .line 1170
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1172
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 1173
    const-string v0, "WfdPickerActivity"

    const-string v1, "onPause stop peer Discovery in Scanning "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1176
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    if-eqz v0, :cond_5

    .line 1177
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v4}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 1178
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 1183
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-ne v0, v3, :cond_7

    .line 1184
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDDialogState:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    if-ne v0, v3, :cond_6

    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    .line 1187
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->cancelWfdConnect()V

    .line 1188
    const-string v0, "WfdPickerActivity"

    const-string v1, "onPause cancelWfdConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :cond_6
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDDialogState:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_7

    .line 1192
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1196
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1197
    const-string v0, "WfdPickerActivity"

    const-string v1, "onPause, stopPeerDiscovery if wfd not connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1202
    :cond_8
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1207
    :goto_0
    return-void

    .line 1203
    :catch_0
    move-exception v0

    .line 1204
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1732
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPeersAvailable, mConnectingDialogCalled : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 1734
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    if-eq v0, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsP2pBusyDialogCalled:Z

    if-eqz v0, :cond_2

    .line 1741
    :cond_0
    const-string v0, "WfdPickerActivity"

    const-string v1, "onPeersAvailable >> skip!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    :cond_1
    :goto_0
    return-void

    .line 1745
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1747
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1748
    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 1750
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/settings/ProgressCategory;->removeAll()V

    .line 1751
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1753
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1755
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const v3, 0x7f09048d

    invoke-virtual {v1, v3}, Lcom/android/settings/ProgressCategory;->setTitle(I)V

    .line 1756
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v4}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 1758
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1759
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1761
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1762
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1764
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_3

    .line 1765
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->changeToStop()V

    .line 1767
    :cond_3
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1768
    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWifiDisplayDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWifiBusy(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1769
    const-string v1, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device Name - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Address - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " peer.wfdDeviceType - "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    iget v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 1774
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1776
    new-instance v5, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v5, v1, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1777
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v1, v5}, Lcom/android/settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1782
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1783
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1784
    if-eqz v3, :cond_5

    .line 1785
    :try_start_1
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 1791
    :goto_2
    if-eqz v1, :cond_6

    const-string v6, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNotNfcEntry:Z

    if-nez v6, :cond_6

    .line 1792
    const-string v6, "WfdPickerActivity"

    const-string v7, "connect by nfc"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    invoke-direct {p0, v0, v5, v3, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->connectByNFC(Landroid/net/wifi/p2p/WifiP2pDevice;Lcom/android/settings/wifi/p2p/WifiP2pPeer;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1787
    :catch_0
    move-exception v1

    move-object v3, v2

    .line 1788
    :goto_3
    const-string v6, "WfdPickerActivity"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v1, v2

    goto :goto_2

    .line 1796
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1798
    const-string v1, "WfdPickerActivity"

    const-string v3, "connectLastConnection"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    invoke-direct {p0, v0, v5}, Lcom/android/settings/wfd/WfdPickerActivity;->connectLastConnection(Landroid/net/wifi/p2p/WifiP2pDevice;Lcom/android/settings/wifi/p2p/WifiP2pPeer;)V

    goto/16 :goto_1

    .line 1807
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->initConnectedDevUI(Landroid/preference/PreferenceScreen;)V

    .line 1809
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceList size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1813
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1815
    const-string v2, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connected item:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_a

    .line 1817
    iput v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1818
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    new-instance v3, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1820
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 1822
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1823
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1825
    :cond_9
    iput-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    goto :goto_4

    .line 1827
    :cond_a
    const-string v0, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check!! mPeersConnected.getPreferenceCount():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1835
    :cond_b
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_1

    .line 1836
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->finish()V

    goto/16 :goto_0

    .line 1787
    :catch_1
    move-exception v1

    goto/16 :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1553
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWfdConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bStartConnectingFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    if-nez v0, :cond_0

    .line 1556
    instance-of v0, p2, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 1557
    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 1558
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 1559
    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->startWifiDisplayTo(Lcom/android/settings/wifi/p2p/WifiP2pPeer;)V

    .line 1560
    const-string v0, "WfdPickerActivity"

    const-string v1, "user press to connect!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 1428
    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v1, :cond_0

    .line 1430
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1431
    .local v0, searchMenu:Landroid/view/MenuItem;
    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdEnabled:Z

    if-eqz v1, :cond_1

    .line 1432
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1446
    .end local v0           #searchMenu:Landroid/view/MenuItem;
    :cond_0
    :goto_0
    return-void

    .line 1434
    .restart local v0       #searchMenu:Landroid/view/MenuItem;
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    .line 1080
    const-string v0, "WfdPickerActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 1082
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 1084
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getLastConnectedDeviceInfo()V

    .line 1085
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsPaused:Z

    .line 1088
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1089
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1090
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1091
    const/16 v2, 0x12

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1092
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1093
    const-string v3, "stop"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1094
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1095
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 1098
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1100
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    if-eqz v0, :cond_1

    .line 1101
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdSwitchEnabler;->resume()V

    .line 1103
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCanShake:Z

    if-eqz v0, :cond_2

    .line 1104
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1, v8}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 1107
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_4

    .line 1108
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWFDSettingState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    .line 1111
    if-lt v0, v5, :cond_6

    .line 1113
    invoke-direct {p0, v6}, Lcom/android/settings/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1114
    iput v6, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mCurMenuType:I

    .line 1116
    sget-object v1, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_3

    .line 1117
    sget-object v1, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 1121
    :cond_3
    if-lt v0, v6, :cond_5

    .line 1122
    iput v7, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 1140
    :cond_4
    :goto_0
    return-void

    .line 1124
    :cond_5
    if-ne v0, v5, :cond_4

    .line 1125
    iput v7, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    goto :goto_0

    .line 1129
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings/wfd/WfdSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdSwitchEnabler;->isSwitchChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_7
    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-le v0, v5, :cond_8

    iget v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-le v0, v7, :cond_4

    .line 1133
    :cond_8
    iput v8, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 1134
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_9

    .line 1135
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerDialog;->changeToScan()V

    .line 1137
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1211
    const-string v0, "WfdPickerActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 1213
    return-void
.end method

.method public setAutoConnStarted()V
    .locals 1

    .prologue
    .line 2223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    .line 2224
    return-void
.end method

.method setWfdEnabled()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 657
    const-string v8, "WfdPickerActivity"

    const-string v9, "setWfdEnabled"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const-string v8, "wfd"

    invoke-virtual {p0, v8}, Lcom/android/settings/wfd/WfdPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/wfd/WfdManager;

    iput-object v8, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 660
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 661
    .local v2, context:Landroid/content/Context;
    iget-object v8, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v8, :cond_2

    .line 663
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getCPUPowerSavingMode()I

    move-result v8

    if-ne v8, v10, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPowerSavingMode()I

    move-result v8

    if-ne v8, v10, :cond_1

    .line 664
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screenMirroringPowerSaving_showNeverAgain"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 665
    .local v6, showNeverAgain:I
    const-string v8, "WfdPickerActivity"

    const-string v9, "Power saving mode and CPU power saving is enabled"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    if-nez v6, :cond_0

    .line 667
    const-string v8, "layout_inflater"

    invoke-virtual {v2, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 668
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f040053

    invoke-virtual {v3, v8, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 669
    .local v4, layout:Landroid/view/View;
    const v8, 0x7f0b00ee

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 670
    .local v1, check:Landroid/widget/CheckBox;
    const v8, 0x7f0b00ed

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 671
    .local v7, txtView:Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0904f5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0904c8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    new-instance v8, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v8}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 673
    new-instance v8, Lcom/android/settings/wfd/WfdPickerActivity$4;

    invoke-direct {v8, p0}, Lcom/android/settings/wfd/WfdPickerActivity$4;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 678
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0904e1

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f09072a

    new-instance v10, Lcom/android/settings/wfd/WfdPickerActivity$6;

    invoke-direct {v10, p0, v1, v2}, Lcom/android/settings/wfd/WfdPickerActivity$6;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/widget/CheckBox;Landroid/content/Context;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f090173

    new-instance v10, Lcom/android/settings/wfd/WfdPickerActivity$5;

    invoke-direct {v10, p0}, Lcom/android/settings/wfd/WfdPickerActivity$5;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 710
    .local v5, powerSavingDialog:Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 711
    new-instance v8, Lcom/android/settings/wfd/WfdPickerActivity$7;

    invoke-direct {v8, p0}, Lcom/android/settings/wfd/WfdPickerActivity$7;-><init>(Lcom/android/settings/wfd/WfdPickerActivity;)V

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 737
    .end local v1           #check:Landroid/widget/CheckBox;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    .end local v4           #layout:Landroid/view/View;
    .end local v5           #powerSavingDialog:Landroid/app/AlertDialog;
    .end local v6           #showNeverAgain:I
    .end local v7           #txtView:Landroid/widget/TextView;
    :goto_0
    iget-object v8, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v8, v13}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 738
    const-string v8, "WfdPickerActivity"

    const-string v9, "setWfdEnabled, unsuccessful, because of DPM"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v8, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v8}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    .line 755
    :goto_1
    return-void

    .line 722
    .restart local v6       #showNeverAgain:I
    :cond_0
    invoke-direct {p0, v12}, Lcom/android/settings/wfd/WfdPickerActivity;->setPowerSavingMode(I)V

    .line 723
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0904f6

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v2, v8, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 728
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->turnOnScreenMirroring()V

    goto :goto_0

    .line 731
    .end local v6           #showNeverAgain:I
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->turnOnScreenMirroring()V

    goto :goto_0

    .line 734
    :cond_2
    const-string v8, "WfdPickerActivity"

    const-string v9, "mWfdManager is null !"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 751
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.intent.action.WIFI_DISPLAY_ENABLED"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 752
    .local v0, actionIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public setWfdModeAlways()V
    .locals 3

    .prologue
    .line 2157
    :try_start_0
    const-string v0, "com.samsung.wfd.WfdManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2158
    const-string v1, "setWfdModeAlways"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2159
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2163
    :goto_0
    return-void

    .line 2160
    :catch_0
    move-exception v0

    .line 2161
    const-string v0, "WfdPickerActivity"

    const-string v1, "this method is not supported for this model"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWifiDisplayDeviceAddress(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 2137
    :try_start_0
    const-string v0, "com.samsung.wfd.WfdManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2138
    const-string v1, "setDisplayDeviceAddress"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2139
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2143
    :goto_0
    return-void

    .line 2140
    :catch_0
    move-exception v0

    .line 2141
    const-string v0, "WfdPickerActivity"

    const-string v1, "this method is not supported for this model"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWifiDisplayDeviceName(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 2147
    :try_start_0
    const-string v0, "com.samsung.wfd.WfdManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2148
    const-string v1, "setDisplayDeviceName"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2149
    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2153
    :goto_0
    return-void

    .line 2150
    :catch_0
    move-exception v0

    .line 2151
    const-string v0, "WfdPickerActivity"

    const-string v1, "this method is not supported for this model"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showDialogp(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 2227
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    .line 2228
    return-void
.end method

.method showWfdTerminateDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "okListener"
    .parameter "cancelListener"

    .prologue
    .line 1622
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchOkListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1623
    iput-object p2, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdSwitchCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1625
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V

    .line 1626
    return-void
.end method

.method startScanningWfdPickerDialog()V
    .locals 2

    .prologue
    .line 615
    const-string v0, "WfdPickerActivity"

    const-string v1, "startScanningWfdPickerDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V

    .line 619
    :cond_0
    return-void
.end method

.method stopScanningWfdPickerDialog(Z)V
    .locals 3
    .parameter "stopPeerDiscovery"

    .prologue
    .line 606
    const-string v0, "WfdPickerActivity"

    const-string v1, "stopScanningWfdPickerDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    if-eqz p1, :cond_0

    .line 608
    sget-object v0, Lcom/android/settings/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 610
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 611
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->finishScanDevice(I)V

    .line 612
    return-void
.end method

.method updateScreenOnDisabled()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 2536
    const-string v0, "WfdPickerActivity"

    const-string v1, "updateScreenOnDisabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 2538
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 2540
    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v1, :cond_0

    .line 2541
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2542
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2545
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2546
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2548
    iget-boolean v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_1

    .line 2549
    const v0, 0x7f0904cf

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdPickerActivity;->addMessagePreference(I)V

    .line 2551
    :cond_1
    return-void
.end method

.method updateScreenOnEnabled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2554
    const-string v0, "WfdPickerActivity"

    const-string v1, "updateScreenOnEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    invoke-virtual {p0}, Lcom/android/settings/wfd/WfdPickerActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 2557
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 2558
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 2562
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    const v2, 0x7f09048d

    invoke-virtual {v1, v2}, Lcom/android/settings/ProgressCategory;->setTitle(I)V

    .line 2563
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2565
    iget-boolean v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v1, :cond_0

    .line 2566
    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 2567
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2570
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2572
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2573
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2574
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2578
    :cond_0
    return-void
.end method
