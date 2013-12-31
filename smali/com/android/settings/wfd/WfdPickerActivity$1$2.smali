.class Lcom/android/settings/wfd/WfdPickerActivity$1$2;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdPickerActivity$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wfd/WfdPickerActivity$1;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdPickerActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity$1$2;->this$1:Lcom/android/settings/wfd/WfdPickerActivity$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 2
    .parameter "group"

    .prologue
    .line 467
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Groupcast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    const-string v0, "WfdPickerActivity"

    const-string v1, "Autonomous GO is activated. set setDialosListener to false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$1$2;->this$1:Lcom/android/settings/wfd/WfdPickerActivity$1;

    iget-object v0, v0, Lcom/android/settings/wfd/WfdPickerActivity$1;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v1, 0x0

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->setDialogListener(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$2000(Lcom/android/settings/wfd/WfdPickerActivity;Z)V

    .line 471
    :cond_0
    return-void
.end method
