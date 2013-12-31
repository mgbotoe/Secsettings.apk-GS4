.class public Lcom/android/settings/FingerAirViewSettingsMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FingerAirViewSettingsMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

.field private mMagnifier:Landroid/preference/SwitchPreferenceScreen;

.field private mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static isAllOptionDisabled(Landroid/content/ContentResolver;)Z
    .locals 8
    .parameter "cr"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 175
    const-string v7, "finger_air_view_magnifier"

    invoke-static {p0, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 176
    .local v1, magnifier:I
    const-string v7, "finger_air_view_information_preview"

    invoke-static {p0, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 177
    .local v0, informationPreview:I
    const-string v7, "finger_air_view_pregress_bar_preview"

    invoke-static {p0, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 178
    .local v2, progressBarPreview:I
    const-string v7, "finger_air_view_speed_dial_tip"

    invoke-static {p0, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 179
    .local v4, speedDialTip:I
    const-string v7, "finger_air_view_sound_and_haptic_feedback"

    invoke-static {p0, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 181
    .local v3, soundAndHapticFeedback:I
    or-int v7, v1, v0

    or-int/2addr v7, v2

    or-int/2addr v7, v4

    or-int/2addr v7, v3

    if-ge v7, v5, :cond_0

    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v3, 0x7f070044

    invoke-virtual {p0, v3}, Lcom/android/settings/FingerAirViewSettingsMenu;->addPreferencesFromResource(I)V

    .line 61
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 62
    invoke-virtual {p0, v2}, Lcom/android/settings/FingerAirViewSettingsMenu;->setHasOptionsMenu(Z)V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    .line 66
    const-string v3, "magnifier"

    invoke-virtual {p0, v3}, Lcom/android/settings/FingerAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    .line 67
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 68
    const-string v3, "information_preview"

    invoke-virtual {p0, v3}, Lcom/android/settings/FingerAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    .line 69
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 70
    const-string v3, "sound_and_haptic_feedback"

    invoke-virtual {p0, v3}, Lcom/android/settings/FingerAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 71
    const-string v3, "progress_bar_preview"

    invoke-virtual {p0, v3}, Lcom/android/settings/FingerAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    .line 72
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 73
    const-string v3, "speed_dial_tip"

    invoke-virtual {p0, v3}, Lcom/android/settings/FingerAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    .line 74
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 77
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    iget-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v3, :cond_1

    sget v3, Lcom/android/settings/FingerAirViewSettingsMenu;->mSettingValue:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "air_view_master_onoff"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 81
    .local v0, extra_bundle:Landroid/os/Bundle;
    const-string v3, "extra_parent_preference_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, targetKey:Ljava/lang/String;
    sget v3, Lcom/android/settings/FingerAirViewSettingsMenu;->mSettingValue:I

    if-ne v3, v2, :cond_2

    .line 84
    .local v2, value:Z
    :goto_0
    const-string v3, "magnifier"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 85
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 86
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/FingerAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 101
    .end local v0           #extra_bundle:Landroid/os/Bundle;
    .end local v1           #targetKey:Ljava/lang/String;
    .end local v2           #value:Z
    :cond_1
    :goto_1
    return-void

    .restart local v0       #extra_bundle:Landroid/os/Bundle;
    .restart local v1       #targetKey:Ljava/lang/String;
    :cond_2
    move v2, v4

    .line 82
    goto :goto_0

    .line 87
    .restart local v2       #value:Z
    :cond_3
    const-string v3, "information_preview"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 88
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 89
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/FingerAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 90
    :cond_4
    const-string v3, "progress_bar_preview"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 91
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 92
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/FingerAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 93
    :cond_5
    const-string v3, "speed_dial_tip"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 95
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/FingerAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x1

    const v1, 0x7f090e92

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020196

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 136
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 140
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 148
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 142
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "air_view"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 145
    const/4 v1, 0x1

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 119
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/settings/FingerAirViewSettingsMenu;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090e3c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v1, 0x1

    .line 188
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 190
    .local v0, value:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v2, :cond_2

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view_magnifier"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 200
    :cond_0
    :goto_1
    return v1

    .line 188
    .end local v0           #value:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 192
    .restart local v0       #value:I
    :cond_2
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v2, :cond_3

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view_information_preview"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view_full_text"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 195
    :cond_3
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v2, :cond_4

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view_pregress_bar_preview"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 197
    :cond_4
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v2, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view_speed_dial_tip"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 155
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    iget-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v4, :cond_0

    .line 157
    sget v4, Lcom/android/settings/FingerAirViewSettingsMenu;->mSettingValue:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 158
    sget v4, Lcom/android/settings/FingerAirViewSettingsMenu;->mSettingValue:I

    if-ne v4, v2, :cond_2

    move v1, v2

    .local v1, value:Z
    :goto_0
    move-object v0, p2

    .line 159
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 160
    .local v0, checkboxStatePreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 167
    .end local v0           #checkboxStatePreference:Landroid/preference/CheckBoxPreference;
    .end local v1           #value:Z
    :cond_0
    iget-object v4, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_air_view_sound_and_haptic_feedback"

    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_2
    move v1, v3

    .line 158
    goto :goto_0

    :cond_3
    move v2, v3

    .line 168
    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    .line 109
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "finger_air_view_magnifier"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 110
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "finger_air_view_information_preview"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 111
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "finger_air_view_sound_and_haptic_feedback"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 112
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "finger_air_view_pregress_bar_preview"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "finger_air_view_speed_dial_tip"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 114
    return-void

    :cond_0
    move v0, v2

    .line 109
    goto :goto_0

    :cond_1
    move v0, v2

    .line 110
    goto :goto_1

    :cond_2
    move v0, v2

    .line 111
    goto :goto_2

    :cond_3
    move v0, v2

    .line 112
    goto :goto_3

    :cond_4
    move v1, v2

    .line 113
    goto :goto_4
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 127
    return-void
.end method
