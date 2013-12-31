.class public Lcom/android/settings/dmr/DMREnabler;
.super Ljava/lang/Object;
.source "DMREnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static mIsON:Z


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mCurConnection:Landroid/content/ServiceConnection;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsBound:Z

.field private mIsConnectionReceiverRegistered:Z

.field private mIsSwitchStateReceiverRegistered:Z

.field private mLastBroadCastMessageAction:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/dmr/DMREnabler;->mIsON:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    .line 63
    iput-boolean v1, p0, Lcom/android/settings/dmr/DMREnabler;->mIsConnectionReceiverRegistered:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/settings/dmr/DMREnabler;->mIsSwitchStateReceiverRegistered:Z

    .line 65
    iput-boolean v1, p0, Lcom/android/settings/dmr/DMREnabler;->mIsBound:Z

    .line 67
    iput v1, p0, Lcom/android/settings/dmr/DMREnabler;->mLastBroadCastMessageAction:I

    .line 362
    new-instance v0, Lcom/android/settings/dmr/DMREnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dmr/DMREnabler$1;-><init>(Lcom/android/settings/dmr/DMREnabler;)V

    iput-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mHandler:Landroid/os/Handler;

    .line 423
    new-instance v0, Lcom/android/settings/dmr/DMREnabler$4;

    invoke-direct {v0, p0}, Lcom/android/settings/dmr/DMREnabler$4;-><init>(Lcom/android/settings/dmr/DMREnabler;)V

    iput-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 441
    new-instance v0, Lcom/android/settings/dmr/DMREnabler$5;

    invoke-direct {v0, p0}, Lcom/android/settings/dmr/DMREnabler$5;-><init>(Lcom/android/settings/dmr/DMREnabler;)V

    iput-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 596
    new-instance v0, Lcom/android/settings/dmr/DMREnabler$6;

    invoke-direct {v0, p0}, Lcom/android/settings/dmr/DMREnabler$6;-><init>(Lcom/android/settings/dmr/DMREnabler;)V

    iput-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mConnection:Landroid/content/ServiceConnection;

    .line 91
    const-string v0, "DMREnabler"

    const-string v1, " DMREnabler(Context, Switch )"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iput-object p1, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.dmr.started"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 96
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.dmr.stoped"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.dmr.starting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.dmr.stopping"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dmr/DMREnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/dmr/DMREnabler;->handleServerStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/dmr/DMREnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/dmr/DMREnabler;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dmr/DMREnabler;->handleServerStateChangedDelayed(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/dmr/DMREnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/dmr/DMREnabler;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/settings/dmr/DMREnabler;->mLastBroadCastMessageAction:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/dmr/DMREnabler;)Lcom/sec/android/allshare/dmrservice/IMediaRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/dmr/DMREnabler;Lcom/sec/android/allshare/dmrservice/IMediaRenderer;)Lcom/sec/android/allshare/dmrservice/IMediaRenderer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings/dmr/DMREnabler;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/dmr/DMREnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/settings/dmr/DMREnabler;->mIsBound:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/dmr/DMREnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/dmr/DMREnabler;->isEthernetConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/dmr/DMREnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/dmr/DMREnabler;->isWifiConnectedExtented()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/dmr/DMREnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/dmr/DMREnabler;->updateSwitchState()V

    return-void
.end method

