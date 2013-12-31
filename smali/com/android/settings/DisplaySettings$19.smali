.class Lcom/android/settings/DisplaySettings$19;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DisplaySettings;->showTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1597
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$19;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 1599
    iget-object v2, p0, Lcom/android/settings/DisplaySettings$19;->this$0:Lcom/android/settings/DisplaySettings;

    #calls: Lcom/android/settings/DisplaySettings;->removeEnabledScreenReaderValue()V
    invoke-static {v2}, Lcom/android/settings/DisplaySettings;->access$1100(Lcom/android/settings/DisplaySettings;)V

    .line 1600
    iget-object v2, p0, Lcom/android/settings/DisplaySettings$19;->this$0:Lcom/android/settings/DisplaySettings;

    #getter for: Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/DisplaySettings;->access$400(Lcom/android/settings/DisplaySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1601
    iget-object v2, p0, Lcom/android/settings/DisplaySettings$19;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v2}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_window_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1602
    iget-object v2, p0, Lcom/android/settings/DisplaySettings$19;->this$0:Lcom/android/settings/DisplaySettings;

    #getter for: Lcom/android/settings/DisplaySettings;->mMultiWindowPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings/DisplaySettings;->access$400(Lcom/android/settings/DisplaySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1603
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1604
    .local v0, mHandler:Landroid/os/Handler;
    new-instance v2, Lcom/android/settings/DisplaySettings$19$1;

    invoke-direct {v2, p0}, Lcom/android/settings/DisplaySettings$19$1;-><init>(Lcom/android/settings/DisplaySettings$19;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1609
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.action.talkback_off"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1610
    .local v1, talk_back_off:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/DisplaySettings$19;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v2}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1611
    return-void
.end method
