.class Lcom/android/settings/EasyModeSettings$7;
.super Ljava/lang/Object;
.source "EasyModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/EasyModeSettings;->positiveButtonClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/EasyModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/EasyModeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 495
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v4, v4, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v5, "easy_mode_switch"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 501
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "easymode"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 503
    const-string v4, "easymode_from"

    const-string v5, "settings"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v4}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 505
    const-string v4, "EasyModeSettings"

    const-string v5, "onClick 1_1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v4, v4, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v5, "smart_scroll"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 508
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 509
    .local v3, smart_scroll_changed:Landroid/content/Intent;
    const-string v4, "isEnable"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 510
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v4}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 512
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v4, v4, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v5, "smart_pause"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 513
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 514
    .local v2, smart_pause_changed:Landroid/content/Intent;
    const-string v4, "isEnable"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 515
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v4}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 517
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v4, v4, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 518
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v4}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_OFF:I

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 520
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 521
    .local v0, finger_air_view_changed:Landroid/content/Intent;
    const-string v4, "isEnable"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 522
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v4}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 524
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v4, v4, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v5, "multi_window_enabled"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 526
    const-string v4, "com.android.settings.Settings$EasyModeLauncherActivity"

    iget-object v5, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    #getter for: Lcom/android/settings/EasyModeSettings;->mClassName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/EasyModeSettings;->access$400(Lcom/android/settings/EasyModeSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 527
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v4, v7}, Lcom/android/settings/EasyModeSettings;->setDefaultLauncher(Z)V

    .line 532
    :goto_0
    return-void

    .line 531
    :cond_0
    iget-object v4, p0, Lcom/android/settings/EasyModeSettings$7;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v4}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
