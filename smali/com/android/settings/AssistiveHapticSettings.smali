.class public Lcom/android/settings/AssistiveHapticSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AssistiveHapticSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AssistiveHapticSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static sSettingsObserver:Lcom/android/settings/AssistiveHapticSettings$SettingsObserver;


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mExtraHapticFeedback:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AssistiveHapticSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/AssistiveHapticSettings;->updateState()V

    return-void
.end method

.method private updateState()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/AssistiveHapticSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 100
    .local v0, saved_value:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AssistiveHapticSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/AssistiveHapticSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 102
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/AssistiveHapticSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 56
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/AssistiveHapticSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 58
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 59
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 60
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 61
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 63
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings/AssistiveHapticSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 64
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 66
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/AssistiveHapticSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 70
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f090545

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 74
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/AssistiveHapticSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 80
    const-string v0, "AssistiveHapticSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/AssistiveHapticSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 83
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f070017

    invoke-virtual {p0, v0}, Lcom/android/settings/AssistiveHapticSettings;->addPreferencesFromResource(I)V

    .line 46
    const-string v0, "extra_haptic_feedback"

    invoke-virtual {p0, v0}, Lcom/android/settings/AssistiveHapticSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AssistiveHapticSettings;->mExtraHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 47
    iget-object v0, p0, Lcom/android/settings/AssistiveHapticSettings;->mExtraHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 48
    iget-object v3, p0, Lcom/android/settings/AssistiveHapticSettings;->mExtraHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AssistiveHapticSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "haptic_feedback_extra"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 51
    return-void

    :cond_0
    move v0, v2

    .line 48
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 129
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 108
    sget-object v0, Lcom/android/settings/AssistiveHapticSettings;->sSettingsObserver:Lcom/android/settings/AssistiveHapticSettings$SettingsObserver;

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lcom/android/settings/AssistiveHapticSettings;->sSettingsObserver:Lcom/android/settings/AssistiveHapticSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/AssistiveHapticSettings$SettingsObserver;->stopObserving()V

    .line 110
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/AssistiveHapticSettings;->sSettingsObserver:Lcom/android/settings/AssistiveHapticSettings$SettingsObserver;

    .line 112
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/AssistiveHapticSettings;->mExtraHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/AssistiveHapticSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_extra"

    iget-object v0, p0, Lcom/android/settings/AssistiveHapticSettings;->mExtraHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 123
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 119
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 86
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 88
    invoke-direct {p0}, Lcom/android/settings/AssistiveHapticSettings;->updateState()V

    .line 90
    sget-object v0, Lcom/android/settings/AssistiveHapticSettings;->sSettingsObserver:Lcom/android/settings/AssistiveHapticSettings$SettingsObserver;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/android/settings/AssistiveHapticSettings$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/AssistiveHapticSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/AssistiveHapticSettings$SettingsObserver;-><init>(Lcom/android/settings/AssistiveHapticSettings;Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/AssistiveHapticSettings;->sSettingsObserver:Lcom/android/settings/AssistiveHapticSettings$SettingsObserver;

    .line 92
    sget-object v0, Lcom/android/settings/AssistiveHapticSettings;->sSettingsObserver:Lcom/android/settings/AssistiveHapticSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/AssistiveHapticSettings$SettingsObserver;->startObserving()V

    .line 95
    :cond_0
    return-void
.end method
