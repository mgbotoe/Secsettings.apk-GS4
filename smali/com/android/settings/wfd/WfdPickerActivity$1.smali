.class Lcom/android/settings/wfd/WfdPickerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WfdPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WfdPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handleCONNESTABLISHED()V
    .locals 3

    .prologue
    .line 511
    const-string v0, "WfdPickerActivity"

    const-string v1, " onReceive << P2P_CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v1, 0x5

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1302(Lcom/android/settings/wfd/WfdPickerActivity;I)I

    .line 514
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2500(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2500(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->setLastConnectedDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2600(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 516
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2500(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->setWifiDisplayDeviceAddress(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2500(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->setWifiDisplayDeviceName(Ljava/lang/String;)V

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 538
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$000(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    const-string v0, "WfdPickerActivity"

    const-string v1, "connection established in picker dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 541
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 545
    :cond_1
    invoke-static {}, Lcom/android/settings/wfd/WfdPickerActivity;->access$500()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 546
    invoke-static {}, Lcom/android/settings/wfd/WfdPickerActivity;->access$500()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$300(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 550
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->removeAutoConnectDialog()V
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$800(Lcom/android/settings/wfd/WfdPickerActivity;)V

    .line 552
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2700(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 553
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->finish()V

    .line 555
    :cond_3
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 278
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, action:Ljava/lang/String;
    const-string v7, "WfdPickerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BroadCast Received Action : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v7, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 282
    const-string v7, "WfdPickerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wfd settings P2P changed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "wifi_p2p_state"

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-string v7, "wifi_p2p_state"

    const/4 v8, 0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 285
    .local v6, wifiP2pState:I
    packed-switch v6, :pswitch_data_0

    .line 303
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->isP2pConnected()Z
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$200(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 304
    invoke-static {}, Lcom/android/settings/wfd/WfdPickerActivity;->access$500()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v8}, Lcom/android/settings/wfd/WfdPickerActivity;->access$300(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v8

    new-instance v9, Lcom/android/settings/wfd/WfdPickerActivity$1$1;

    invoke-direct {v9, p0}, Lcom/android/settings/wfd/WfdPickerActivity$1$1;-><init>(Lcom/android/settings/wfd/WfdPickerActivity$1;)V

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 310
    invoke-static {}, Lcom/android/settings/wfd/WfdPickerActivity;->access$500()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v8}, Lcom/android/settings/wfd/WfdPickerActivity;->access$300(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 313
    :cond_1
    const-string v7, "wifi_p2p_state"

    const/4 v8, 0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 314
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$600(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$600(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    .line 315
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$700(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 316
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->removeAutoConnectDialog()V
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$800(Lcom/android/settings/wfd/WfdPickerActivity;)V

    .line 318
    :cond_2
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdState:I
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$900(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    .line 319
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/settings/wfd/WfdPickerActivity;->handleP2pStateChanged(I)V

    .line 508
    .end local v6           #wifiP2pState:I
    :cond_3
    :goto_1
    return-void

    .line 287
    .restart local v6       #wifiP2pState:I
    :pswitch_0
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$000(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 288
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/settings/wfd/WfdPickerDialog;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/settings/wfd/WfdPickerDialog;->setCancelBtnEnable(Z)V

    .line 289
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/settings/wfd/WfdPickerDialog;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/settings/wfd/WfdPickerDialog;->setStopBtnEnable(Z)V

    .line 290
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$100(Lcom/android/settings/wfd/WfdPickerActivity;)V

    goto/16 :goto_0

    .line 294
    :pswitch_1
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$000(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 295
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/settings/wfd/WfdPickerDialog;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/settings/wfd/WfdPickerDialog;->setCancelBtnEnable(Z)V

    .line 296
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/android/settings/wfd/WfdPickerDialog;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/settings/wfd/WfdPickerDialog;->setStopBtnEnable(Z)V

    goto/16 :goto_0

    .line 323
    .end local v6           #wifiP2pState:I
    :cond_4
    const-string v7, "com.samsung.wfd.STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 324
    const-string v7, "wfd_state"

    const/4 v8, 0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 325
    .local v5, wfdState:I
    const-string v7, "WfdPickerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wfd settings P2P changed with "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v7, 0x1

    if-eq v5, v7, :cond_5

    if-nez v5, :cond_9

    .line 327
    :cond_5
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 328
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$700(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 329
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->removeAutoConnectDialog()V
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$800(Lcom/android/settings/wfd/WfdPickerActivity;)V

    .line 332
    :cond_6
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$000(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 333
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->finishWfdPickerDialog()V

    .line 334
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->showDisableToast()V
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1000(Lcom/android/settings/wfd/WfdPickerActivity;)V

    .line 336
    :cond_7
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v8, 0x0

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mAlreadyTurnedOn:Z
    invoke-static {v7, v8}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1102(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z

    .line 342
    :cond_8
    :goto_2
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v7, v5}, Lcom/android/settings/wfd/WfdPickerActivity;->handleP2pStateChanged(I)V

    goto/16 :goto_1

    .line 338
    :cond_9
    const/4 v7, 0x5

    if-ne v5, v7, :cond_8

    goto :goto_2

    .line 343
    .end local v5           #wfdState:I
    :cond_a
    const-string v7, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 345
    invoke-static {}, Lcom/android/settings/wfd/WfdPickerActivity;->access$500()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 347
    const-string v7, "p2pGroupInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$402(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 350
    const-string v7, "connectedDevAddress"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, devAddr:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1200(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$700(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v7

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    iget-object v7, v7, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v7, :cond_b

    .line 354
    const-string v7, "WfdPickerActivity"

    const-string v8, "WIFI_P2P_PEERS_CHANGED_ACTION mConnectingDialogCalled"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v8, 0x1

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v7, v8}, Lcom/android/settings/wfd/WfdPickerActivity;->access$702(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z

    .line 356
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v8, 0x4

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v7, v8}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1302(Lcom/android/settings/wfd/WfdPickerActivity;I)I

    .line 357
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 358
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/16 v8, 0xb

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V
    invoke-static {v7, v8}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1400(Lcom/android/settings/wfd/WfdPickerActivity;I)V

    .line 359
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v8, 0x0

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z
    invoke-static {v7, v8}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1202(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z

    goto/16 :goto_1

    .line 361
    :cond_b
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$700(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 362
    if-eqz v1, :cond_c

    invoke-static {}, Lcom/android/settings/wfd/WfdPickerActivity;->access$400()Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 363
    const-string v7, "WfdPickerActivity"

    const-string v8, "WIFI_P2P_PEERS_CHANGED_ACTION,  group info created"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v8, 0x4

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v7, v8}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1302(Lcom/android/settings/wfd/WfdPickerActivity;I)I

    goto/16 :goto_1

    .line 367
    :cond_c
    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/settings/wfd/WfdPickerActivity;->access$400()Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v7

    if-nez v7, :cond_3

    .line 368
    const-string v7, "WfdPickerActivity"

    const-string v8, "WifiP2pService notifies p2p connection is failed !!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v8, 0x2

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v7, v8}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1302(Lcom/android/settings/wfd/WfdPickerActivity;I)I

    .line 373
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->removeAutoConnectDialog()V
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$800(Lcom/android/settings/wfd/WfdPickerActivity;)V

    .line 374
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->cancelWfdConnect()V
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1500(Lcom/android/settings/wfd/WfdPickerActivity;)V

    .line 375
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/16 v8, 0xd

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->showDialog(I)V
    invoke-static {v7, v8}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1600(Lcom/android/settings/wfd/WfdPickerActivity;I)V

    goto/16 :goto_1

    .line 378
    :cond_d
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$600(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 380
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$600(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    .line 384
    invoke-static {}, Lcom/android/settings/wfd/WfdPickerActivity;->access$500()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v8}, Lcom/android/settings/wfd/WfdPickerActivity;->access$300(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_1

    .line 389
    .end local v1           #devAddr:Ljava/lang/String;
    :cond_e
    const-string v7, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 390
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1200(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    iget-object v7, v7, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-eqz v7, :cond_3

    .line 391
    const-string v7, "WfdPickerActivity"

    const-string v8, "WIFI_P2P_REQUEST_CHANGED_ACTION,  user rejected the p2p connection"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v8, 0x2

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v7, v8}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1302(Lcom/android/settings/wfd/WfdPickerActivity;I)I

    .line 394
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v8, 0x0

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z
    invoke-static {v7, v8}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1202(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z

    .line 395
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/settings/wfd/WfdPickerActivity;->mCurrentWifiPeer:Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 396
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->cancelWfdConnect()V
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1500(Lcom/android/settings/wfd/WfdPickerActivity;)V

    goto/16 :goto_1

    .line 399
    :cond_f
    const-string v7, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 401
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1300(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v7

    const/4 v8, 0x5

    if-lt v7, v8, :cond_3

    .line 402
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity$1;->handleCONNESTABLISHED()V

    goto/16 :goto_1

    .line 404
    :cond_10
    const-string v7, "android.intent.action.WIFIDISPLAY_CONTROL_FROM_SERVICE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 405
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1700(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 406
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const-string v8, "cause"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I
    invoke-static {v7, v8}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1802(Lcom/android/settings/wfd/WfdPickerActivity;I)I

    .line 408
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1800(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 426
    :goto_3
    const-string v7, "WfdPickerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "no problem! picker is going on!!! << "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I
    invoke-static {v9}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1800(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const-string v7, "WfdPickerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "curr state:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v9}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1300(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v8, 0x0

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z
    invoke-static {v7, v8}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1702(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z

    .line 433
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$600(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$600(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/wfd/WfdManager;->WFDGetStatus()Z

    move-result v7

    if-nez v7, :cond_12

    .line 437
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1300(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_11

    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1300(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_12

    .line 439
    :cond_11
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->scanDevice()V
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$100(Lcom/android/settings/wfd/WfdPickerActivity;)V

    .line 449
    :cond_12
    :goto_4
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v8, 0x0

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z
    invoke-static {v7, v8}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1702(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z

    goto/16 :goto_1

    .line 413
    :sswitch_0
    const-string v7, "WfdPickerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WfdService request to finish picker! << "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I
    invoke-static {v9}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1800(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->finish()V

    goto/16 :goto_1

    .line 418
    :sswitch_1
    const-string v7, "WfdPickerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WfdService request to finish picker! (in pickerDialog) << "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I
    invoke-static {v9}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1800(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->finish()V

    goto/16 :goto_1

    .line 423
    :sswitch_2
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v8, 0x1

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mIsP2pBusyDialogCalled:Z
    invoke-static {v7, v8}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1902(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z

    goto/16 :goto_3

    .line 445
    :cond_13
    const-string v7, "WfdPickerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad intent! WfdService didn\'t request to finish picker! << "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mControlByWfdService:I
    invoke-static {v9}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1800(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 452
    :cond_14
    const-string v7, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 453
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 454
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    const-string v7, "WfdPickerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " onReceive << WIFI_P2P_CONNECTION_CHANGED_ACTION with networkInfo : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$700(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_18

    .line 457
    invoke-static {}, Lcom/android/settings/wfd/WfdPickerActivity;->access$500()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 461
    const-string v7, "WfdPickerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "wfdState on isconnected is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v9}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1300(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1300(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v7

    const/4 v8, 0x5

    if-ge v7, v8, :cond_15

    .line 463
    invoke-direct {p0}, Lcom/android/settings/wfd/WfdPickerActivity$1;->handleCONNESTABLISHED()V

    .line 474
    :cond_15
    :goto_5
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-nez v7, :cond_3

    .line 475
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mIsP2pBusyDialogCalled:Z
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1900(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 476
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v8, 0x0

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mIsP2pBusyDialogCalled:Z
    invoke-static {v7, v8}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1902(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z

    .line 477
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$600(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v7

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$600(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_16

    .line 478
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->setWfdEnabled()V

    .line 482
    :cond_16
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$600(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 483
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$600(Lcom/android/settings/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v4

    .line 485
    .local v4, state:I
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$000(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v7

    if-eqz v7, :cond_19

    const/4 v7, 0x1

    if-ne v4, v7, :cond_19

    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mIsHotspotOn:Z
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2100(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v7

    if-nez v7, :cond_19

    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->getPowerSavingMode()I
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2200(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_17

    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->getCPUPowerSavingMode()I
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2300(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_19

    .line 486
    :cond_17
    const-string v7, "WfdPickerActivity"

    const-string v8, "finish()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->finish()V

    goto/16 :goto_1

    .line 464
    .end local v4           #state:I
    :cond_18
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 465
    invoke-static {}, Lcom/android/settings/wfd/WfdPickerActivity;->access$500()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v8}, Lcom/android/settings/wfd/WfdPickerActivity;->access$300(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v8

    new-instance v9, Lcom/android/settings/wfd/WfdPickerActivity$1$2;

    invoke-direct {v9, p0}, Lcom/android/settings/wfd/WfdPickerActivity$1$2;-><init>(Lcom/android/settings/wfd/WfdPickerActivity$1;)V

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    goto/16 :goto_5

    .line 489
    .restart local v4       #state:I
    :cond_19
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v8, 0x0

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mIsHotspotOn:Z
    invoke-static {v7, v8}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2102(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z

    goto/16 :goto_1

    .line 494
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    .end local v4           #state:I
    :cond_1a
    const-string v7, "android.intent.action.USER_PRESENT"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 495
    const-string v7, "WfdPickerActivity"

    const-string v8, " onReceive << Intent.ACTION_USER_PRESENT"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    iget-object v8, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->isHotspotOn()Z
    invoke-static {v8}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2400(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v8

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mIsHotspotOn:Z
    invoke-static {v7, v8}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2102(Lcom/android/settings/wfd/WfdPickerActivity;Z)Z

    .line 497
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mInPickerDialog:Z
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$000(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mWFDSettingState:I
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$1300(Lcom/android/settings/wfd/WfdPickerActivity;)I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_3

    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mIsHotspotOn:Z
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2100(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v7

    if-nez v7, :cond_1b

    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->isP2pConnected()Z
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$200(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 498
    :cond_1b
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.samsung.wfd.LAUNCH_WFD_POPUP"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 499
    .local v2, intentBroker:Landroid/content/Intent;
    const/high16 v7, 0x1080

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 500
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mIsHotspotOn:Z
    invoke-static {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2100(Lcom/android/settings/wfd/WfdPickerActivity;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 501
    const-string v7, "cause"

    const v8, 0x22075

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 505
    :goto_6
    iget-object v7, p0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-virtual {v7}, Lcom/android/settings/wfd/WfdPickerActivity;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 503
    :cond_1c
    const-string v7, "cause"

    const v8, 0x22072

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_6

    .line 285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 408
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0xa -> :sswitch_0
        0x1e -> :sswitch_0
        0x1f -> :sswitch_1
        0x28 -> :sswitch_0
        0x32 -> :sswitch_0
    .end sparse-switch
.end method