.method private bindRemoteService()V
    .locals 4

    .prologue
    .line 560
    const-string v1, "DMREnabler"

    const-string v2, "bindService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-boolean v1, p0, Lcom/android/settings/dmr/DMREnabler;->mIsBound:Z

    if-nez v1, :cond_0

    .line 565
    const-string v1, "DMREnabler"

    const-string v2, "service is not bound "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-instance v0, Landroid/content/Intent;

    const-string v1, "asfdmr.intent.action.bindDMRService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 568
    .local v0, bindIntent:Landroid/content/Intent;
    const-string v1, "com.sec.android.allshare.dmrservice"

    const-string v2, "com.sec.android.allshare.dmrservice.DMRServiceManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 573
    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dmr/DMREnabler;->mConnection:Landroid/content/ServiceConnection;

    const/16 v3, 0x49

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 574
    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mConnection:Landroid/content/ServiceConnection;

    iput-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mCurConnection:Landroid/content/ServiceConnection;

    .line 575
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/dmr/DMREnabler;->mIsBound:Z

    .line 577
    .end local v0           #bindIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private handleServerStateChanged(I)V
    .locals 6
    .parameter "state"

    .prologue
    const/16 v5, 0x3e9

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 323
    const-string v0, "DMREnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handleServerStateChanged() with stete : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget v0, p0, Lcom/android/settings/dmr/DMREnabler;->mLastBroadCastMessageAction:I

    if-eqz v0, :cond_0

    if-ne p1, v5, :cond_0

    iget v0, p0, Lcom/android/settings/dmr/DMREnabler;->mLastBroadCastMessageAction:I

    if-eq v0, v5, :cond_0

    .line 326
    const-string v0, "DMREnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " return due to last state  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/dmr/DMREnabler;->mLastBroadCastMessageAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 360
    :goto_0
    return-void

    .line 331
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 355
    sput-boolean v3, Lcom/android/settings/dmr/DMREnabler;->mIsON:Z

    .line 356
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 357
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 333
    :pswitch_0
    sput-boolean v4, Lcom/android/settings/dmr/DMREnabler;->mIsON:Z

    .line 334
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 338
    :pswitch_1
    sput-boolean v4, Lcom/android/settings/dmr/DMREnabler;->mIsON:Z

    .line 339
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 340
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 345
    :pswitch_2
    sput-boolean v3, Lcom/android/settings/dmr/DMREnabler;->mIsON:Z

    .line 346
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 347
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 350
    :pswitch_3
    sput-boolean v3, Lcom/android/settings/dmr/DMREnabler;->mIsON:Z

    .line 351
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 352
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private handleServerStateChangedDelayed(II)V
    .locals 3
    .parameter "state"
    .parameter "milisecond"

    .prologue
    .line 319
    const-string v0, "DMREnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handleServerStateChangedDelayed() with stete : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 321
    return-void
.end method

.method private isEthernetConnected()Z
    .locals 6

    .prologue
    .line 376
    const-string v3, "DMREnabler"

    const-string v4, " isEthernetConnected()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, bEthernetConnected:Z
    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 380
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 381
    .local v2, netInfoEthernet:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 383
    :goto_0
    const-string v3, "DMREnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEthernetConnected() bEthernetConnected ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return v0

    .line 381
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiConnectedExtented()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 249
    const-string v7, "DMREnabler"

    const-string v8, " isWifiConnectedExtented()"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v7, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 251
    .local v3, wifiManager:Landroid/net/wifi/WifiManager;
    iget-object v7, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    const-string v8, "wifip2p"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 254
    .local v4, wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    .line 256
    iget-object v7, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 257
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 258
    .local v2, netInfoWifi:Landroid/net/NetworkInfo;
    const/16 v7, 0xd

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 260
    .local v1, netInfoP2p:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 265
    if-eqz v1, :cond_0

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 268
    const-string v6, "DMREnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wifi State : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", WifiDirect State : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v1           #netInfoP2p:Landroid/net/NetworkInfo;
    .end local v2           #netInfoWifi:Landroid/net/NetworkInfo;
    :goto_0
    return v5

    .line 270
    .restart local v0       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v1       #netInfoP2p:Landroid/net/NetworkInfo;
    .restart local v2       #netInfoWifi:Landroid/net/NetworkInfo;
    :cond_0
    if-nez v1, :cond_1

    .line 271
    const-string v6, "DMREnabler"

    const-string v7, "Wifi State : netInfoP2p is null >> check p2p state"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 275
    :cond_1
    const-string v5, "DMREnabler"

    const-string v7, "Finally of netInfoWifi != null + netInfoP2p != null"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 276
    goto :goto_0

    .line 281
    :cond_2
    if-nez v2, :cond_5

    .line 282
    const-string v7, "DMREnabler"

    const-string v8, "Wifi State : netInfoWifi is null >> check p2p state"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    if-eqz v1, :cond_3

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 287
    const-string v6, "DMREnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " WifiDirect State : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    :cond_3
    if-nez v1, :cond_4

    .line 292
    const-string v6, "DMREnabler"

    const-string v7, "Wifi State : netInfoP2p is null >> check p2p state"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    :cond_4
    const-string v5, "DMREnabler"

    const-string v7, "Finally of netInfoWifi == null + netInfoP2p != null"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 297
    goto :goto_0

    .line 301
    :cond_5
    const-string v5, "DMREnabler"

    const-string v7, "Finally of netInfoWifi != null and connected as well "

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 302
    goto :goto_0

    .line 308
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v1           #netInfoP2p:Landroid/net/NetworkInfo;
    .end local v2           #netInfoWifi:Landroid/net/NetworkInfo;
    :cond_6
    const-string v5, "DMREnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Check Wi-Fi State or Function state"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 309
    goto/16 :goto_0
.end method

