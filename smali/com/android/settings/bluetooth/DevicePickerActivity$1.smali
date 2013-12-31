.class Lcom/android/settings/bluetooth/DevicePickerActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "DevicePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DevicePickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DevicePickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const v3, 0x7f04009a

    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    if-ne v0, v1, :cond_2

    .line 115
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    #getter for: Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->access$000(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    #getter for: Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->access$000(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    #getter for: Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->access$000(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->finish()V

    .line 128
    :cond_1
    :goto_0
    return-void

    .line 118
    :cond_2
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    if-ne v0, v1, :cond_3

    .line 119
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    #getter for: Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->access$000(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    #getter for: Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->access$000(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    const v2, 0x7f091225

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/bluetooth/DevicePickerActivity;->showHelpDialog(II)V

    goto :goto_0

    .line 123
    :cond_3
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    if-ne v0, v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    #getter for: Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->access$000(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    #getter for: Lcom/android/settings/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->access$000(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$1;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    const v2, 0x7f091223

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/bluetooth/DevicePickerActivity;->showHelpDialog(II)V

    goto :goto_0
.end method
