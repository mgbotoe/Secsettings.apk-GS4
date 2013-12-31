.class Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CheckBluetoothStateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$1;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 73
    .local v1, state:I
    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 74
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/settings/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    .line 75
    iget-object v2, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$1;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    #calls: Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->launchDevicePicker()V
    invoke-static {v2}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->access$000(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    .line 78
    .end local v1           #state:I
    :cond_0
    return-void
.end method
