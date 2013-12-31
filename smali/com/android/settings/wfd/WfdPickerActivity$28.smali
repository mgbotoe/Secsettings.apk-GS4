.class Lcom/android/settings/wfd/WfdPickerActivity$28;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 2964
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity$28;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2967
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$28;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    iget-object v0, v0, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    .line 2969
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timed out waiting for Wifi display RTSP connection after 15 seconds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wfd/WfdPickerActivity$28;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    iget-object v2, v2, Lcom/android/settings/wfd/WfdPickerActivity;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$28;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v1, 0x1

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->handleConnectionFailure(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$5300(Lcom/android/settings/wfd/WfdPickerActivity;Z)V

    .line 2974
    :cond_0
    return-void
.end method
