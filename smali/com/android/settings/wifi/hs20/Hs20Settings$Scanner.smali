.class Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;
.super Landroid/os/Handler;
.source "Hs20Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/hs20/Hs20Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# instance fields
.field private isAnqpFetchStarted:Z

.field private isSelfStartedScan:Z

.field private retryCount:I

.field final synthetic this$0:Lcom/android/settings/wifi/hs20/Hs20Settings;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/hs20/Hs20Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->this$0:Lcom/android/settings/wifi/hs20/Hs20Settings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/hs20/Hs20Settings;Lcom/android/settings/wifi/hs20/Hs20Settings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;-><init>(Lcom/android/settings/wifi/hs20/Hs20Settings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "message"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 380
    const-string v1, "Hs20Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sanner Msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 421
    :goto_0
    return-void

    .line 384
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->this$0:Lcom/android/settings/wifi/hs20/Hs20Settings;

    #getter for: Lcom/android/settings/wifi/hs20/Hs20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/hs20/Hs20Settings;->access$200(Lcom/android/settings/wifi/hs20/Hs20Settings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    iput-boolean v5, p0, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->isSelfStartedScan:Z

    .line 386
    iput v4, p0, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->retryCount:I

    .line 387
    iget-object v1, p0, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->this$0:Lcom/android/settings/wifi/hs20/Hs20Settings;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #calls: Lcom/android/settings/wifi/hs20/Hs20Settings;->setRefreshAction(Ljava/lang/Boolean;)V
    invoke-static {v1, v2}, Lcom/android/settings/wifi/hs20/Hs20Settings;->access$300(Lcom/android/settings/wifi/hs20/Hs20Settings;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 388
    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->retryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->retryCount:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 389
    iput v4, p0, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->retryCount:I

    .line 390
    iget-object v1, p0, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->this$0:Lcom/android/settings/wifi/hs20/Hs20Settings;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #calls: Lcom/android/settings/wifi/hs20/Hs20Settings;->setRefreshAction(Ljava/lang/Boolean;)V
    invoke-static {v1, v2}, Lcom/android/settings/wifi/hs20/Hs20Settings;->access$300(Lcom/android/settings/wifi/hs20/Hs20Settings;Ljava/lang/Boolean;)V

    .line 391
    iget-object v1, p0, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->this$0:Lcom/android/settings/wifi/hs20/Hs20Settings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/hs20/Hs20Settings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0902eb

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 395
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->this$0:Lcom/android/settings/wifi/hs20/Hs20Settings;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #calls: Lcom/android/settings/wifi/hs20/Hs20Settings;->setRefreshAction(Ljava/lang/Boolean;)V
    invoke-static {v1, v2}, Lcom/android/settings/wifi/hs20/Hs20Settings;->access$300(Lcom/android/settings/wifi/hs20/Hs20Settings;Ljava/lang/Boolean;)V

    .line 396
    const/16 v1, 0x1389

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 400
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->isSelfStartedScan:Z

    if-eqz v1, :cond_2

    .line 401
    iput-boolean v4, p0, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->isSelfStartedScan:Z

    .line 402
    const/16 v1, 0x138b

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->sendEmptyMessage(I)Z

    .line 404
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->this$0:Lcom/android/settings/wifi/hs20/Hs20Settings;

    iget-object v2, p0, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->this$0:Lcom/android/settings/wifi/hs20/Hs20Settings;

    #getter for: Lcom/android/settings/wifi/hs20/Hs20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcom/android/settings/wifi/hs20/Hs20Settings;->access$200(Lcom/android/settings/wifi/hs20/Hs20Settings;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/android/settings/wifi/hs20/Hs20Settings;->mLastScanResult:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/android/settings/wifi/hs20/Hs20Settings;->access$402(Lcom/android/settings/wifi/hs20/Hs20Settings;Ljava/util/List;)Ljava/util/List;

    .line 405
    iget-object v1, p0, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->this$0:Lcom/android/settings/wifi/hs20/Hs20Settings;

    #calls: Lcom/android/settings/wifi/hs20/Hs20Settings;->updateConnectableApList()V
    invoke-static {v1}, Lcom/android/settings/wifi/hs20/Hs20Settings;->access$500(Lcom/android/settings/wifi/hs20/Hs20Settings;)V

    goto :goto_0

    .line 408
    :pswitch_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 409
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x2e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 410
    iget-object v1, p0, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->this$0:Lcom/android/settings/wifi/hs20/Hs20Settings;

    #getter for: Lcom/android/settings/wifi/hs20/Hs20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/hs20/Hs20Settings;->access$200(Lcom/android/settings/wifi/hs20/Hs20Settings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 411
    const-string v1, "Hs20Settings"

    const-string v2, "Scanner->SEC_COMMAND_ID_HS20_FETCH_ANQP"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_3
    iput-boolean v5, p0, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->isAnqpFetchStarted:Z

    goto/16 :goto_0

    .line 415
    .end local v0           #msg:Landroid/os/Message;
    :pswitch_3
    iput-boolean v4, p0, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->isAnqpFetchStarted:Z

    .line 416
    iget-object v1, p0, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->this$0:Lcom/android/settings/wifi/hs20/Hs20Settings;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #calls: Lcom/android/settings/wifi/hs20/Hs20Settings;->setRefreshAction(Ljava/lang/Boolean;)V
    invoke-static {v1, v2}, Lcom/android/settings/wifi/hs20/Hs20Settings;->access$300(Lcom/android/settings/wifi/hs20/Hs20Settings;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x1389
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method startScan()V
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->isSelfStartedScan:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->isAnqpFetchStarted:Z

    if-nez v0, :cond_0

    .line 364
    const/16 v0, 0x1389

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->sendEmptyMessage(I)Z

    .line 366
    :cond_0
    return-void
.end method

.method stopScan()V
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->retryCount:I

    .line 375
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/hs20/Hs20Settings$Scanner;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 376
    return-void
.end method
