.class Lcom/android/settings/easymode/EasyModeEnabler$3;
.super Ljava/lang/Object;
.source "EasyModeEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/easymode/EasyModeEnabler;->showEnableEasyModeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/easymode/EasyModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/easymode/EasyModeEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/settings/easymode/EasyModeEnabler$3;->this$0:Lcom/android/settings/easymode/EasyModeEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 100
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeEnabler$3;->this$0:Lcom/android/settings/easymode/EasyModeEnabler;

    #getter for: Lcom/android/settings/easymode/EasyModeEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v4}, Lcom/android/settings/easymode/EasyModeEnabler;->access$000(Lcom/android/settings/easymode/EasyModeEnabler;)Landroid/widget/Switch;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 103
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeEnabler$3;->this$0:Lcom/android/settings/easymode/EasyModeEnabler;

    #getter for: Lcom/android/settings/easymode/EasyModeEnabler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/easymode/EasyModeEnabler;->access$100(Lcom/android/settings/easymode/EasyModeEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "easy_mode_switch"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "easymode"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 109
    const-string v4, "easymode_from"

    const-string v5, "settings"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeEnabler$3;->this$0:Lcom/android/settings/easymode/EasyModeEnabler;

    #getter for: Lcom/android/settings/easymode/EasyModeEnabler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/easymode/EasyModeEnabler;->access$100(Lcom/android/settings/easymode/EasyModeEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeEnabler$3;->this$0:Lcom/android/settings/easymode/EasyModeEnabler;

    #getter for: Lcom/android/settings/easymode/EasyModeEnabler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/easymode/EasyModeEnabler;->access$100(Lcom/android/settings/easymode/EasyModeEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_scroll"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v3, smart_scroll_changed:Landroid/content/Intent;
    const-string v4, "isEnable"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeEnabler$3;->this$0:Lcom/android/settings/easymode/EasyModeEnabler;

    #getter for: Lcom/android/settings/easymode/EasyModeEnabler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/easymode/EasyModeEnabler;->access$100(Lcom/android/settings/easymode/EasyModeEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 117
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeEnabler$3;->this$0:Lcom/android/settings/easymode/EasyModeEnabler;

    #getter for: Lcom/android/settings/easymode/EasyModeEnabler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/easymode/EasyModeEnabler;->access$100(Lcom/android/settings/easymode/EasyModeEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_pause"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 118
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v2, smart_pause_changed:Landroid/content/Intent;
    const-string v4, "isEnable"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeEnabler$3;->this$0:Lcom/android/settings/easymode/EasyModeEnabler;

    #getter for: Lcom/android/settings/easymode/EasyModeEnabler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/easymode/EasyModeEnabler;->access$100(Lcom/android/settings/easymode/EasyModeEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 122
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeEnabler$3;->this$0:Lcom/android/settings/easymode/EasyModeEnabler;

    #getter for: Lcom/android/settings/easymode/EasyModeEnabler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/easymode/EasyModeEnabler;->access$100(Lcom/android/settings/easymode/EasyModeEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 123
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeEnabler$3;->this$0:Lcom/android/settings/easymode/EasyModeEnabler;

    #getter for: Lcom/android/settings/easymode/EasyModeEnabler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/easymode/EasyModeEnabler;->access$100(Lcom/android/settings/easymode/EasyModeEnabler;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_OFF:I

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, finger_air_view_changed:Landroid/content/Intent;
    const-string v4, "isEnable"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeEnabler$3;->this$0:Lcom/android/settings/easymode/EasyModeEnabler;

    #getter for: Lcom/android/settings/easymode/EasyModeEnabler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/easymode/EasyModeEnabler;->access$100(Lcom/android/settings/easymode/EasyModeEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 129
    iget-object v4, p0, Lcom/android/settings/easymode/EasyModeEnabler$3;->this$0:Lcom/android/settings/easymode/EasyModeEnabler;

    #getter for: Lcom/android/settings/easymode/EasyModeEnabler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/easymode/EasyModeEnabler;->access$100(Lcom/android/settings/easymode/EasyModeEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "multi_window_enabled"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    return-void
.end method
