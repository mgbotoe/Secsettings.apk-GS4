.class Lcom/android/settings/wifi/WifiPoorConnection$4;
.super Ljava/lang/Object;
.source "WifiPoorConnection.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiPoorConnection;->showPoorConnectionDiag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiPoorConnection;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiPoorConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings/wifi/WifiPoorConnection$4;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/settings/wifi/WifiPoorConnection$4;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiPoorConnection$4;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    #getter for: Lcom/android/settings/wifi/WifiPoorConnection;->mWatchdogPoorConnectionAlertDialogRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiPoorConnection;->access$100(Lcom/android/settings/wifi/WifiPoorConnection;)Ljava/lang/Runnable;

    move-result-object v2

    #calls: Lcom/android/settings/wifi/WifiPoorConnection;->removeDialogTimer(Ljava/lang/Runnable;)V
    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiPoorConnection;->access$200(Lcom/android/settings/wifi/WifiPoorConnection;Ljava/lang/Runnable;)V

    .line 104
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "info_type"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const-string v1, "visible"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lcom/android/settings/wifi/WifiPoorConnection$4;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    #getter for: Lcom/android/settings/wifi/WifiPoorConnection;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiPoorConnection;->access$300(Lcom/android/settings/wifi/WifiPoorConnection;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    iget-object v1, p0, Lcom/android/settings/wifi/WifiPoorConnection$4;->this$0:Lcom/android/settings/wifi/WifiPoorConnection;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiPoorConnection;->finish()V

    .line 109
    return-void
.end method
