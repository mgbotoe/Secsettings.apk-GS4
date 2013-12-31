.class Lcom/android/settings/ResetSettings$1$2;
.super Ljava/lang/Object;
.source "ResetSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ResetSettings$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ResetSettings$1;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetSettings$1;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/settings/ResetSettings$1$2;->this$1:Lcom/android/settings/ResetSettings$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/settings/ResetSettings$1$2;->this$1:Lcom/android/settings/ResetSettings$1;

    iget-object v1, v1, Lcom/android/settings/ResetSettings$1;->this$0:Lcom/android/settings/ResetSettings;

    invoke-virtual {v1}, Lcom/android/settings/ResetSettings;->resetGlobalSettings()V

    .line 105
    iget-object v1, p0, Lcom/android/settings/ResetSettings$1$2;->this$1:Lcom/android/settings/ResetSettings$1;

    iget-object v1, v1, Lcom/android/settings/ResetSettings$1;->this$0:Lcom/android/settings/ResetSettings;

    invoke-virtual {v1}, Lcom/android/settings/ResetSettings;->resetSystemSettings()V

    .line 107
    iget-object v1, p0, Lcom/android/settings/ResetSettings$1$2;->this$1:Lcom/android/settings/ResetSettings$1;

    iget-object v1, v1, Lcom/android/settings/ResetSettings$1;->this$0:Lcom/android/settings/ResetSettings;

    invoke-virtual {v1}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SETTINGS_SOFT_RESET"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    iget-object v1, p0, Lcom/android/settings/ResetSettings$1$2;->this$1:Lcom/android/settings/ResetSettings$1;

    iget-object v1, v1, Lcom/android/settings/ResetSettings$1;->this$0:Lcom/android/settings/ResetSettings;

    #getter for: Lcom/android/settings/ResetSettings;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/ResetSettings;->access$000(Lcom/android/settings/ResetSettings;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 110
    .local v0, activityManager:Landroid/app/ActivityManager;
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/android/settings/ResetSettings$1$2;->this$1:Lcom/android/settings/ResetSettings$1;

    iget-object v1, v1, Lcom/android/settings/ResetSettings$1;->this$0:Lcom/android/settings/ResetSettings;

    invoke-virtual {v1}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.settings.SETTINGS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 114
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 116
    return-void
.end method
