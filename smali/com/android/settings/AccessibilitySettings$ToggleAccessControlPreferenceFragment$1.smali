.class Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$1;
.super Lcom/android/settings/AccessibilitySettings$SettingsContentObserver;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 3648
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$1;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-direct {p0, p2}, Lcom/android/settings/AccessibilitySettings$SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 3654
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$1;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_use"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 3655
    const/4 v0, 0x1

    .line 3658
    .local v0, settingValue:Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment$1;->this$0:Lcom/android/settings/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    iget-object v1, v1, Lcom/android/settings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 3659
    return-void

    .line 3657
    .end local v0           #settingValue:Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #settingValue:Z
    goto :goto_0
.end method
