.class public Lcom/android/settings/wfd/WfdSwitchEnabler;
.super Ljava/lang/Object;
.source "WfdSwitchEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private edm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mContext:Landroid/content/Context;

.field private mControlByWfdService:I

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEnableControlByWfdService:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPreference:Landroid/preference/SwitchPreference;

.field private mWfdManager:Lcom/samsung/wfd/WfdManager;

.field mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

.field private mWfdSwitchState:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;Lcom/android/settings/wfd/WfdPickerActivity;)V
    .locals 3
    .parameter "context"
    .parameter "switch_"
    .parameter "fragment"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 58
    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    .line 60
    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 62
    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 63
    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 64
    iput v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdSwitchState:I

    .line 65
    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mEnableControlByWfdService:Z

    .line 66
    iput v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mControlByWfdService:I

    .line 67
    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    .line 70
    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 71
    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 74
    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 76
    new-instance v0, Lcom/android/settings/wfd/WfdSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdSwitchEnabler$1;-><init>(Lcom/android/settings/wfd/WfdSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "WfdSwitchEnabler << tablet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mEnableControlByWfdService:Z

    .line 101
    iput v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mControlByWfdService:I

    .line 103
    iput-object p1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    .line 105
    iput-object p3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    .line 107
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-nez v0, :cond_0

    .line 110
    const-string v0, "wfd"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 115
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.wfd.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 120
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 124
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/settings/wfd/WfdPickerActivity;)V
    .locals 3
    .parameter "context"
    .parameter "switch_"
    .parameter "fragment"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 128
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 58
    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    .line 60
    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 62
    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 63
    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 64
    iput v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdSwitchState:I

    .line 65
    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mEnableControlByWfdService:Z

    .line 66
    iput v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mControlByWfdService:I

    .line 67
    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    .line 70
    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 71
    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 74
    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 76
    new-instance v0, Lcom/android/settings/wfd/WfdSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WfdSwitchEnabler$1;-><init>(Lcom/android/settings/wfd/WfdSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "WfdSwitchEnabler << phone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iput-boolean v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mEnableControlByWfdService:Z

    .line 132
    iput v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mControlByWfdService:I

    .line 134
    iput-object p1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    .line 135
    iput-object p2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 136
    iput-object p3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    .line 138
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 140
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdSwitchEnabler;->setSwitchEnabled(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-nez v0, :cond_0

    .line 144
    const-string v0, "wfd"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 148
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 149
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.wfd.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 155
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 158
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 160
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wfd/WfdSwitchEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdSwitchEnabler;->handleP2pStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wfd/WfdSwitchEnabler;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WfdSwitchEnabler;->setSwitchEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wfd/WfdSwitchEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wfd/WfdSwitchEnabler;)Lcom/samsung/wfd/WfdManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wfd/WfdSwitchEnabler;)Landroid/preference/SwitchPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method private handleP2pStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 507
    const-string v0, "WfdSwitchEnabler"

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

    .line 509
    packed-switch p1, :pswitch_data_0

    .line 523
    :goto_0
    iput p1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdSwitchState:I

    .line 524
    return-void

    .line 512
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdSwitchEnabler;->turnOnSwitch(Z)V

    goto :goto_0

    .line 518
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdSwitchEnabler;->turnOnSwitch(Z)V

    goto :goto_0

    .line 509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized setSwitchEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 540
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 555
    :goto_0
    monitor-exit p0

    return-void

    .line 541
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 542
    .local v0, state:I
    const-string v1, "WfdSwitchEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSwitchEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 545
    iget-object v1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 546
    iget-object v1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 540
    .end local v0           #state:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 550
    .restart local v0       #state:I
    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v1, v0, :cond_3

    .line 551
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 553
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Landroid/widget/Switch;->setEnabled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private turnOnSwitch(Z)V
    .locals 5
    .parameter "flag"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 464
    const-string v0, "WfdSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOnSwitch with flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 468
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 470
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 474
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 504
    :cond_1
    :goto_0
    return-void

    .line 480
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WfdSwitchEnabler;->checkDPMPolicy(Z)V

    .line 482
    if-eqz p1, :cond_4

    .line 483
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_3

    .line 484
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 485
    invoke-direct {p0, v4}, Lcom/android/settings/wfd/WfdSwitchEnabler;->setSwitchEnabled(Z)V

    .line 488
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 490
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 495
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_5

    .line 496
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 497
    invoke-direct {p0, v4}, Lcom/android/settings/wfd/WfdSwitchEnabler;->setSwitchEnabled(Z)V

    .line 499
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 501
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method checkDPMPolicy(Z)V
    .locals 3
    .parameter "bChecked"

    .prologue
    const/4 v2, 0x0

    .line 195
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    .line 197
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    .line 206
    :cond_2
    return-void
.end method

