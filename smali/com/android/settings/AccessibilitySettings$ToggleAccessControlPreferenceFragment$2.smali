.class Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->onInstallActionBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 3683
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/AccessibilitySettings$ToggleSwitch;Z)Z
    .locals 4
    .parameter "toggleSwitch"
    .parameter "checked"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3686
    if-eqz p2, :cond_2

    .line 3688
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant_menu"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3689
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->showDialog(I)V

    .line 3708
    :goto_0
    return v2

    .line 3690
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3691
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 3693
    :cond_1
    invoke-virtual {p1, v3}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 3694
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3695
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    iget-object v1, v1, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 3696
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 3700
    :cond_2
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 3701
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0, v3}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 3703
    :cond_3
    invoke-virtual {p1, v2}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 3704
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3705
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    iget-object v1, v1, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_0
.end method
