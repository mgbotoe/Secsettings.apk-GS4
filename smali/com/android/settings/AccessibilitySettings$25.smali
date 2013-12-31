.class Lcom/android/settings/AccessibilitySettings$25;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessibilitySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 2677
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$25;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 2680
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$25;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v1}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_use"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2681
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$25;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v1}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2682
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.accesscontrol.TOGGLE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2683
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$25;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v1}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2685
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$25;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v1}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2686
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$25;->this$0:Lcom/android/settings/AccessibilitySettings;

    #getter for: Lcom/android/settings/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/AccessibilitySettings;->access$1500(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2687
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$25;->this$0:Lcom/android/settings/AccessibilitySettings;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/settings/AccessibilitySettings;->removeDialog(I)V

    .line 2688
    return-void
.end method
