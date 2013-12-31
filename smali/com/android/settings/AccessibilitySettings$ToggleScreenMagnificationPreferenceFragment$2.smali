.class Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$2;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->onInstallActionBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 3529
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/AccessibilitySettings$ToggleSwitch;Z)Z
    .locals 5
    .parameter "toggleSwitch"
    .parameter "checked"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3532
    const/4 v0, 0x0

    .line 3533
    .local v0, bAirFeatureEnabled:Z
    if-ne p2, v4, :cond_2

    .line 3534
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3535
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_view_master_onoff"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 3536
    const/4 v0, 0x1

    .line 3540
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3545
    :cond_1
    :goto_1
    if-ne v0, v4, :cond_2

    .line 3546
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v1, v4}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->showDialog(I)V

    .line 3548
    :cond_2
    invoke-virtual {p1, p2}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 3549
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3550
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;

    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;

    iget-object v2, v2, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 3551
    return v3

    .line 3537
    :cond_3
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 3538
    const/4 v0, 0x1

    goto :goto_0

    .line 3541
    :cond_4
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$2;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_writing_buddy"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 3542
    const/4 v0, 0x1

    goto :goto_1
.end method
