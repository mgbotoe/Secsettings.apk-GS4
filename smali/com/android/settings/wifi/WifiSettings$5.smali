.class Lcom/android/settings/wifi/WifiSettings$5;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 647
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$5;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 4
    .parameter "motionEvent"

    .prologue
    .line 649
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 651
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$5;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 652
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$5;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const-string v2, "power"

    #calls: Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiSettings;->access$400(Lcom/android/settings/wifi/WifiSettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 653
    .local v0, pm:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 654
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$5;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettings;->access$500(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiSettings$Scanner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSettings$Scanner;->forceScan()V

    goto :goto_0

    .line 649
    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch
.end method
