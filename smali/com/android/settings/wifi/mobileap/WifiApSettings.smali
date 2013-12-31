.class public Lcom/android/settings/wifi/mobileap/WifiApSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiApSettings.java"


# static fields
.field private static final DBG:Z

.field private static mWifiApSettings:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final MHS_REQUEST:I

.field private bDisableMifi:Z

.field private isNoHotSpotModeWarningShown:Z

.field private isRoaming:Z

.field private isShowPassword:I

.field private key_compare:I

.field mAllowedMenuItem:Landroid/view/MenuItem;

.field public mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field mConfigureMenuItem:Landroid/view/MenuItem;

.field private mConnectedDevices:Landroid/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mContinueOpen:Z

.field private mDeviceInfo:Landroid/preference/PreferenceScreen;

.field private mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

.field private mDisabledHelp:Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

.field private mDismissDialog:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mHowTo:Landroid/preference/Preference;

.field private mHowToCategory:Landroid/preference/PreferenceCategory;

.field private mIsTablet:Z

.field private mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenType:Z

.field private mSelectedTimeoutValue:I

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSsidPreference:Landroid/preference/Preference;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPref:Landroid/preference/SwitchPreference;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTempConfig:Landroid/net/wifi/WifiConfiguration;

.field private mView:Landroid/view/View;

.field private mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private misLightTheme:Z

