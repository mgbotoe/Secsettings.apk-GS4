.class Lcom/android/settings/DrivingModeEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "DrivingModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DrivingModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DrivingModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/DrivingModeEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings/DrivingModeEnabler$1;->this$0:Lcom/android/settings/DrivingModeEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.settings.DRIVING_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    const-string v1, "DrivingModeEnabler"

    const-string v2, "android.settings.DRIVING_MODE_CHANGED is received"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler$1;->this$0:Lcom/android/settings/DrivingModeEnabler;

    invoke-virtual {v1}, Lcom/android/settings/DrivingModeEnabler;->updateSwitch()V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const-string v1, "android.settings.DRIVINGMODE_SWITCH_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const-string v1, "DrivingModeEnabler"

    const-string v2, "android.settings.DRIVINGMODE_SWITCH_CHANGED is received"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler$1;->this$0:Lcom/android/settings/DrivingModeEnabler;

    invoke-virtual {v1}, Lcom/android/settings/DrivingModeEnabler;->updateSwitch()V

    goto :goto_0
.end method
