.class public Lcom/android/settings/SettingsSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "SettingsSwitchPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public performClick()V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Landroid/preference/SwitchPreference;->onClick()V

    .line 19
    return-void
.end method
