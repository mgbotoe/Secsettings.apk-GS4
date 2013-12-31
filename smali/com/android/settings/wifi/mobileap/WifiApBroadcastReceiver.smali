.class public Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiApBroadcastReceiver.java"


# static fields
.field private static final DBG:Z

.field private static MAX_CLIENTS:I

.field private static bExpireAlarm:Z

.field private static bStartAlarm:Z

.field private static backOffState:I

.field private static mGateTraceTag:Ljava/lang/String;

.field public static mIsForegroundWifiSettings:Z

.field public static mIsProvisioningResultOk:Z

.field private static mLastClientNum:I


# instance fields
.field mNotificationManager:Landroid/app/NotificationManager;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    .line 52
    const-string v0, "GATE"

    sput-object v0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    .line 56
    sput-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    .line 57
    sput-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 76
    sput v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    .line 78
    sput-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 79
    sput-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    .line 82
    sput v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->MAX_CLIENTS:I

    .line 90
    sput v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->backOffState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 84
    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 85
    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method private getRvfMode(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 495
    const/4 v0, 0x0

    .line 496
    .local v0, mRvfMode:I
    const-string v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 497
    .local v1, mWifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 498
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 499
    .local v2, msg:Landroid/os/Message;
    const/16 v3, 0x1c

    iput v3, v2, Landroid/os/Message;->what:I

    .line 500
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 502
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    return v0
.end method

.method private getTimeoutValueFromSheredPreference(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 459
    const-string v1, "SAMSUNG_HOTSPOT"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 460
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "CONNECTION_TIMEOUT"

    const-string v2, "600"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private isProvisioningNeeded(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 505
    sget-boolean v2, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "Provisioning.disable"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 512
    :cond_0
    :goto_0
    return v1

    .line 508
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, mProvisionApp:[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 511
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V
    .locals 2
    .parameter "ctxt"
    .parameter "type"

    .prologue
    .line 453
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "wifiap_power_mode_alarm_option"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 455
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 456
    return-void
.end method

.method private showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/16 v6, 0xd

    const/16 v5, 0xc

    .line 403
    const-string v0, "WifiApBroadcastReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showHotspotErrorDialog] DialogType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 405
    const-string v1, "extra_type"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 406
    const-string v2, "req_type"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 407
    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    .line 409
    const/4 v4, 0x4

    if-ne p2, v4, :cond_1

    .line 410
    if-eq v3, v5, :cond_2

    if-eq v3, v6, :cond_2

    add-int v0, v1, v2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    const/4 v4, 0x5

    if-ne p2, v4, :cond_4

    .line 414
    if-eq v3, v5, :cond_0

    if-eq v3, v6, :cond_0

    .line 427
    :cond_2
    :goto_1
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 428
    if-eqz v0, :cond_3

    .line 429
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 431
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 432
    const-class v3, Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 433
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 434
    const-string v3, "com.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const-string v3, "wifiap_warning_dialog_type"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 436
    const-string v3, "req_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 437
    const-string v2, "extra_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 438
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 418
    :cond_4
    if-eq v3, v5, :cond_5

    if-ne v3, v6, :cond_0

    .line 422
    :cond_5
    const-string v4, "WifiApBroadcastReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mobile AP is disabled by [showHotspotErrorDialog] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_1
.end method

.method private startHotspotProvisioningRequest(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 443
    const-string v0, "WifiApBroadcastReceiver"

    const-string v1, "startHotspotProvisioningRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 445
    const-class v1, Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 446
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 447
    const-string v1, "com.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const-string v1, "wifiap_warning_dialog_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 449
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 450
    return-void
.end method

.method private startWifiApSettings(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 465
    sget-boolean v1, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    if-nez v1, :cond_0

    .line 466
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 467
    .local v0, wifiApIntent:Landroid/content/Intent;
    const-string v1, "android.settings.WIFI_AP_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 469
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 471
    .end local v0           #wifiApIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method clearTimeoutNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 490
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f0903c7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 492
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 28
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 94
    .local v5, action:Ljava/lang/String;
    const-string v24, "WifiApBroadcastReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "onReceive: action "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v24, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 97
    const-string v24, "wifi_state"

    const/16 v25, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 98
    .local v8, apState:I
    const-string v24, "WifiApBroadcastReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "onreceive WIFI_AP_STATE_CHANGED_ACTION] apState : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    packed-switch v8, :pswitch_data_0

    .line 400
    .end local v8           #apState:I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 102
    .restart local v8       #apState:I
    :pswitch_1
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    .line 105
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 106
    sget-object v24, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string v25, "<GATE-M> WIFI_HOTSPOT_CHECKED </GATE-M>"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1
    const-string v24, "WifiApBroadcastReceiver"

    const-string v25, "batteryChargingblock_clear set true in Hotspot"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v24, "hotspot"

    const/16 v25, 0x1

    invoke-static/range {v24 .. v25}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    .line 143
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_2

    sget-boolean v24, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    if-nez v24, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getRvfMode(Landroid/content/Context;)I

    move-result v24

    if-nez v24, :cond_2

    .line 145
    const-string v24, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/wifi/WifiManager;

    .line 146
    .local v23, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v24

    const/16 v25, 0xd

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 147
    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 148
    const-string v24, "WifiApBroadcastReceiver"

    const-string v25, "Provisioning is failed, start provisioning once again"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/16 v24, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startHotspotProvisioningRequest(Landroid/content/Context;I)V

    goto :goto_0

    .line 153
    .end local v23           #wm:Landroid/net/wifi/WifiManager;
    :cond_2
    const/16 v24, 0x0

    sput-boolean v24, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    goto :goto_0

    .line 160
    :pswitch_2
    const/16 v24, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    .line 163
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v24

    if-eqz v24, :cond_3

    .line 164
    sget-object v24, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string v25, "<GATE-M> WIFI_HOTSPOT_UNCHECKED </GATE-M>"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_3
    const-string v24, "hotspot"

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    .line 170
    const-string v24, "WifiApBroadcastReceiver"

    const-string v25, "batteryChargingblock_clear set true in Hotspot"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 188
    .end local v8           #apState:I
    :cond_4
    const-string v24, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 189
    const-string v24, "wifiap_power_mode_alarm_option"

    const/16 v25, 0x3

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 191
    .local v16, option:I
    if-nez v16, :cond_7

    .line 192
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 195
    .local v9, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v24, "wifi_ap_plugged_type"

    move-object/from16 v0, v24

    invoke-static {v9, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .line 199
    .local v18, pluggedType:I
    :goto_1
    if-nez v18, :cond_0

    .line 200
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v20

    .line 201
    .local v20, powermode_value:I
    const-string v24, "WifiApBroadcastReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ALARM_START : set "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " sec"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    if-eqz v20, :cond_5

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v11, v24, v26

    .line 205
    .local v11, expireTime:J
    new-instance v6, Landroid/content/Intent;

    const-string v24, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v6, alarm_intent:Landroid/content/Intent;
    const-string v24, "wifiap_power_mode_alarm_option"

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    const/16 v24, 0x0

    const/high16 v25, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 209
    .local v17, pending:Landroid/app/PendingIntent;
    const-string v24, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    .line 210
    .local v7, am:Landroid/app/AlarmManager;
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v11, v12, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 212
    const/16 v24, 0x0

    sput-boolean v24, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 213
    const/16 v24, 0x1

    sput-boolean v24, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 196
    .end local v6           #alarm_intent:Landroid/content/Intent;
    .end local v7           #am:Landroid/app/AlarmManager;
    .end local v11           #expireTime:J
    .end local v17           #pending:Landroid/app/PendingIntent;
    .end local v18           #pluggedType:I
    .end local v20           #powermode_value:I
    :catch_0
    move-exception v10

    .line 197
    .local v10, e:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v18, 0x0

    .restart local v18       #pluggedType:I
    goto :goto_1

    .line 215
    .end local v10           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v20       #powermode_value:I
    :cond_5
    sget-boolean v24, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v24, :cond_6

    .line 216
    new-instance v6, Landroid/content/Intent;

    const-string v24, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .restart local v6       #alarm_intent:Landroid/content/Intent;
    const-string v24, "wifiap_power_mode_alarm_option"

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    const/16 v24, 0x0

    const/high16 v25, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 220
    .restart local v17       #pending:Landroid/app/PendingIntent;
    const-string v24, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    .line 221
    .restart local v7       #am:Landroid/app/AlarmManager;
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 223
    .end local v6           #alarm_intent:Landroid/content/Intent;
    .end local v7           #am:Landroid/app/AlarmManager;
    .end local v17           #pending:Landroid/app/PendingIntent;
    :cond_6
    const/16 v24, 0x0

    sput-boolean v24, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 226
    .end local v9           #cr:Landroid/content/ContentResolver;
    .end local v18           #pluggedType:I
    .end local v20           #powermode_value:I
    :cond_7
    const/16 v24, 0x4

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 227
    const-string v24, "WifiApBroadcastReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "WIFIAP_POWER_MODE_VALUE_CHANGED, mLastClientNum = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget v26, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget v24, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-nez v24, :cond_0

    .line 229
    const-string v24, "WifiApBroadcastReceiver"

    const-string v25, "ALARM_START because of WIFIAP_POWER_MODE_VALUE_CHANGED"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 232
    :cond_8
    const/16 v24, 0x1

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 233
    const-string v24, "WifiApBroadcastReceiver"

    const-string v25, "ALARM_EXPIRE"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 235
    .restart local v9       #cr:Landroid/content/ContentResolver;
    const/16 v24, 0x1

    sput-boolean v24, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    .line 236
    const/16 v24, 0x0

    sput-boolean v24, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    .line 239
    const-string v24, "power"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/PowerManager;

    .line 240
    .local v19, pm:Landroid/os/PowerManager;
    const/16 v24, 0x1

    const-string v25, "MobileAPCloseService"

    move-object/from16 v0, v19

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v13

    .line 242
    .local v13, mStopService:Landroid/os/PowerManager$WakeLock;
    :try_start_1
    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 247
    :goto_2
    const-string v24, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/wifi/WifiManager;

    .line 249
    .restart local v23       #wm:Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v21

    .line 250
    .local v21, wifiApState:I
    const/16 v22, 0x0

    .line 251
    .local v22, wifiSavedState:I
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v20

    .line 253
    .restart local v20       #powermode_value:I
    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    .line 254
    .local v14, msg:Landroid/os/Message;
    const/16 v24, 0x3

    move/from16 v0, v24

    iput v0, v14, Landroid/os/Message;->what:I

    .line 255
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v15

    .line 257
    .local v15, num:I
    const-string v24, "WifiApBroadcastReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "powermode_value = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    if-nez v15, :cond_9

    const/16 v24, 0xd

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    if-eqz v20, :cond_9

    .line 259
    const-string v24, "WifiApBroadcastReceiver"

    const-string v25, "--> ap disable"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 264
    :try_start_2
    const-string v24, "wifi_saved_state"

    move-object/from16 v0, v24

    invoke-static {v9, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v22

    .line 268
    :goto_3
    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    .line 270
    const-wide/16 v24, 0x258

    :try_start_3
    invoke-static/range {v24 .. v25}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    .line 274
    :goto_4
    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 275
    const-string v24, "wifi_saved_state"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 279
    :cond_9
    if-eqz v13, :cond_0

    .line 281
    :try_start_4
    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 282
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 243
    .end local v14           #msg:Landroid/os/Message;
    .end local v15           #num:I
    .end local v20           #powermode_value:I
    .end local v21           #wifiApState:I
    .end local v22           #wifiSavedState:I
    .end local v23           #wm:Landroid/net/wifi/WifiManager;
    :catch_1
    move-exception v10

    .line 244
    .local v10, e:Ljava/lang/Throwable;
    const-string v24, "WifiApBroadcastReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Cannot acquire wake lock ~~"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 271
    .end local v10           #e:Ljava/lang/Throwable;
    .restart local v14       #msg:Landroid/os/Message;
    .restart local v15       #num:I
    .restart local v20       #powermode_value:I
    .restart local v21       #wifiApState:I
    .restart local v22       #wifiSavedState:I
    .restart local v23       #wm:Landroid/net/wifi/WifiManager;
    :catch_2
    move-exception v10

    .line 272
    .local v10, e:Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 283
    .end local v10           #e:Ljava/lang/InterruptedException;
    :catch_3
    move-exception v10

    .line 284
    .local v10, e:Ljava/lang/Throwable;
    const-string v24, "WifiApBroadcastReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Cannot release wake lock ~~"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 287
    .end local v9           #cr:Landroid/content/ContentResolver;
    .end local v10           #e:Ljava/lang/Throwable;
    .end local v13           #mStopService:Landroid/os/PowerManager$WakeLock;
    .end local v14           #msg:Landroid/os/Message;
    .end local v15           #num:I
    .end local v19           #pm:Landroid/os/PowerManager;
    .end local v20           #powermode_value:I
    .end local v21           #wifiApState:I
    .end local v22           #wifiSavedState:I
    .end local v23           #wm:Landroid/net/wifi/WifiManager;
    :cond_a
    const/16 v24, 0x2

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 288
    const-string v24, "WifiApBroadcastReceiver"

    const-string v25, "ALARM_STOP"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    sget-boolean v24, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    if-nez v24, :cond_0

    sget-boolean v24, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v24, :cond_0

    .line 290
    new-instance v6, Landroid/content/Intent;

    const-string v24, "com.android.settings.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .restart local v6       #alarm_intent:Landroid/content/Intent;
    const-string v24, "wifiap_power_mode_alarm_option"

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    const/16 v24, 0x0

    const/high16 v25, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 293
    .restart local v17       #pending:Landroid/app/PendingIntent;
    const-string v24, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    .line 294
    .restart local v7       #am:Landroid/app/AlarmManager;
    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 295
    const/16 v24, 0x0

    sput-boolean v24, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    goto/16 :goto_0

    .line 298
    .end local v6           #alarm_intent:Landroid/content/Intent;
    .end local v7           #am:Landroid/app/AlarmManager;
    .end local v16           #option:I
    .end local v17           #pending:Landroid/app/PendingIntent;
    :cond_b
    const-string v24, "com.android.settings.wifi.PLUG_STATE_CHANGED"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 299
    const-string v24, "wifiap_plug_state_changed_option"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 300
    .restart local v16       #option:I
    if-nez v16, :cond_c

    .line 301
    const-string v24, "WifiApBroadcastReceiver"

    const-string v25, "Unplugged"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v24, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/net/wifi/WifiManager;

    .line 303
    .restart local v23       #wm:Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v21

    .line 304
    .restart local v21       #wifiApState:I
    const/16 v24, 0xd

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    sget v24, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-nez v24, :cond_0

    .line 305
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 308
    .end local v21           #wifiApState:I
    .end local v23           #wm:Landroid/net/wifi/WifiManager;
    :cond_c
    const-string v24, "WifiApBroadcastReceiver"

    const-string v25, "Plugged"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    sget-boolean v24, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bExpireAlarm:Z

    if-nez v24, :cond_0

    sget-boolean v24, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->bStartAlarm:Z

    if-eqz v24, :cond_0

    .line 310
    const/16 v24, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 313
    .end local v16           #option:I
    :cond_d
    const-string v24, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 314
    const-string v24, "NUM"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 315
    .local v4, ClientNum:I
    const-string v24, "WifiApBroadcastReceiver"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ClientNum from WIFI_AP_STA_STATUS_CHANGED_ACTION = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    if-gez v4, :cond_e

    .line 317
    const/4 v4, 0x0

    .line 320
    :cond_e
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v24

    if-eqz v24, :cond_f

    .line 321
    sget v24, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    move/from16 v0, v24

    if-le v4, v0, :cond_11

    .line 322
    sget-object v24, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string v25, "<GATE-M> WIFI_HOTSPOT_CONNECTED </GATE-M>"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_f
    :goto_5
    if-nez v4, :cond_12

    sget v24, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    if-eqz v24, :cond_12

    .line 330
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    .line 334
    :cond_10
    :goto_6
    sput v4, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    goto/16 :goto_0

    .line 323
    :cond_11
    sget v24, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mLastClientNum:I

    move/from16 v0, v24

    if-ge v4, v0, :cond_f

    .line 324
    sget-object v24, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mGateTraceTag:Ljava/lang/String;

    const-string v25, "<GATE-M> WIFI_HOTSPOT_DISCONNECTED </GATE-M>"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 331
    :cond_12
    if-lez v4, :cond_10

    .line 332
    const/16 v24, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->sendWifiPowerModeAlarmIntent(Landroid/content/Context;I)V

    goto :goto_6

    .line 335
    .end local v4           #ClientNum:I
    :cond_13
    const-string v24, "com.android.settings.wifi.mobileap.TURNOFF_HOTSPOT"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 336
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->clearTimeoutNotification(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 337
    :cond_14
    const-string v24, "android.settings.WIFI_AP_SEC_SETTINGS"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_15

    .line 338
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->startWifiApSettings(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 339
    :cond_15
    const-string v24, "android.intent.action.MIP_ERROR"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_0

    const-string v24, "android.intent.action.TETHERING_DENIED"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_0

    const-string v24, "android.intent.action.TETHERING_FAILED"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 353
    const-string v24, "android.intent.action.WIFI_ENABLE_WARNING"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_16

    .line 354
    const/16 v24, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 355
    :cond_16
    const-string v24, "android.intent.action.WIFI_AP_ENABLE_WARNING"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 356
    const/16 v24, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v24

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->showHotspotErrorDialog(Landroid/content/Context;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 265
    .restart local v9       #cr:Landroid/content/ContentResolver;
    .restart local v13       #mStopService:Landroid/os/PowerManager$WakeLock;
    .restart local v14       #msg:Landroid/os/Message;
    .restart local v15       #num:I
    .restart local v16       #option:I
    .restart local v19       #pm:Landroid/os/PowerManager;
    .restart local v20       #powermode_value:I
    .restart local v21       #wifiApState:I
    .restart local v22       #wifiSavedState:I
    .restart local v23       #wm:Landroid/net/wifi/WifiManager;
    :catch_4
    move-exception v24

    goto/16 :goto_3

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
