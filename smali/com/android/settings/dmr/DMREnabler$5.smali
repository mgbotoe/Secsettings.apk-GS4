.class Lcom/android/settings/dmr/DMREnabler$5;
.super Landroid/content/BroadcastReceiver;
.source "DMREnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dmr/DMREnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dmr/DMREnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/dmr/DMREnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/settings/dmr/DMREnabler$5;->this$0:Lcom/android/settings/dmr/DMREnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 445
    const-string v9, "DMREnabler"

    const-string v10, " onReceive()"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, action:Ljava/lang/String;
    const-string v9, "DMREnabler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BroadcastReceiver onReceive(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const-string v9, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.net.ethernet.ETH_STATE_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 451
    :cond_0
    const-string v9, "connectivity"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 453
    .local v2, connectivityManager:Landroid/net/ConnectivityManager;
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 455
    .local v5, netInfo:Landroid/net/NetworkInfo;
    iget-object v9, p0, Lcom/android/settings/dmr/DMREnabler$5;->this$0:Lcom/android/settings/dmr/DMREnabler;

    #getter for: Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/settings/dmr/DMREnabler;->access$300(Lcom/android/settings/dmr/DMREnabler;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "wifip2p"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 456
    .local v8, wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    const/16 v9, 0xd

    invoke-virtual {v2, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 458
    .local v6, netInfoP2p:Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 466
    .local v1, bEthernetConnected:Z
    if-eqz v8, :cond_1

    if-eqz v5, :cond_1

    .line 467
    const-string v9, "DMREnabler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "intent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    if-nez v1, :cond_2

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 475
    const-string v9, "DMREnabler"

    const-string v10, " No Connection,So make Switch unchecked"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v9, p0, Lcom/android/settings/dmr/DMREnabler$5;->this$0:Lcom/android/settings/dmr/DMREnabler;

    #getter for: Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v9}, Lcom/android/settings/dmr/DMREnabler;->access$100(Lcom/android/settings/dmr/DMREnabler;)Landroid/widget/Switch;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Switch;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 477
    iget-object v9, p0, Lcom/android/settings/dmr/DMREnabler$5;->this$0:Lcom/android/settings/dmr/DMREnabler;

    #getter for: Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v9}, Lcom/android/settings/dmr/DMREnabler;->access$100(Lcom/android/settings/dmr/DMREnabler;)Landroid/widget/Switch;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Switch;->setChecked(Z)V

    .line 478
    iget-object v9, p0, Lcom/android/settings/dmr/DMREnabler$5;->this$0:Lcom/android/settings/dmr/DMREnabler;

    #getter for: Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v9}, Lcom/android/settings/dmr/DMREnabler;->access$100(Lcom/android/settings/dmr/DMREnabler;)Landroid/widget/Switch;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 480
    const-string v9, "DMREnabler"

    const-string v10, "DMR_ACTION_MEDIA_RENDERER_NO_CONNECTION"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    new-instance v7, Landroid/content/Intent;

    const-string v9, "com.android.settings.dmr.no_connection"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 482
    .local v7, stateIntent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/settings/dmr/DMREnabler$5;->this$0:Lcom/android/settings/dmr/DMREnabler;

    const/16 v10, 0x3ee

    #setter for: Lcom/android/settings/dmr/DMREnabler;->mLastBroadCastMessageAction:I
    invoke-static {v9, v10}, Lcom/android/settings/dmr/DMREnabler;->access$402(Lcom/android/settings/dmr/DMREnabler;I)I

    .line 483
    iget-object v9, p0, Lcom/android/settings/dmr/DMREnabler$5;->this$0:Lcom/android/settings/dmr/DMREnabler;

    #getter for: Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/settings/dmr/DMREnabler;->access$300(Lcom/android/settings/dmr/DMREnabler;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 505
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #bEthernetConnected:Z
    .end local v2           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v5           #netInfo:Landroid/net/NetworkInfo;
    .end local v6           #netInfoP2p:Landroid/net/NetworkInfo;
    .end local v7           #stateIntent:Landroid/content/Intent;
    .end local v8           #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_1
    :goto_0
    return-void

    .line 487
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #bEthernetConnected:Z
    .restart local v2       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v5       #netInfo:Landroid/net/NetworkInfo;
    .restart local v6       #netInfoP2p:Landroid/net/NetworkInfo;
    .restart local v8       #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :cond_2
    const-string v9, "DMREnabler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "STATE WIFI:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", P2P:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v9, p0, Lcom/android/settings/dmr/DMREnabler$5;->this$0:Lcom/android/settings/dmr/DMREnabler;

    #getter for: Lcom/android/settings/dmr/DMREnabler;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;
    invoke-static {v9}, Lcom/android/settings/dmr/DMREnabler;->access$500(Lcom/android/settings/dmr/DMREnabler;)Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/dmr/DMREnabler$5;->this$0:Lcom/android/settings/dmr/DMREnabler;

    #getter for: Lcom/android/settings/dmr/DMREnabler;->mIsBound:Z
    invoke-static {v9}, Lcom/android/settings/dmr/DMREnabler;->access$600(Lcom/android/settings/dmr/DMREnabler;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/dmr/DMREnabler$5;->this$0:Lcom/android/settings/dmr/DMREnabler;

    #calls: Lcom/android/settings/dmr/DMREnabler;->isEthernetConnected()Z
    invoke-static {v9}, Lcom/android/settings/dmr/DMREnabler;->access$700(Lcom/android/settings/dmr/DMREnabler;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/android/settings/dmr/DMREnabler$5;->this$0:Lcom/android/settings/dmr/DMREnabler;

    #calls: Lcom/android/settings/dmr/DMREnabler;->isWifiConnectedExtented()Z
    invoke-static {v9}, Lcom/android/settings/dmr/DMREnabler;->access$800(Lcom/android/settings/dmr/DMREnabler;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_3
    iget-object v9, p0, Lcom/android/settings/dmr/DMREnabler$5;->this$0:Lcom/android/settings/dmr/DMREnabler;

    #getter for: Lcom/android/settings/dmr/DMREnabler;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;
    invoke-static {v9}, Lcom/android/settings/dmr/DMREnabler;->access$500(Lcom/android/settings/dmr/DMREnabler;)Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer;->isMediaRendererStarted()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/dmr/DMREnabler$5;->this$0:Lcom/android/settings/dmr/DMREnabler;

    #getter for: Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v9}, Lcom/android/settings/dmr/DMREnabler;->access$100(Lcom/android/settings/dmr/DMREnabler;)Landroid/widget/Switch;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Switch;->isChecked()Z

    move-result v9

    if-nez v9, :cond_1

    .line 489
    const-string v9, "DMREnabler"

    const-string v10, " Network Get connected again and isMediaRendererStarted is true"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v9, p0, Lcom/android/settings/dmr/DMREnabler$5;->this$0:Lcom/android/settings/dmr/DMREnabler;

    #getter for: Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v9}, Lcom/android/settings/dmr/DMREnabler;->access$100(Lcom/android/settings/dmr/DMREnabler;)Landroid/widget/Switch;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Switch;->setChecked(Z)V

    .line 491
    iget-object v9, p0, Lcom/android/settings/dmr/DMREnabler$5;->this$0:Lcom/android/settings/dmr/DMREnabler;

    #getter for: Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v9}, Lcom/android/settings/dmr/DMREnabler;->access$100(Lcom/android/settings/dmr/DMREnabler;)Landroid/widget/Switch;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 492
    new-instance v7, Landroid/content/Intent;

    const-string v9, "com.android.settings.dmr.started"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 493
    .restart local v7       #stateIntent:Landroid/content/Intent;
    const-string v9, "DMREnabler"

    const-string v10, "DMR_ACTION_MEDIA_RENDERER_STARTED"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v9, p0, Lcom/android/settings/dmr/DMREnabler$5;->this$0:Lcom/android/settings/dmr/DMREnabler;

    const/16 v10, 0x3e9

    #setter for: Lcom/android/settings/dmr/DMREnabler;->mLastBroadCastMessageAction:I
    invoke-static {v9, v10}, Lcom/android/settings/dmr/DMREnabler;->access$402(Lcom/android/settings/dmr/DMREnabler;I)I

    .line 495
    iget-object v9, p0, Lcom/android/settings/dmr/DMREnabler$5;->this$0:Lcom/android/settings/dmr/DMREnabler;

    #getter for: Lcom/android/settings/dmr/DMREnabler;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/settings/dmr/DMREnabler;->access$300(Lcom/android/settings/dmr/DMREnabler;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 500
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #bEthernetConnected:Z
    .end local v2           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v5           #netInfo:Landroid/net/NetworkInfo;
    .end local v6           #netInfoP2p:Landroid/net/NetworkInfo;
    .end local v7           #stateIntent:Landroid/content/Intent;
    .end local v8           #wifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :catch_0
    move-exception v3

    .line 501
    .local v3, e:Landroid/content/res/Resources$NotFoundException;
    const-string v9, "DMREnabler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NotFoundException on broadcast receiver: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 502
    .end local v3           #e:Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v4

    .line 503
    .local v4, e1:Ljava/lang/Exception;
    const-string v9, "DMREnabler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception on broadcast receiver: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
