.class Lcom/android/settings/wifi/mobileap/WifiApWarning$7;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApWarning;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 358
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$600(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 359
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    const/16 v2, 0xb

    #calls: Lcom/android/settings/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V
    invoke-static {v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$700(Lcom/android/settings/wifi/mobileap/WifiApWarning;I)V

    .line 360
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$300(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$300(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$800(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$600(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 363
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$300(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 364
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$300(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->setWifiIBSSEnabled(Z)Z

    .line 366
    :cond_2
    const-wide/16 v1, 0x258

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$300(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 371
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$300(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 372
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 374
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->req_type:I
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$800(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$600(Lcom/android/settings/wifi/mobileap/WifiApWarning;)I

    move-result v1

    if-nez v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$300(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 376
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$300(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 378
    :cond_5
    const-wide/16 v1, 0x258

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 382
    :goto_2
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$300(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 383
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$300(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiIBSSEnabled(Z)Z

    .line 384
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$7;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0

    .line 379
    :catch_1
    move-exception v0

    .line 380
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method
