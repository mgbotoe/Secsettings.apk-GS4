.class Lcom/android/settings/deviceinfo/Status$4;
.super Landroid/content/BroadcastReceiver;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 327
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 329
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 330
    .local v2, extras:Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 339
    .end local v2           #extras:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 333
    .restart local v2       #extras:Landroid/os/Bundle;
    :cond_1
    const-string v4, "message"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellBroadcastMessage;

    .line 334
    .local v1, cbMessage:Landroid/telephony/CellBroadcastMessage;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getServiceCategory()I

    move-result v4

    const/16 v5, 0x32

    if-ne v4, v5, :cond_0

    .line 335
    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, latestAreaInfo:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    #calls: Lcom/android/settings/deviceinfo/Status;->updateAreaInfo(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/android/settings/deviceinfo/Status;->access$800(Lcom/android/settings/deviceinfo/Status;Ljava/lang/String;)V

    goto :goto_0
.end method