.method public isSwitchChecked()Z
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 535
    :goto_0
    return v0

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    goto :goto_0

    .line 535
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 273
    const-string v0, "WfdSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged << isChecked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 278
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/settings/wfd/WfdSwitchEnabler;->checkDPMPolicy(Z)V

    .line 285
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v0, :cond_2

    .line 286
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "mSwitch is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "finish the onCheckedChanged function.."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    :cond_2
    if-eqz p2, :cond_4

    .line 292
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 293
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "onCheckedChanged will setWfdEnabledDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_3

    .line 297
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 298
    const-string v0, "WfdSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->setWfdEnabled()V

    goto :goto_0

    .line 302
    :cond_3
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "onCheckedChanged ignore wfd manager is null setWfdEnabledDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 310
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_5

    .line 311
    const-string v0, "WfdSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 345
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 346
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    if-eqz v0, :cond_5

    .line 348
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0, v4}, Lcom/android/settings/wfd/WfdPickerActivity;->stopScanningWfdPickerDialog(Z)V

    .line 349
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0, v4}, Lcom/android/settings/wfd/WfdPickerActivity;->handleP2pStateChanged(I)V

    .line 357
    :cond_5
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/settings/wfd/WfdSwitchEnabler;->setSwitchEnabled(Z)V

    goto/16 :goto_0

    .line 316
    :pswitch_0
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "onCheckedChanged will setWfdTerminate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    if-eqz v0, :cond_5

    .line 318
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    new-instance v1, Lcom/android/settings/wfd/WfdSwitchEnabler$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WfdSwitchEnabler$2;-><init>(Lcom/android/settings/wfd/WfdSwitchEnabler;)V

    new-instance v2, Lcom/android/settings/wfd/WfdSwitchEnabler$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WfdSwitchEnabler$3;-><init>(Lcom/android/settings/wfd/WfdSwitchEnabler;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wfd/WfdPickerActivity;->showWfdTerminateDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 337
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 338
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    .line 339
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    if-eqz v0, :cond_5

    .line 341
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0, v4}, Lcom/android/settings/wfd/WfdPickerActivity;->stopScanningWfdPickerDialog(Z)V

    goto :goto_1

    .line 312
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 365
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 366
    .local v0, enable:Z
    const-string v3, "WfdSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange2 << value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_0

    .line 369
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-ne v3, v0, :cond_0

    .line 370
    const-string v2, "WfdSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skip! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :goto_0
    return v1

    .line 376
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v3, v2}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 377
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 378
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 382
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/wfd/WfdSwitchEnabler;->checkDPMPolicy(Z)V

    .line 385
    if-eqz v0, :cond_4

    .line 386
    iget-object v1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 387
    iget-object v1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 388
    const-string v1, "WfdSwitchEnabler"

    const-string v3, "onPreferenceChange will setWfdEnabledDialog"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v1, :cond_3

    .line 390
    iget-object v1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 391
    const-string v1, "WfdSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceChange "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v4}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->setWfdEnabled()V

    :cond_2
    :goto_1
    move v1, v2

    .line 447
    goto :goto_0

    .line 395
    :cond_3
    const-string v1, "WfdSwitchEnabler"

    const-string v3, "onPreferenceChange ignore wfd manager is null setWfdEnabledDialog"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 399
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v3, :cond_5

    .line 400
    const-string v3, "WfdSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v5}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v3}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 433
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 434
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    if-eqz v3, :cond_5

    .line 436
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v3, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->stopScanningWfdPickerDialog(Z)V

    .line 437
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v3, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->handleP2pStateChanged(I)V

    .line 443
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    .line 405
    :pswitch_0
    const-string v3, "WfdSwitchEnabler"

    const-string v4, "onPreferenceChange will setWfdTerminate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    if-eqz v3, :cond_5

    .line 407
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    new-instance v4, Lcom/android/settings/wfd/WfdSwitchEnabler$4;

    invoke-direct {v4, p0}, Lcom/android/settings/wfd/WfdSwitchEnabler$4;-><init>(Lcom/android/settings/wfd/WfdSwitchEnabler;)V

    new-instance v5, Lcom/android/settings/wfd/WfdSwitchEnabler$5;

    invoke-direct {v5, p0}, Lcom/android/settings/wfd/WfdSwitchEnabler$5;-><init>(Lcom/android/settings/wfd/WfdSwitchEnabler;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/wfd/WfdPickerActivity;->showWfdTerminateDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 425
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 426
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v3}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    .line 427
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    if-eqz v3, :cond_5

    .line 429
    iget-object v3, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v3, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->stopScanningWfdPickerDialog(Z)V

    goto :goto_2

    .line 401
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 258
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mEnableControlByWfdService:Z

    .line 262
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 270
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 175
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdSwitchState:I

    .line 179
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 181
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WfdSwitchEnabler;->handleP2pStateChanged(I)V

    .line 192
    :cond_2
    return-void
.end method