.method private setBroadcastReceiver()V
    .locals 5

    .prologue
    .line 511
    const-string v1, "DMREnabler"

    const-string v2, "setBroadcastReceiver()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/dmr/DMREnabler;->mIsConnectionReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 515
    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dmr/DMREnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 517
    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dmr/DMREnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "WIFI_P2P_CONNECTION_CHANGED_ACTION"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 519
    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dmr/DMREnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 521
    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dmr/DMREnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.ethernet.ETH_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 523
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/dmr/DMREnabler;->mIsConnectionReceiverRegistered:Z

    .line 525
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/dmr/DMREnabler;->mIsSwitchStateReceiverRegistered:Z

    if-nez v1, :cond_1

    .line 526
    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dmr/DMREnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 527
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/dmr/DMREnabler;->mIsSwitchStateReceiverRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :cond_1
    :goto_0
    return-void

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DMREnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception on setBroadcastReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDialog(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 389
    const-string v1, "DMREnabler"

    const-string v2, " showDialog()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    packed-switch p1, :pswitch_data_0

    .line 416
    :goto_0
    return-void

    .line 392
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0913f0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0913fa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 395
    .local v0, newDialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/dmr/DMREnabler$3;

    invoke-direct {v2, p0}, Lcom/android/settings/dmr/DMREnabler$3;-><init>(Lcom/android/settings/dmr/DMREnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/dmr/DMREnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/dmr/DMREnabler$2;-><init>(Lcom/android/settings/dmr/DMREnabler;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x273d
        :pswitch_0
    .end packed-switch
.end method

.method private unBindRemoteService()V
    .locals 2

    .prologue
    .line 583
    const-string v0, "DMREnabler"

    const-string v1, "unbindService"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-boolean v0, p0, Lcom/android/settings/dmr/DMREnabler;->mIsBound:Z

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mCurConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mCurConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 588
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mCurConnection:Landroid/content/ServiceConnection;

    .line 589
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dmr/DMREnabler;->mIsBound:Z

    .line 591
    :cond_1
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 4

    .prologue
    .line 537
    const-string v1, "DMREnabler"

    const-string v2, "unregisterBroadcastReceiver()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/dmr/DMREnabler;->mIsConnectionReceiverRegistered:Z

    if-eqz v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dmr/DMREnabler;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 541
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/dmr/DMREnabler;->mIsConnectionReceiverRegistered:Z

    .line 543
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/dmr/DMREnabler;->mIsSwitchStateReceiverRegistered:Z

    if-eqz v1, :cond_1

    .line 544
    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dmr/DMREnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 545
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/dmr/DMREnabler;->mIsSwitchStateReceiverRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :cond_1
    :goto_0
    return-void

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DMREnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception on unregisterBroadcastReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateSwitchState()V
    .locals 4

    .prologue
    .line 619
    const-string v1, "DMREnabler"

    const-string v2, "updateSwitch"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    if-eqz v1, :cond_2

    .line 622
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-interface {v1}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->isMediaRendererStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 623
    const-string v1, "DMREnabler"

    const-string v2, "isMediaRendererStarted is true "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 625
    const-string v1, "DMREnabler"

    const-string v2, "! mSwitch.isChecked()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    const-string v1, "DMREnabler"

    const-string v2, "isMediaRendererStarted is false "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    const-string v1, "DMREnabler"

    const-string v2, "mSwitch.isChecked() "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v1, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DMREnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSwitch()  RemoteException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 638
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 639
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DMREnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSwitch()  Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 643
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const-string v1, "DMREnabler"

    const-string v2, "mService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/16 v7, 0x3ed

    const/16 v6, 0x3ea

    .line 147
    const-string v3, "DMREnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCheckedChanged isChecked="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/dmr/DMREnabler;->isEthernetConnected()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/settings/dmr/DMREnabler;->isWifiConnectedExtented()Z

    move-result v3

    if-nez v3, :cond_1

    .line 150
    const-string v3, "DMREnabler"

    const-string v4, " (!isEthernetConnected() && !isWifiConnectedExtented()) "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/16 v3, 0x273d

    invoke-direct {p0, v3}, Lcom/android/settings/dmr/DMREnabler;->showDialog(I)V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    if-eqz v3, :cond_3

    .line 155
    if-nez p2, :cond_2

    .line 157
    :try_start_0
    const-string v3, "DMREnabler"

    const-string v4, "!isChecked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-interface {v3}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->isMediaRendererStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    const/16 v3, 0x3ec

    invoke-direct {p0, v3}, Lcom/android/settings/dmr/DMREnabler;->handleServerStateChanged(I)V

    .line 160
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings.dmr.stopping"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v1, intent:Landroid/content/Intent;
    const/16 v3, 0x3ec

    iput v3, p0, Lcom/android/settings/dmr/DMREnabler;->mLastBroadCastMessageAction:I

    .line 162
    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 163
    const-string v3, "DMREnabler"

    const-string v4, "isMediaRendererStarted() : stopMediaRenderer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-interface {v3}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->stopMediaRenderer()V

    .line 166
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.dmr.stoped"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, intent2:Landroid/content/Intent;
    const/16 v3, 0x3ea

    iput v3, p0, Lcom/android/settings/dmr/DMREnabler;->mLastBroadCastMessageAction:I

    .line 168
    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #intent2:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "DMREnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCheckedChanged()  RemoteException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings.dmr.error"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "DMREnabler"

    const-string v4, "DMR_ACTION_MEDIA_RENDERER_ERROR"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput v7, p0, Lcom/android/settings/dmr/DMREnabler;->mLastBroadCastMessageAction:I

    .line 177
    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 178
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 182
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    :try_start_1
    const-string v3, "DMREnabler"

    const-string v4, "isChecked"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-interface {v3}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->isMediaRendererStarted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 184
    const/16 v3, 0x3eb

    invoke-direct {p0, v3}, Lcom/android/settings/dmr/DMREnabler;->handleServerStateChanged(I)V

    .line 185
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings.dmr.starting"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .restart local v1       #intent:Landroid/content/Intent;
    const/16 v3, 0x3eb

    iput v3, p0, Lcom/android/settings/dmr/DMREnabler;->mLastBroadCastMessageAction:I

    .line 187
    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 188
    const-string v3, "DMREnabler"

    const-string v4, "DMR_ACTION_MEDIA_RENDERER_STARTING"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v3, "DMREnabler"

    const-string v4, "isMediaRendererStarted() is not true so : startMediaRenderer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    invoke-interface {v3}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->startMediaRenderer()V

    .line 192
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.dmr.started"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .restart local v2       #intent2:Landroid/content/Intent;
    const-string v3, "DMREnabler"

    const-string v4, "DMR_ACTION_MEDIA_RENDERER_STARTED"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/16 v3, 0x3e9

    iput v3, p0, Lcom/android/settings/dmr/DMREnabler;->mLastBroadCastMessageAction:I

    .line 195
    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 200
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #intent2:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 201
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v3, "DMREnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCheckedChanged()  RemoteException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings.dmr.error"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "DMREnabler"

    const-string v4, "DMR_ACTION_MEDIA_RENDERER_ERROR"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 205
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 206
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #intent:Landroid/content/Intent;
    :catch_2
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DMREnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCheckedChanged()  Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings.dmr.error"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "DMREnabler"

    const-string v4, "DMR_ACTION_MEDIA_RENDERER_ERROR"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iput v7, p0, Lcom/android/settings/dmr/DMREnabler;->mLastBroadCastMessageAction:I

    .line 211
    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 212
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 217
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    const-string v3, "DMREnabler"

    const-string v4, "mService is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings.dmr.stoped"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "DMREnabler"

    const-string v4, "DMR_ACTION_MEDIA_RENDERER_STOPED"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iput v6, p0, Lcom/android/settings/dmr/DMREnabler;->mLastBroadCastMessageAction:I

    .line 221
    iget-object v3, p0, Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 123
    const-string v0, "DMREnabler"

    const-string v1, " pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0}, Lcom/android/settings/dmr/DMREnabler;->unregisterBroadcastReceiver()V

    .line 125
    invoke-direct {p0}, Lcom/android/settings/dmr/DMREnabler;->unBindRemoteService()V

    .line 126
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 128
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "DMREnabler"

    const-string v1, " resume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 109
    invoke-direct {p0}, Lcom/android/settings/dmr/DMREnabler;->setBroadcastReceiver()V

    .line 111
    iget-boolean v0, p0, Lcom/android/settings/dmr/DMREnabler;->mIsBound:Z

    if-nez v0, :cond_0

    .line 112
    const-string v0, "DMREnabler"

    const-string v1, " MediaRenderer Service is not bound so bounding the serivce."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-direct {p0}, Lcom/android/settings/dmr/DMREnabler;->bindRemoteService()V

    .line 115
    :cond_0
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .parameter "switch_"

    .prologue
    .line 131
    const-string v0, "DMREnabler"

    const-string v1, " setSwitch()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 136
    iput-object p1, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    .line 137
    invoke-direct {p0}, Lcom/android/settings/dmr/DMREnabler;->updateSwitchState()V

    .line 138
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method
