.class Lcom/android/settings/deviceinfo/UsbSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "content"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    const-string v3, "accessory"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    #setter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z
    invoke-static {v2, v3}, Lcom/android/settings/deviceinfo/UsbSettings;->access$002(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z

    .line 64
    const-string v2, "UsbSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsbAccessoryMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z
    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbSettings;->access$000(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "configured"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 68
    .local v1, configured:Z
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings/deviceinfo/UsbSettings;->isTryMtpUsb30:Z
    invoke-static {v2}, Lcom/android/settings/deviceinfo/UsbSettings;->access$100(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v2

    if-ne v2, v6, :cond_1

    if-ne v1, v6, :cond_1

    .line 69
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    #setter for: Lcom/android/settings/deviceinfo/UsbSettings;->isTryMtpUsb30:Z
    invoke-static {v2, v5}, Lcom/android/settings/deviceinfo/UsbSettings;->access$102(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z

    .line 70
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v2}, Lcom/android/settings/deviceinfo/UsbSettings;->access$200(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/UsbSettings;->showNotSupportMtpUsb3Dialog()V

    .line 73
    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings$1;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v3}, Lcom/android/settings/deviceinfo/UsbSettings;->access$200(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/settings/deviceinfo/UsbSettings;->access$300(Lcom/android/settings/deviceinfo/UsbSettings;Ljava/lang/String;)V

    .line 74
    return-void
.end method