.field phoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 104
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->DBG:Z

    .line 188
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 191
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 133
    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->MHS_REQUEST:I

    .line 135
    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 136
    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    .line 137
    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 138
    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->key_compare:I

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    .line 166
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->bDisableMifi:Z

    .line 182
    iput v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isShowPassword:I

    .line 184
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isRoaming:Z

    .line 185
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    .line 186
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    .line 189
    iput-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    .line 363
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 728
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$10;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 819
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$14;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$14;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 192
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    .line 193
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Lcom/android/settings/wifi/WifiApDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/mobileap/WifiApSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getRvfMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getTimeoutValueFromIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->compareWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/wifi/mobileap/WifiApSettings;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$2402(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setTimeout(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/settings/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    return-void
.end method

.method private compareWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 3
    .parameter "oldConfig"
    .parameter "newConfig"
    .parameter "index"

    .prologue
    const/4 v0, 0x1

    .line 1072
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1073
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->channel:I

    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->channel:I

    if-ne v1, v2, :cond_0

    .line 1074
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget-boolean v2, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-ne v1, v2, :cond_0

    .line 1075
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-ne v1, v2, :cond_0

    .line 1076
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->key_compare:I

    if-ne v1, p3, :cond_0

    .line 1077
    packed-switch p3, :pswitch_data_0

    .line 1093
    :cond_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 1082
    :pswitch_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1077
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getRvfMode()I
    .locals 3

    .prologue
    .line 774
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 775
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x1c

    iput v2, v1, Landroid/os/Message;->what:I

    .line 776
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 777
    .local v0, mRvfMode:I
    return v0
.end method

.method private getTimeoutIndexFromValue(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 859
    sparse-switch p1, :sswitch_data_0

    .line 873
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 861
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 863
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 865
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 867
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 869
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 871
    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 859
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12c -> :sswitch_1
        0x258 -> :sswitch_2
        0x4b0 -> :sswitch_3
        0x708 -> :sswitch_4
        0xe10 -> :sswitch_5
    .end sparse-switch
.end method

.method private getTimeoutValueFromIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    const/16 v0, 0x4b0

    .line 877
    packed-switch p1, :pswitch_data_0

    .line 891
    :goto_0
    :pswitch_0
    return v0

    .line 879
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 881
    :pswitch_2
    const/16 v0, 0x12c

    goto :goto_0

    .line 883
    :pswitch_3
    const/16 v0, 0x258

    goto :goto_0

    .line 887
    :pswitch_4
    const/16 v0, 0x708

    goto :goto_0

    .line 889
    :pswitch_5
    const/16 v0, 0xe10

    goto :goto_0

    .line 877
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getTimeoutValueFromPreference()I
    .locals 3

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 913
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "SAMSUNG_HOTSPOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CONNECTION_TIMEOUT"

    const-string v2, "600"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 920
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 921
    const-string v1, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEvent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const-string v1, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 923
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateConnectedDevices()V

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 924
    :cond_1
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    const-string v0, "wifi_state"

    const/16 v1, 0xe

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 927
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 928
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    .line 929
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    if-nez v0, :cond_0

    .line 930
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 933
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    if-eqz v0, :cond_0

    .line 934
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private resetWifiAp(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "wifiConfig"

    .prologue
    .line 781
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 782
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xc5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 783
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 784
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 785
    return-void
.end method

.method private saveTimeoutPreference(I)V
    .locals 3
    .parameter

    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 900
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "SAMSUNG_HOTSPOT"

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 903
    const-string v1, "CONNECTION_TIMEOUT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 904
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 906
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 907
    const-string v1, "wifiap_power_mode_alarm_option"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 908
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 909
    return-void
.end method

.method private setHelpPreference(Ljava/lang/Boolean;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 1028
    const-string v0, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHelpPreference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1030
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1031
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1033
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setOrder(I)V

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1036
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 1037
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateConnectedDevices()V

    .line 1038
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1039
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 1040
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    const v1, 0x7f0903e7

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 1041
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1042
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    .line 1043
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1044
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 1046
    iput-boolean v6, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    .line 1069
    :goto_0
    return-void

    .line 1048
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v5}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 1049
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1050
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v0, :cond_2

    .line 1051
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1052
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setOrder(I)V

    .line 1054
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1055
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 1056
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    const v1, 0x7f0903dc

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 1057
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1066
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1067
    iput-boolean v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mScreenType:Z

    goto :goto_0
.end method

.method private setTimeout(I)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 895
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->saveTimeoutPreference(I)V

    .line 896
    return-void
.end method

.method private showNoHotspotModeWarningDialog()V
    .locals 3

    .prologue
    .line 788
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 789
    const v1, 0x7f090432

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 790
    const v1, 0x7f090439

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 791
    const v1, 0x7f09074d

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSettings$11;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$11;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 797
    const v1, 0x7f09074e

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSettings$12;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$12;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 806
    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$13;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 815
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 816
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 817
    return-void
.end method

.method private updateConnectedDevices()V
    .locals 23

    .prologue
    .line 298
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v10, connectedDeviceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v17

    .line 304
    .local v17, staList:Ljava/lang/String;
    const/4 v15, 0x0

    .line 305
    .local v15, num:I
    if-eqz v17, :cond_0

    .line 306
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v15, v2, 0x12

    .line 307
    const-string v2, "WifiApSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "staList.length() = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",  num = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 311
    if-eqz v17, :cond_8

    if-lez v15, :cond_8

    .line 312
    const/4 v7, 0x0

    .line 313
    .local v7, buf:Ljava/io/BufferedReader;
    const-string v2, " "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 314
    .local v18, tok:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    .line 317
    .local v19, tokLength:I
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v21, "/data/misc/dhcp/dnsmasq.leases"

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x2000

    move/from16 v0, v21

    invoke-direct {v8, v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 318
    .end local v7           #buf:Ljava/io/BufferedReader;
    .local v8, buf:Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, bufReadLine:Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 319
    const-string v2, " "

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 320
    .local v11, dhcpLeaseInfo:[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    if-ge v13, v15, :cond_1

    .line 321
    array-length v2, v11

    const/16 v21, 0x4

    move/from16 v0, v21

    if-lt v2, v0, :cond_4

    const/4 v2, 0x0

    aget-object v2, v11, v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    aget-object v2, v11, v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    aget-object v2, v11, v2

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    aget-object v2, v11, v2

    if-eqz v2, :cond_4

    .line 323
    move/from16 v0, v19

    if-ge v13, v0, :cond_4

    aget-object v2, v18, v13

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    aget-object v2, v11, v2

    aget-object v21, v18, v13

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 325
    const/4 v2, 0x3

    aget-object v2, v11, v2

    const-string v21, "*"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 326
    const v2, 0x7f0903e5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 330
    .local v3, deviceName:Ljava/lang/String;
    :goto_2
    aget-object v2, v18, v13

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 331
    .local v4, mac:Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v5, v11, v2

    .line 332
    .local v5, ip:Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v6, v11, v2

    .line 334
    .local v6, connectTime:Ljava/lang/String;
    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .local v1, device:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 341
    .end local v1           #device:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;
    .end local v3           #deviceName:Ljava/lang/String;
    .end local v4           #mac:Ljava/lang/String;
    .end local v5           #ip:Ljava/lang/String;
    .end local v6           #connectTime:Ljava/lang/String;
    .end local v9           #bufReadLine:Ljava/lang/String;
    .end local v11           #dhcpLeaseInfo:[Ljava/lang/String;
    .end local v13           #i:I
    :catch_0
    move-exception v12

    move-object v7, v8

    .line 342
    .end local v8           #buf:Ljava/io/BufferedReader;
    .restart local v7       #buf:Ljava/io/BufferedReader;
    .local v12, e:Ljava/io/IOException;
    :goto_3
    :try_start_2
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 345
    if-eqz v7, :cond_2

    .line 346
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 351
    .end local v12           #e:Ljava/io/IOException;
    :cond_2
    :goto_4
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;

    .line 352
    .local v20, wifiApConnectedDevices:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 328
    .end local v7           #buf:Ljava/io/BufferedReader;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v20           #wifiApConnectedDevices:Lcom/android/settings/wifi/mobileap/WifiApConnectedDevice;
    .restart local v8       #buf:Ljava/io/BufferedReader;
    .restart local v9       #bufReadLine:Ljava/lang/String;
    .restart local v11       #dhcpLeaseInfo:[Ljava/lang/String;
    .restart local v13       #i:I
    :cond_3
    const/4 v2, 0x3

    :try_start_4
    aget-object v3, v11, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .restart local v3       #deviceName:Ljava/lang/String;
    goto :goto_2

    .line 320
    .end local v3           #deviceName:Ljava/lang/String;
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 345
    .end local v11           #dhcpLeaseInfo:[Ljava/lang/String;
    .end local v13           #i:I
    :cond_5
    if-eqz v8, :cond_6

    .line 346
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_6
    move-object v7, v8

    .line 349
    .end local v8           #buf:Ljava/io/BufferedReader;
    .restart local v7       #buf:Ljava/io/BufferedReader;
    goto :goto_4

    .line 347
    .end local v7           #buf:Ljava/io/BufferedReader;
    .restart local v8       #buf:Ljava/io/BufferedReader;
    :catch_1
    move-exception v12

    .line 348
    .restart local v12       #e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .line 350
    .end local v8           #buf:Ljava/io/BufferedReader;
    .restart local v7       #buf:Ljava/io/BufferedReader;
    goto :goto_4

    .line 347
    .end local v9           #bufReadLine:Ljava/lang/String;
    :catch_2
    move-exception v12

    .line 348
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 344
    .end local v12           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 345
    :goto_6
    if-eqz v7, :cond_7

    .line 346
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 349
    :cond_7
    :goto_7
    throw v2

    .line 347
    :catch_3
    move-exception v12

    .line 348
    .restart local v12       #e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 355
    .end local v7           #buf:Ljava/io/BufferedReader;
    .end local v12           #e:Ljava/io/IOException;
    .end local v18           #tok:[Ljava/lang/String;
    .end local v19           #tokLength:I
    :cond_8
    new-instance v16, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 356
    .local v16, pf:Landroid/preference/Preference;
    const v2, 0x7f0903ff

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 357
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->setSelectable(Z)V

    .line 361
    .end local v16           #pf:Landroid/preference/Preference;
    :cond_9
    return-void

    .line 344
    .restart local v8       #buf:Ljava/io/BufferedReader;
    .restart local v18       #tok:[Ljava/lang/String;
    .restart local v19       #tokLength:I
    :catchall_1
    move-exception v2

    move-object v7, v8

    .end local v8           #buf:Ljava/io/BufferedReader;
    .restart local v7       #buf:Ljava/io/BufferedReader;
    goto :goto_6

    .line 341
    :catch_4
    move-exception v12

    goto :goto_3
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 8
    .parameter "showIcon"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x500

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 506
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 508
    .local v0, mWidth:I
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 509
    if-eqz p1, :cond_3

    .line 510
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    const v2, 0x7f0200e6

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 511
    if-ge v0, v6, :cond_2

    .line 512
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 521
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    .line 522
    if-eqz p1, :cond_5

    .line 523
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    const v2, 0x7f020331

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 524
    if-ge v0, v6, :cond_4

    .line 525
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 534
    :cond_1
    :goto_1
    return-void

    .line 514
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 517
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 518
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 527
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 530
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 531
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method private updateStatus()V
    .locals 7

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 382
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_2

    .line 383
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    .line 396
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v1, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v1, :cond_4

    .line 398
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 400
    :cond_0
    const v1, 0x7f090407

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "#2898c4"

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, text:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 421
    .end local v0           #text:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    check-cast v1, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->updateSsid(Ljava/lang/String;)V

    .line 423
    :cond_2
    return-void

    .line 403
    :cond_3
    const v1, 0x7f090406

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "#2898c4"

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #text:Ljava/lang/String;
    goto :goto_0

    .line 407
    .end local v0           #text:Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 409
    :cond_5
    const v1, 0x7f090405

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "#2898c4"

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #text:Ljava/lang/String;
    goto :goto_0

    .line 412
    .end local v0           #text:Ljava/lang/String;
    :cond_6
    const v1, 0x7f090404

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "#2898c4"

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #text:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x10

    const/4 v8, 0x1

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 213
    const v2, 0x7f0700c1

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->addPreferencesFromResource(I)V

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 226
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    .line 227
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    .line 229
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 230
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 232
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    .line 233
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->misLightTheme:Z

    .line 235
    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v2, :cond_0

    .line 236
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const v3, 0x7f020407

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setIcon(I)V

    .line 239
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v2, :cond_2

    .line 240
    const-string v2, "enable_switch_wifi_ap"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 241
    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-direct {v2, v0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .line 242
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 262
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    .line 263
    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;-><init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    .line 264
    const-string v2, "wifi_ap_connected_devices"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    .line 265
    const-string v2, "wifi_ap_howto_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    .line 266
    const-string v2, "wifi_ap_howto"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    .line 267
    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-direct {v2, v0}, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    .line 268
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-virtual {v2, v6}, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->setEnabled(Z)V

    .line 269
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-virtual {v2, v6}, Lcom/android/settings/wifi/mobileap/WifiApHelpScreenPreference;->setSelectable(Z)V

    .line 270
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    const v3, 0x7f04013d

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 271
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 273
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateStatus()V

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 276
    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHasOptionsMenu(Z)V

    .line 277
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 289
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    .line 290
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getRvfMode()I

    move-result v2

    if-lez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    if-nez v2, :cond_1

    .line 291
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showNoHotspotModeWarningDialog()V

    .line 292
    iput-boolean v8, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    .line 294
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 295
    return-void

    .line 244
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 245
    .local v1, padding:I
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v6, v6, v1, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 246
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 248
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v7, v7, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 253
    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    invoke-direct {v2, v0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .line 254
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setInformation(Lcom/android/settings/SettingsPreferenceFragment;)V

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 830
    const-string v0, "WifiApSettings"

    const-string v2, "WifiApSettings onActivityResult"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    if-nez p1, :cond_0

    .line 832
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 833
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-nez v0, :cond_1

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 835
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_0

    .line 837
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 840
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 846
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_saved_state"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 850
    :goto_1
    if-ne v0, v3, :cond_0

    .line 851
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 852
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_saved_state"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 847
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 500
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateOptionsMenuIcon(Z)V

    .line 501
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 502
    return-void

    .line 500
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 207
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    .line 208
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    .line 209
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter

    .prologue
    const v7, 0x7f09074d

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 598
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    .line 599
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->misLightTheme:Z

    if-eqz v1, :cond_7

    .line 600
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v0, v1, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v1, v0

    .line 602
    :goto_0
    const-string v0, "layout_inflater"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 606
    if-ne p1, v2, :cond_2

    .line 610
    new-instance v0, Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0, v1, v5, v6}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    .line 611
    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    .line 613
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 616
    :try_start_0
    const-string v1, "wifi_ap_show_passwd"

    const/4 v4, 0x1

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isShowPassword:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isShowPassword:I

    if-ne v0, v2, :cond_1

    move v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WifiApDialog;->setCheckShowPassword(Z)V

    .line 624
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 625
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    .line 725
    :goto_3
    return-object v0

    .line 619
    :catch_0
    move-exception v0

    .line 620
    iput v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isShowPassword:I

    goto :goto_1

    :cond_1
    move v0, v3

    .line 622
    goto :goto_2

    .line 627
    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 628
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getTimeoutValueFromPreference()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getTimeoutIndexFromValue(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    .line 629
    const v3, 0x7f0401c1

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 630
    const v0, 0x7f0b04d1

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 631
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0034

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 635
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v6, 0x7f040189

    invoke-direct {v5, v1, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 639
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 640
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 641
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 642
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 643
    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 650
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 651
    const v1, 0x7f0903df

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$5;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090173

    new-instance v3, Lcom/android/settings/wifi/mobileap/WifiApSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$4;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 663
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_3

    .line 665
    :cond_3
    const/4 v1, 0x7

    if-ne p1, v1, :cond_5

    .line 666
    const-string v1, "WifiApSettings"

    const-string v2, "create dialog  DIALOG_OPEN_SECURITY_WARNING"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 668
    const v1, 0x7f090432

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 669
    const v1, 0x7f0401c0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 670
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 671
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v0, :cond_4

    .line 672
    const v0, 0x7f0b04ce

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v3, -0x100

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 674
    :cond_4
    const v0, 0x7f0b04cf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 675
    const v3, 0x7f0b04d0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 676
    new-instance v3, Lcom/android/settings/wifi/mobileap/WifiApSettings$6;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$6;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 684
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$7;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 693
    const v0, 0x7f09074e

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$8;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 702
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_3

    .line 704
    :cond_5
    const/16 v1, 0x8

    if-ne p1, v1, :cond_6

    .line 705
    const v1, 0x7f0401bf

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mView:Landroid/view/View;

    .line 706
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mView:Landroid/view/View;

    const v1, 0x7f0b04cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 707
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 708
    const v2, 0x7f09012b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 709
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 710
    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings$9;-><init>(Lcom/android/settings/wifi/mobileap/WifiApSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 722
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_3

    :cond_6
    move-object v0, v4

    .line 725
    goto/16 :goto_3

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v4, 0x5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 472
    const v2, 0x7f0903db

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    .line 473
    const/4 v2, 0x3

    const v3, 0x7f0903d9

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    .line 474
    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v2, :cond_1

    .line 475
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    const v3, 0x7f0200e6

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 476
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 477
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    const v3, 0x7f020331

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 478
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 490
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v2, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateOptionsMenuIcon(Z)V

    .line 494
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 495
    return-void

    .line 480
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 481
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 491
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->dismiss()V

    .line 462
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 463
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/16 v6, 0x64

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 543
    sget-object v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 544
    const-string v0, "WifiApSettings"

    const-string v1, "WifiApSettings is null. Make WeakReference again for WifiApSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    .line 547
    :cond_0
    sget-object v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    if-nez v0, :cond_1

    .line 548
    const-string v0, "WifiApSettings"

    const-string v1, "WifiApSettings is not acivated. Is this function called after onPause?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 585
    :goto_0
    return v0

    .line 552
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 585
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 554
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 555
    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    .line 556
    iput-boolean v7, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    .line 557
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    .line 558
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 559
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->key_compare:I

    :cond_3
    move v0, v7

    .line 561
    goto :goto_0

    .line 563
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showDialog(I)V

    move v0, v7

    .line 565
    goto :goto_0

    .line 567
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_4

    .line 568
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0903db

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v0, v7

    .line 574
    goto :goto_0

    .line 572
    :cond_4
    const-class v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 577
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_5

    .line 578
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090417

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_5
    move v0, v7

    .line 582
    goto :goto_0

    .line 552
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 449
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    .line 450
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->pause()V

    .line 452
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 453
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    .line 454
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 455
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    check-cast v0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->onClickItem(Landroid/net/wifi/WifiConfiguration;)V

    .line 593
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 427
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 428
    sput-boolean v3, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    .line 429
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->resume()V

    .line 433
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 434
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->updateConnectedDevices()V

    .line 435
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeDialog(I)V

    .line 437
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 438
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->dismissSpinnerPopup()V

    .line 440
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getRvfMode()I

    move-result v0

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    if-nez v0, :cond_3

    .line 441
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->showNoHotspotModeWarningDialog()V

    .line 442
    iput-boolean v3, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->isNoHotSpotModeWarningShown:Z

    .line 444
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    check-cast v0, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->updateCurrent(Landroid/net/wifi/WifiConfiguration;)V

    .line 445
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 538
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 539
    return-void
.end method

.method public removeAllConnectedDevice()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 960
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v2

    .line 962
    if-eqz v2, :cond_1

    .line 963
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x12

    .line 964
    const-string v3, "WifiApSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeAllConnectedDevice(), num = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :goto_0
    if-eqz v2, :cond_0

    if-lez v1, :cond_0

    .line 968
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 969
    array-length v2, v1

    .line 970
    :goto_1
    if-ge v0, v2, :cond_0

    .line 971
    aget-object v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->removeSelectedDevice(Ljava/lang/String;)V

    .line 970
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 974
    :cond_0
    return-void

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public removeSelectedDevice(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 950
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 951
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 952
    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 953
    const-string v2, "mac"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 955
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 956
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 957
    :cond_0
    return-void
.end method

.method public saveIsShowPassword()V
    .locals 3

    .prologue
    .line 983
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 984
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "wifi_ap_show_passwd"

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getCheckShowPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 986
    return-void

    .line 984
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveLast2gChannel(I)V
    .locals 2
    .parameter

    .prologue
    .line 977
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 978
    const-string v1, "wifi_ap_last_2g_channel"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 979
    return-void
.end method
