.class Lcom/android/settings/EasyModeSettings$3;
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
    .line 404
    iput-object p1, p0, Lcom/android/settings/EasyModeSettings$3;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 406
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings$3;->this$0:Lcom/android/settings/EasyModeSettings;

    iget-object v1, v1, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v2, "easy_mode_switch"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 412
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "easymode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 414
    const-string v1, "easymode_from"

    const-string v2, "settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings$3;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v1}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 416
    const-string v1, "EasyModeSettings"

    const-string v2, "onClick 0_0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const-string v1, "com.android.settings.Settings$EasyModeLauncherActivity"

    iget-object v2, p0, Lcom/android/settings/EasyModeSettings$3;->this$0:Lcom/android/settings/EasyModeSettings;

    #getter for: Lcom/android/settings/EasyModeSettings;->mClassName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/EasyModeSettings;->access$400(Lcom/android/settings/EasyModeSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings$3;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v1, v4}, Lcom/android/settings/EasyModeSettings;->setDefaultLauncher(Z)V

    .line 424
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings$3;->this$0:Lcom/android/settings/EasyModeSettings;

    invoke-virtual {v1}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
