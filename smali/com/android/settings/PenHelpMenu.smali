.class public Lcom/android/settings/PenHelpMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PenHelpMenu.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const v0, 0x7f07006d

    invoke-virtual {p0, v0}, Lcom/android/settings/PenHelpMenu;->addPreferencesFromResource(I)V

    .line 48
    :goto_0
    return-void

    .line 36
    :cond_0
    const v0, 0x7f07006b

    invoke-virtual {p0, v0}, Lcom/android/settings/PenHelpMenu;->addPreferencesFromResource(I)V

    goto :goto_0
.end method
