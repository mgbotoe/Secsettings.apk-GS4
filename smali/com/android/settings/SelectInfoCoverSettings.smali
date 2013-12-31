.class public Lcom/android/settings/SelectInfoCoverSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SelectInfoCoverSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mWalkingMate:Landroid/preference/CheckBoxPreference;

.field private mWeather:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public checkNetwork()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 137
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectInfoCoverSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 138
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 139
    .local v3, ni:Landroid/net/NetworkInfo;
    if-nez v3, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v4

    .line 143
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 144
    .local v2, isWifiAvail:Z
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 146
    if-nez v3, :cond_2

    move v4, v2

    .line 148
    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 155
    .local v1, isMobileAvail:Z
    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v3, 0x7f070097

    invoke-virtual {p0, v3}, Lcom/android/settings/SelectInfoCoverSettings;->addPreferencesFromResource(I)V

    .line 51
    const-string v3, "weather"

    invoke-virtual {p0, v3}, Lcom/android/settings/SelectInfoCoverSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    .line 52
    iget-object v3, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 53
    const-string v3, "walking_mate"

    invoke-virtual {p0, v3}, Lcom/android/settings/SelectInfoCoverSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    .line 56
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    iget-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v3, :cond_0

    .line 58
    sget v3, Lcom/android/settings/SelectInfoCoverSettings;->mSettingValue:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 60
    .local v0, extra_bundle:Landroid/os/Bundle;
    const-string v3, "extra_parent_preference_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, targetKey:Ljava/lang/String;
    sget v3, Lcom/android/settings/SelectInfoCoverSettings;->mSettingValue:I

    if-ne v3, v2, :cond_1

    .line 62
    .local v2, value:Z
    :goto_0
    const-string v3, "weather"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    iget-object v3, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    iget-object v3, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 65
    iget-object v3, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/SelectInfoCoverSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 72
    .end local v0           #extra_bundle:Landroid/os/Bundle;
    .end local v1           #targetKey:Ljava/lang/String;
    .end local v2           #value:Z
    :cond_0
    return-void

    .line 61
    .restart local v0       #extra_bundle:Landroid/os/Bundle;
    .restart local v1       #targetKey:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 115
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, key:Ljava/lang/String;
    const-string v5, "weather"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v2, p2

    .line 117
    check-cast v2, Ljava/lang/Boolean;

    .line 119
    .local v2, value:Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->checkNetwork()Z

    move-result v5

    if-nez v5, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f090b74

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 122
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, mIntent:Landroid/content/Intent;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 124
    const-string v5, "START"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    :goto_0
    const-string v5, "PACKAGE"

    const-string v6, "android"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v5, "CP"

    const-string v6, "Accuweather"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "weather_cover"

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    move v3, v4

    :cond_1
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    .end local v1           #mIntent:Landroid/content/Intent;
    .end local v2           #value:Ljava/lang/Boolean;
    :cond_2
    return v4

    .line 126
    .restart local v1       #mIntent:Landroid/content/Intent;
    .restart local v2       #value:Ljava/lang/Boolean;
    :cond_3
    const-string v5, "START"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 91
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 92
    iget-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v5, :cond_0

    .line 93
    sget v5, Lcom/android/settings/SelectInfoCoverSettings;->mSettingValue:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 94
    sget v5, Lcom/android/settings/SelectInfoCoverSettings;->mSettingValue:I

    if-ne v5, v3, :cond_2

    move v2, v3

    .local v2, value:Z
    :goto_0
    move-object v0, p2

    .line 95
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 96
    .local v0, checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 97
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 103
    .end local v0           #checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    .end local v2           #value:Z
    :cond_0
    iget-object v5, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_1

    .line 104
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.sec.android.app.shealth.COVER"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v1, mIntent:Landroid/content/Intent;
    const-string v5, "visibility"

    iget-object v6, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    const-string v5, "type"

    const-string v6, "WALKMATE"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "walk_mate"

    iget-object v7, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_1
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    .end local v1           #mIntent:Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    :cond_2
    move v2, v4

    .line 94
    goto :goto_0

    .restart local v1       #mIntent:Landroid/content/Intent;
    :cond_3
    move v3, v4

    .line 108
    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->updateState()V

    .line 79
    return-void
.end method

.method public updateState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    iget-object v3, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "weather_cover"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/SelectInfoCoverSettings;->mWalkingMate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SelectInfoCoverSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "walk_mate"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 84
    return-void

    :cond_0
    move v0, v2

    .line 82
    goto :goto_0

    :cond_1
    move v1, v2

    .line 83
    goto :goto_1
.end method
