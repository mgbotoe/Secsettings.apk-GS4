.class public Lcom/android/settings/SoftwareUpdateSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SoftwareUpdateSettings.java"


# static fields
.field private static SETTING_AUTO_UPDATE:Ljava/lang/String;

.field private static SETTING_WIFI_ONLY:Ljava/lang/String;


# instance fields
.field private AutoUpdate:Landroid/preference/CheckBoxPreference;

.field private WifiOnly:Landroid/preference/CheckBoxPreference;

.field private mDisplaySystemUpdateMenu:Z

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "SOFTWARE_UPDATE_AUTO_UPDATE"

    sput-object v0, Lcom/android/settings/SoftwareUpdateSettings;->SETTING_AUTO_UPDATE:Ljava/lang/String;

    .line 36
    const-string v0, "SOFTWARE_UPDATE_WIFI_ONLY"

    sput-object v0, Lcom/android/settings/SoftwareUpdateSettings;->SETTING_WIFI_ONLY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->mDisplaySystemUpdateMenu:Z

    return-void
.end method

.method private InitComponent()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    const-string v0, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "auto_update"

    invoke-virtual {p0, v3}, Lcom/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 120
    :cond_1
    const-string v0, "auto_update"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->AutoUpdate:Landroid/preference/CheckBoxPreference;

    .line 122
    iget-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->AutoUpdate:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->AutoUpdate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 124
    iget-object v3, p0, Lcom/android/settings/SoftwareUpdateSettings;->AutoUpdate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lcom/android/settings/SoftwareUpdateSettings;->SETTING_AUTO_UPDATE:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 127
    :cond_2
    const-string v0, "wifi_only"

    invoke-virtual {p0, v0}, Lcom/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->WifiOnly:Landroid/preference/CheckBoxPreference;

    .line 128
    iget-object v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->WifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 129
    iget-object v3, p0, Lcom/android/settings/SoftwareUpdateSettings;->WifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lcom/android/settings/SoftwareUpdateSettings;->SETTING_WIFI_ONLY:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "SMLDM_BEARER"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 137
    :goto_2
    iget-boolean v0, p0, Lcom/android/settings/SoftwareUpdateSettings;->mDisplaySystemUpdateMenu:Z

    if-nez v0, :cond_3

    .line 138
    const-string v0, "Software Update"

    const-string v1, "Only display Update Profile, Update PRL, UICC Unlock options for Samsung FOTA - Sprint devices."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "update_prl"

    invoke-virtual {p0, v1}, Lcom/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "update_profile"

    invoke-virtual {p0, v1}, Lcom/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "uicc_unlock"

    invoke-virtual {p0, v1}, Lcom/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 143
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 124
    goto :goto_0

    :cond_5
    move v0, v2

    .line 129
    goto :goto_1

    .line 133
    :cond_6
    const-string v0, "Software Update"

    const-string v1, "Remove Wifi Only Option"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "wifi_only"

    invoke-virtual {p0, v1}, Lcom/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method private setOTAMenu(Ljava/lang/String;Z)V
    .locals 1
    .parameter "key"
    .parameter "enabled"

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 106
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 109
    :cond_0
    return-void
.end method

.method private setOTAMenu(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 99
    const-string v0, "update"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/SoftwareUpdateSettings;->setOTAMenu(Ljava/lang/String;Z)V

    .line 100
    const-string v0, "auto_update"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/SoftwareUpdateSettings;->setOTAMenu(Ljava/lang/String;Z)V

    .line 101
    const-string v0, "wifi_only"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/SoftwareUpdateSettings;->setOTAMenu(Ljava/lang/String;Z)V

    .line 102
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const-string v1, "Software Update"

    const-string v2, "onCreate Software Update"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const v1, 0x7f0700a0

    invoke-virtual {p0, v1}, Lcom/android/settings/SoftwareUpdateSettings;->addPreferencesFromResource(I)V

    .line 60
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, salesCode:Ljava/lang/String;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/SoftwareUpdateSettings;->mDisplaySystemUpdateMenu:Z

    .line 63
    invoke-direct {p0}, Lcom/android/settings/SoftwareUpdateSettings;->InitComponent()V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/settings/SoftwareUpdateSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 68
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v7, 0x20

    .line 147
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, key:Ljava/lang/String;
    const-string v5, "update"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 149
    const-string v3, "Software Update"

    const-string v4, "Software Update Checked"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v1, Landroid/content/Intent;

    const-string v3, "sec.fota.action.SOFTWARE_UPDATE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 185
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 153
    :cond_1
    const-string v5, "auto_update"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 154
    const-string v5, "Software Update"

    const-string v6, "Auto Update is Selected"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v5, p0, Lcom/android/settings/SoftwareUpdateSettings;->AutoUpdate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 156
    .local v0, bChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/settings/SoftwareUpdateSettings;->SETTING_AUTO_UPDATE:Ljava/lang/String;

    if-eqz v0, :cond_2

    :goto_1
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    new-instance v1, Landroid/content/Intent;

    const-string v3, "sec.fota.intent.AUTOUPDATE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "changed_data"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    move v3, v4

    .line 156
    goto :goto_1

    .line 161
    .end local v0           #bChecked:Z
    :cond_3
    const-string v5, "wifi_only"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 162
    const-string v5, "Software Update"

    const-string v6, "Wifi only is Changed"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v5, p0, Lcom/android/settings/SoftwareUpdateSettings;->WifiOnly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 164
    .restart local v0       #bChecked:Z
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/settings/SoftwareUpdateSettings;->SETTING_WIFI_ONLY:Ljava/lang/String;

    if-eqz v0, :cond_4

    :goto_2
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    new-instance v1, Landroid/content/Intent;

    const-string v3, "sec.fota.intent.WIFIONLY"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 166
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "changed_data"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    move v3, v4

    .line 164
    goto :goto_2

    .line 169
    .end local v0           #bChecked:Z
    :cond_5
    const-string v3, "update_prl"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 170
    const-string v3, "Software Update"

    const-string v4, "Update PRL is clicked"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.sprint.START_PRL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 174
    .end local v1           #intent:Landroid/content/Intent;
    :cond_6
    const-string v3, "update_profile"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 175
    const-string v3, "Software Update"

    const-string v4, "Update Profile is clicked"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.sprint.START_DP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 179
    .end local v1           #intent:Landroid/content/Intent;
    :cond_7
    const-string v3, "uicc_unlock"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    const-string v3, "Software Update"

    const-string v4, "UICC Unlock is clicked"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.sprint.SIM_UNLOCK"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/SoftwareUpdateSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/settings/SoftwareUpdateSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isOTAUpgradeAllowed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 77
    const-string v1, "Software Update"

    const-string v2, "OTA is disabled."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-boolean v1, p0, Lcom/android/settings/SoftwareUpdateSettings;->mDisplaySystemUpdateMenu:Z

    if-nez v1, :cond_1

    .line 80
    const-string v1, "Software Update"

    const-string v2, "finish Software Update by RestrictionPolicy"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/SoftwareUpdateSettings;->setOTAMenu(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 87
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v1, "Software Update"

    const-string v2, "OTA is enabled."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/SoftwareUpdateSettings;->setOTAMenu(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
