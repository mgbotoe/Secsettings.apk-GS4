.class Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$4;
.super Ljava/lang/Object;
.source "CheckBluetoothStateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->showEnableDialog()V
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
    .line 214
    iput-object p1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$4;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$4;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    #getter for: Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->access$300(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$4;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    iget-object v2, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$4;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    #getter for: Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->access$300(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$4;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    .line 227
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
