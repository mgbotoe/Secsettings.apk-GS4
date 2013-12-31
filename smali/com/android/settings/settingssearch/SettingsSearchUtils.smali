.class public Lcom/android/settings/settingssearch/SettingsSearchUtils;
.super Ljava/lang/Object;
.source "SettingsSearchUtils.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    .line 96
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 97
    return-void
.end method

.method private adjustAboutSettings(Lcom/android/settings/settingssearch/SearchList;)V
    .locals 9
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2083
    .line 2084
    const-string v0, ""

    .line 2086
    :try_start_0
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2087
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2088
    const-string v1, "ril.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    move-object v1, v0

    .line 2092
    :goto_0
    const-string v0, "ro.product.model"

    const-string v2, "Unknown"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move v2, v3

    .line 2094
    :goto_1
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_36

    .line 2095
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    .line 2096
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 2098
    if-eqz v5, :cond_20

    .line 2099
    const-string v6, "help"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v4

    .line 2289
    :goto_2
    if-eqz v0, :cond_35

    .line 2290
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v2

    :goto_3
    move v2, v0

    .line 2294
    goto :goto_1

    .line 2090
    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0

    .line 2101
    :cond_1
    const-string v6, "software_version"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2102
    const-string v0, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "VMU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "BST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "XAS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    move v0, v4

    .line 2104
    goto :goto_2

    .line 2106
    :cond_2
    const-string v6, "hardware_version_spr"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2107
    const-string v0, "SPR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "VMU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "BST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "XAS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    move v0, v4

    .line 2109
    goto :goto_2

    .line 2111
    :cond_3
    const-string v6, "system_update_settings"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2112
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eqz v5, :cond_4

    move v0, v4

    .line 2113
    goto :goto_2

    .line 2115
    :cond_4
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/Preference;I)Z

    move-result v0

    if-nez v0, :cond_20

    move v0, v4

    .line 2116
    goto :goto_2

    .line 2119
    :cond_5
    const-string v6, "software_update_settings"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2120
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->readSoftwareUpdateType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    move v0, v4

    .line 2121
    goto/16 :goto_2

    .line 2123
    :cond_6
    const-string v6, "software_update_settings_no_subtree"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2124
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->readSoftwareUpdateType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    move v0, v4

    .line 2125
    goto/16 :goto_2

    .line 2127
    :cond_7
    const-string v6, "system_update_settings_na_gsm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2128
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->readSoftwareUpdateType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    move v0, v4

    .line 2129
    goto/16 :goto_2

    .line 2131
    :cond_8
    const-string v6, "system_update_settings_vzw"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2132
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->readSoftwareUpdateType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    move v0, v4

    .line 2133
    goto/16 :goto_2

    .line 2135
    :cond_9
    const-string v6, "system_update_settings_spr"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2136
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->readSoftwareUpdateType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    move v0, v4

    .line 2137
    goto/16 :goto_2

    .line 2139
    :cond_a
    const-string v6, "no_software_update_settings"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 2140
    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->readSoftwareUpdateType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    move v0, v4

    .line 2141
    goto/16 :goto_2

    .line 2143
    :cond_b
    const-string v6, "additional_system_update_settings"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2144
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0c0005

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eq v0, v4, :cond_20

    move v0, v4

    .line 2145
    goto/16 :goto_2

    .line 2147
    :cond_c
    const-string v6, "diagnostics_and_usage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2148
    const-string v0, "com.samsung.ccr"

    invoke-direct {p0, v0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->isPackageLoaded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    move v0, v4

    .line 2149
    goto/16 :goto_2

    .line 2151
    :cond_d
    const-string v6, "icon_glossary"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 2152
    const-string v0, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    move v0, v4

    .line 2153
    goto/16 :goto_2

    .line 2155
    :cond_e
    const-string v6, "status_info"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    move v0, v3

    goto/16 :goto_2

    .line 2159
    :cond_f
    const-string v6, "ctc_epush"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2160
    const-string v0, "CTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    move v0, v4

    .line 2161
    goto/16 :goto_2

    .line 2163
    :cond_10
    const-string v6, "sprint_4g_settings"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    move v0, v4

    .line 2165
    goto/16 :goto_2

    .line 2167
    :cond_11
    const-string v6, "container"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 2168
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/Preference;I)Z

    move-result v5

    if-nez v5, :cond_12

    move v0, v4

    .line 2169
    goto/16 :goto_2

    .line 2171
    :cond_12
    new-instance v5, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v6, p1, Lcom/android/settings/settingssearch/SearchList;->header:Landroid/preference/PreferenceActivity$Header;

    iget-wide v6, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    const-string v8, "container"

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/android/settings/settingssearch/SearchItem;-><init>(JLjava/lang/String;Landroid/preference/Preference;)V

    .line 2172
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    .line 2173
    goto/16 :goto_2

    .line 2174
    :cond_13
    const-string v6, "copyright"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 2175
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/Preference;I)Z

    move-result v5

    if-nez v5, :cond_14

    move v0, v4

    .line 2176
    goto/16 :goto_2

    .line 2178
    :cond_14
    new-instance v5, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v6, p1, Lcom/android/settings/settingssearch/SearchList;->header:Landroid/preference/PreferenceActivity$Header;

    iget-wide v6, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    const-string v8, "container"

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/android/settings/settingssearch/SearchItem;-><init>(JLjava/lang/String;Landroid/preference/Preference;)V

    .line 2179
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    .line 2180
    goto/16 :goto_2

    .line 2181
    :cond_15
    const-string v6, "license"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 2182
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/Preference;I)Z

    move-result v5

    if-nez v5, :cond_16

    move v0, v4

    .line 2183
    goto/16 :goto_2

    .line 2185
    :cond_16
    new-instance v5, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v6, p1, Lcom/android/settings/settingssearch/SearchList;->header:Landroid/preference/PreferenceActivity$Header;

    iget-wide v6, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    const-string v8, "container"

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/android/settings/settingssearch/SearchItem;-><init>(JLjava/lang/String;Landroid/preference/Preference;)V

    .line 2186
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    .line 2187
    goto/16 :goto_2

    .line 2188
    :cond_17
    const-string v6, "terms"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 2189
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, v4}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/Preference;I)Z

    move-result v5

    if-nez v5, :cond_18

    move v0, v4

    .line 2190
    goto/16 :goto_2

    .line 2192
    :cond_18
    new-instance v5, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v6, p1, Lcom/android/settings/settingssearch/SearchList;->header:Landroid/preference/PreferenceActivity$Header;

    iget-wide v6, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    const-string v8, "container"

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/android/settings/settingssearch/SearchItem;-><init>(JLjava/lang/String;Landroid/preference/Preference;)V

    .line 2193
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    .line 2194
    goto/16 :goto_2

    .line 2195
    :cond_19
    const-string v6, "samsung_legal"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 2196
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v6, "com.sec.android.app.SecSetupWizard.SamsungLegal"

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    move v0, v4

    .line 2197
    goto/16 :goto_2

    .line 2198
    :cond_1a
    const-string v5, "DCM"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    move v0, v4

    .line 2199
    goto/16 :goto_2

    .line 2201
    :cond_1b
    new-instance v5, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v6, p1, Lcom/android/settings/settingssearch/SearchList;->header:Landroid/preference/PreferenceActivity$Header;

    iget-wide v6, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    const-string v8, "container"

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/android/settings/settingssearch/SearchItem;-><init>(JLjava/lang/String;Landroid/preference/Preference;)V

    .line 2202
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    .line 2203
    goto/16 :goto_2

    .line 2204
    :cond_1c
    const-string v6, "privacy_alert"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 2205
    const-string v5, "VMU"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "SPR"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "BST"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "XAR"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "XAS"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    move v0, v4

    .line 2207
    goto/16 :goto_2

    .line 2209
    :cond_1d
    new-instance v5, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v6, p1, Lcom/android/settings/settingssearch/SearchList;->header:Landroid/preference/PreferenceActivity$Header;

    iget-wide v6, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    const-string v8, "container"

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/android/settings/settingssearch/SearchItem;-><init>(JLjava/lang/String;Landroid/preference/Preference;)V

    .line 2210
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    .line 2211
    goto/16 :goto_2

    .line 2212
    :cond_1e
    const-string v6, "divx_license_settings"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 2213
    new-instance v5, Ljava/io/File;

    const-string v6, "/system/lib/drm/libdivxplugin.so"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2214
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1f

    move v0, v4

    .line 2215
    goto/16 :goto_2

    .line 2217
    :cond_1f
    new-instance v5, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v6, p1, Lcom/android/settings/settingssearch/SearchList;->header:Landroid/preference/PreferenceActivity$Header;

    iget-wide v6, v6, Landroid/preference/PreferenceActivity$Header;->id:J

    const-string v8, "container"

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/android/settings/settingssearch/SearchItem;-><init>(JLjava/lang/String;Landroid/preference/Preference;)V

    .line 2218
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_20
    move v0, v3

    goto/16 :goto_2

    .line 2220
    :cond_21
    const-string v0, "safetylegal"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2221
    const-string v0, "ro.url.safetylegal"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v4

    .line 2222
    goto/16 :goto_2

    .line 2224
    :cond_22
    const-string v0, "telespree_activation"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2225
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2226
    const-string v5, "iconvmu"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    move v0, v4

    .line 2227
    goto/16 :goto_2

    .line 2230
    :cond_23
    const-string v0, "key_label_settings"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2231
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_20

    :cond_24
    move v0, v4

    .line 2232
    goto/16 :goto_2

    .line 2234
    :cond_25
    const-string v0, "device_name"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    move v0, v3

    goto/16 :goto_2

    .line 2238
    :cond_26
    const-string v0, "regulatory_info"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2239
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0c0007

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eq v0, v4, :cond_20

    move v0, v4

    .line 2240
    goto/16 :goto_2

    .line 2242
    :cond_27
    const-string v0, "device_model"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v3

    goto/16 :goto_2

    .line 2244
    :cond_28
    const-string v0, "firmware_version"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v3

    goto/16 :goto_2

    .line 2246
    :cond_29
    const-string v0, "fcc_equipment_id"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2247
    const-string v0, "ro.ril.fccid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v4

    .line 2248
    goto/16 :goto_2

    .line 2250
    :cond_2a
    const-string v0, "baseband_version"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2251
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v4

    .line 2252
    goto/16 :goto_2

    .line 2254
    :cond_2b
    const-string v0, "installed_variant_version"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2255
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v5, "CscFeature_Common_EnableRegionalDevice"

    invoke-virtual {v0, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    move v0, v4

    .line 2256
    goto/16 :goto_2

    .line 2258
    :cond_2c
    const-string v0, "kernel_version"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v3

    goto/16 :goto_2

    .line 2260
    :cond_2d
    const-string v0, "build_number"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    move v0, v3

    goto/16 :goto_2

    .line 2262
    :cond_2e
    const-string v0, "selinux_status"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2263
    const-string v0, "ro.build.selinux"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    move v0, v4

    .line 2264
    goto/16 :goto_2

    .line 2265
    :cond_2f
    const-string v0, "DCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v4

    .line 2266
    goto/16 :goto_2

    .line 2268
    :cond_30
    const-string v0, "country_certification_info"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2269
    const-string v0, "XSG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "XSD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "XST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "XSZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "XSM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "XSS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2271
    :cond_31
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "country_cert_info_enable"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_33

    .line 2272
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "country_cert_info_traid"

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2273
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "country_cert_info_ta"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2274
    iget-object v6, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "country_cert_info_name"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 2275
    if-eqz v0, :cond_32

    if-eqz v5, :cond_32

    if-eqz v6, :cond_32

    move v0, v3

    goto/16 :goto_2

    :cond_32
    move v0, v4

    .line 2277
    goto/16 :goto_2

    :cond_33
    move v0, v4

    .line 2280
    goto/16 :goto_2

    .line 2282
    :catch_1
    move-exception v0

    move v0, v3

    .line 2283
    goto/16 :goto_2

    :cond_34
    move v0, v4

    .line 2285
    goto/16 :goto_2

    .line 2292
    :cond_35
    add-int/lit8 v0, v2, 0x1

    goto/16 :goto_3

    .line 2299
    :cond_36
    return-void
.end method

.method private adjustAccessibilitySettings(Lcom/android/settings/settingssearch/SearchList;)V
    .locals 11
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1406
    new-instance v0, Landroid/speech/tts/TtsEngines;

    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    .line 1407
    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v7, v8

    .line 1409
    :goto_0
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-ne v0, v8, :cond_1

    move v10, v8

    :goto_1
    move v3, v9

    .line 1410
    :goto_2
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_20

    .line 1411
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    .line 1412
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 1414
    if-eqz v6, :cond_8

    .line 1415
    const-string v1, "toggle_auto_rotate_screen_2nd_preference"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v8

    .line 1534
    :goto_3
    if-eqz v0, :cond_1f

    .line 1535
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    move v7, v9

    .line 1407
    goto :goto_0

    :cond_1
    move v10, v9

    .line 1409
    goto :goto_1

    .line 1417
    :cond_2
    const-string v1, "toggle_lock_screen_rotation_preference"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1418
    if-eqz v10, :cond_8

    move v0, v9

    goto :goto_3

    .line 1421
    :cond_3
    const-string v1, "screen_timeout"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1422
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1423
    if-eqz v10, :cond_8

    move v0, v9

    goto :goto_3

    .line 1426
    :cond_4
    const-string v1, "lock_after_timeout"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1427
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v8

    .line 1428
    goto :goto_3

    .line 1429
    :cond_5
    if-eqz v10, :cond_8

    move v0, v9

    goto :goto_3

    .line 1432
    :cond_6
    const-string v1, "toggle_speak_password_preference"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1435
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "market://search?q=pname:com.google.android.marvin.talkback"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v8

    .line 1439
    :goto_4
    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v8

    .line 1440
    goto :goto_3

    .line 1436
    :catch_0
    move-exception v0

    move v0, v9

    .line 1437
    goto :goto_4

    .line 1441
    :cond_7
    if-eqz v10, :cond_8

    :cond_8
    :goto_5
    move v0, v9

    goto :goto_3

    .line 1444
    :cond_9
    const-string v1, "toggle_power_button_ends_call_preference"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1445
    if-eqz v10, :cond_8

    move v0, v8

    .line 1446
    goto :goto_3

    .line 1448
    :cond_a
    const-string v1, "call_answering_ending"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1449
    if-nez v10, :cond_b

    move v0, v8

    .line 1450
    goto :goto_3

    .line 1451
    :cond_b
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v8

    .line 1452
    goto/16 :goto_3

    .line 1454
    :cond_c
    const-string v1, "power_key_hold"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1455
    if-nez v10, :cond_8

    move v0, v8

    .line 1456
    goto/16 :goto_3

    .line 1460
    :cond_d
    const-string v1, "share_acc_setting_menu"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    move v0, v9

    goto/16 :goto_3

    .line 1464
    :cond_e
    const-string v1, "font_size"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1465
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move v0, v9

    goto/16 :goto_3

    .line 1466
    :cond_f
    const-string v0, "screen_magnification_preference_screen"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1467
    if-eqz v10, :cond_8

    move v0, v9

    goto/16 :goto_3

    .line 1470
    :cond_10
    const-string v0, "high_contrast"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1471
    if-nez v10, :cond_8

    move v0, v8

    .line 1472
    goto/16 :goto_3

    .line 1478
    :cond_11
    const-string v0, "color_blind"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v9

    goto/16 :goto_3

    .line 1482
    :cond_12
    const-string v0, "enable_global_gesture_preference_screen"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v9

    goto/16 :goto_3

    .line 1484
    :cond_13
    const-string v0, "tts_settings_preference"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1485
    if-eqz v7, :cond_14

    .line 1486
    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const v2, 0x7f0700af

    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->header:Landroid/preference/PreferenceActivity$Header;

    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/settingssearch/SearchList;->parsingAdditionalPreferenceMenutree(Landroid/content/Context;IIJLjava/lang/String;)Z

    move v0, v9

    goto/16 :goto_3

    :cond_14
    move v0, v8

    .line 1488
    goto/16 :goto_3

    .line 1490
    :cond_15
    const-string v0, "tts_default_rate"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1491
    if-nez v7, :cond_8

    move v0, v8

    .line 1492
    goto/16 :goto_3

    .line 1494
    :cond_16
    const-string v0, "tts_play_example"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1495
    if-nez v7, :cond_8

    move v0, v8

    .line 1496
    goto/16 :goto_3

    .line 1498
    :cond_17
    const-string v0, "toggle_script_injection_preference"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v9

    goto/16 :goto_3

    .line 1500
    :cond_18
    const-string v0, "audio_balance"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1501
    if-nez v10, :cond_8

    move v0, v8

    .line 1502
    goto/16 :goto_3

    .line 1506
    :cond_19
    const-string v0, "mono_audio_key"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1507
    if-nez v10, :cond_8

    move v0, v8

    .line 1508
    goto/16 :goto_3

    .line 1510
    :cond_1a
    const-string v0, "all_sound_off_key"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1511
    if-nez v10, :cond_8

    move v0, v8

    .line 1512
    goto/16 :goto_3

    .line 1514
    :cond_1b
    const-string v0, "flash_notification_key"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1515
    if-nez v10, :cond_8

    move v0, v8

    .line 1516
    goto/16 :goto_3

    .line 1520
    :cond_1c
    const-string v0, "assistant_menu_preference"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v9

    goto/16 :goto_3

    .line 1524
    :cond_1d
    const-string v0, "select_long_press_timeout_preference"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v9

    goto/16 :goto_3

    .line 1526
    :cond_1e
    const-string v0, "access_control_key"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1527
    if-eqz v10, :cond_8

    goto/16 :goto_5

    .line 1537
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 1540
    :cond_20
    return-void
.end method

.method private adjustDateTimeSettings(Lcom/android/settings/settingssearch/SearchList;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2045
    move v1, v2

    :goto_0
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 2046
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    .line 2047
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 2049
    if-eqz v0, :cond_9

    .line 2050
    const-string v4, "auto_time"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2051
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v3

    .line 2074
    :goto_1
    if-eqz v0, :cond_7

    .line 2075
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 2079
    goto :goto_0

    .line 2054
    :cond_0
    const-string v4, "date"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    goto :goto_1

    .line 2056
    :cond_1
    const-string v4, "time"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    goto :goto_1

    .line 2058
    :cond_2
    const-string v4, "auto_zone"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2059
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v3

    .line 2060
    goto :goto_1

    .line 2062
    :cond_3
    const-string v4, "timezone"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    goto :goto_1

    .line 2064
    :cond_4
    const-string v4, "24 hour"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v2

    goto :goto_1

    .line 2066
    :cond_5
    const-string v4, "date_format"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v2

    goto :goto_1

    .line 2068
    :cond_6
    const-string v4, "dualclock_settings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2069
    const-string v0, "SKT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v3

    .line 2070
    goto :goto_1

    .line 2077
    :cond_7
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 2080
    :cond_8
    return-void

    :cond_9
    move v0, v2

    goto :goto_1
.end method

.method private adjustDeviceInfoStatus(Lcom/android/settings/settingssearch/SearchList;)V
    .locals 0
    .parameter "list"

    .prologue
    .line 2392
    return-void
.end method

.method private adjustDisplaySettings(Lcom/android/settings/settingssearch/SearchList;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 940
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    move v1, v2

    .line 941
    :goto_0
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 942
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    .line 943
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 945
    if-eqz v5, :cond_20

    .line 946
    const-string v6, "wallpaper"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v2

    .line 1070
    :goto_1
    if-eqz v0, :cond_1e

    .line 1071
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 1075
    goto :goto_0

    .line 950
    :cond_0
    const-string v6, "led_indicator_settings"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 951
    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v4, :cond_20

    :cond_1
    move v0, v3

    .line 952
    goto :goto_1

    .line 954
    :cond_2
    const-string v6, "notification_panel_edit"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v2

    goto :goto_1

    .line 958
    :cond_3
    const-string v6, "key_multi_window"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 959
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "com.sec.feature.multiwindow.phone"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 960
    if-nez v0, :cond_20

    move v0, v3

    .line 961
    goto :goto_1

    .line 963
    :cond_4
    const-string v6, "contextualpage_settings"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v0, v3

    .line 965
    goto :goto_1

    .line 967
    :cond_5
    const-string v6, "screen_mode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v0, v2

    goto :goto_1

    .line 971
    :cond_6
    const-string v6, "brightness"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v0, v2

    goto :goto_1

    .line 975
    :cond_7
    const-string v6, "accelerometer_second"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move v0, v3

    .line 976
    goto :goto_1

    .line 977
    :cond_8
    const-string v6, "accelerometer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 978
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v3

    .line 979
    goto :goto_1

    .line 981
    :cond_9
    const-string v6, "screen_timeout"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 982
    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move v0, v2

    goto/16 :goto_1

    .line 986
    :cond_a
    const-string v6, "screensaver"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 987
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1110047

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_20

    move v0, v3

    .line 988
    goto/16 :goto_1

    .line 990
    :cond_b
    const-string v6, "smart_screen"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 991
    if-eqz v4, :cond_20

    move v0, v3

    .line 992
    goto/16 :goto_1

    .line 994
    :cond_c
    const-string v6, "intelligent_rotation"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v0, v3

    .line 996
    goto/16 :goto_1

    .line 998
    :cond_d
    const-string v6, "intelligent_sleep"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    move v0, v3

    .line 1000
    goto/16 :goto_1

    .line 1002
    :cond_e
    const-string v6, "MONOTYPE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    move v0, v2

    goto/16 :goto_1

    .line 1004
    :cond_f
    const-string v6, "font_size"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1005
    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move v0, v2

    goto/16 :goto_1

    .line 1006
    :cond_10
    const-string v0, "clear_font"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v3

    .line 1008
    goto/16 :goto_1

    .line 1010
    :cond_11
    const-string v0, "quick_launch"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1013
    :try_start_0
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 1014
    invoke-interface {v0}, Landroid/view/IWindowManager;->hasSystemNavBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_13

    move v0, v3

    .line 1018
    :goto_3
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_12

    if-eqz v0, :cond_20

    :cond_12
    move v0, v3

    .line 1019
    goto/16 :goto_1

    :cond_13
    move v0, v2

    .line 1014
    goto :goto_3

    .line 1015
    :catch_0
    move-exception v0

    move v0, v2

    .line 1016
    goto :goto_3

    .line 1021
    :cond_14
    const-string v0, "sub_lcd_auto_lock"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v3

    .line 1022
    goto/16 :goto_1

    .line 1023
    :cond_15
    const-string v0, "key_night_mode"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v3

    .line 1024
    goto/16 :goto_1

    .line 1025
    :cond_16
    const-string v0, "key_backlight"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1026
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1110043

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eq v0, v3, :cond_17

    move v0, v2

    goto/16 :goto_1

    :cond_17
    move v0, v3

    .line 1028
    goto/16 :goto_1

    .line 1030
    :cond_18
    const-string v0, "display_battery_level"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v2

    goto/16 :goto_1

    .line 1034
    :cond_19
    const-string v0, "edit_screen_capture"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1038
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "com.sec.spen.flashannotate"

    const/16 v6, 0x80

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    move v0, v2

    .line 1045
    goto/16 :goto_1

    .line 1048
    :cond_1a
    const-string v0, "power_saving_mode"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1056
    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v2

    goto/16 :goto_1

    .line 1060
    :cond_1b
    const-string v0, "auto_adjust_touch"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v2

    goto/16 :goto_1

    .line 1064
    :cond_1c
    const-string v0, "notification_pulse"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v3

    .line 1065
    goto/16 :goto_1

    .line 1066
    :cond_1d
    const-string v0, "wifi_display"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v3

    .line 1067
    goto/16 :goto_1

    .line 1073
    :cond_1e
    add-int/lit8 v0, v1, 0x1

    goto/16 :goto_2

    .line 1076
    :cond_1f
    return-void

    .line 1039
    :catch_1
    move-exception v0

    goto :goto_4

    :cond_20
    move v0, v2

    goto/16 :goto_1
.end method

.method private adjustDockSettings(Lcom/android/settings/settingssearch/SearchList;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1354
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    move v1, v2

    .line 1355
    :goto_0
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_d

    .line 1356
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    .line 1357
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1359
    if-eqz v0, :cond_e

    .line 1360
    const-string v5, "dock_audio"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    .line 1397
    :goto_1
    if-eqz v0, :cond_c

    .line 1398
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 1402
    goto :goto_0

    .line 1362
    :cond_0
    const-string v5, "dock_sounds"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1363
    if-eqz v4, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    .line 1364
    goto :goto_1

    .line 1366
    :cond_2
    const-string v5, "cradle_enable"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1367
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    .line 1368
    goto :goto_1

    .line 1369
    :cond_3
    if-eqz v4, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v3

    .line 1370
    goto :goto_1

    .line 1372
    :cond_5
    const-string v5, "desk_home_screen_display"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1373
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    .line 1374
    goto :goto_1

    .line 1375
    :cond_6
    if-eqz v4, :cond_7

    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v3

    .line 1376
    goto :goto_1

    .line 1378
    :cond_8
    const-string v5, "automatic_unlock"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v0, v2

    goto :goto_1

    .line 1382
    :cond_9
    const-string v5, "audio_output"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v0, v2

    goto :goto_1

    .line 1388
    :cond_a
    const-string v5, "audio_applications"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1389
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v5, 0xa0

    if-le v0, v5, :cond_b

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_b
    move v0, v3

    .line 1393
    goto :goto_1

    .line 1400
    :cond_c
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 1403
    :cond_d
    return-void

    :cond_e
    move v0, v2

    goto/16 :goto_1
.end method

.method private adjustDormantModeSettings(Lcom/android/settings/settingssearch/SearchList;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1238
    move v1, v2

    :goto_0
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 1239
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    .line 1240
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1242
    if-eqz v0, :cond_b

    .line 1243
    const-string v4, "dormant_mode_help"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 1267
    :goto_1
    if-eqz v0, :cond_9

    .line 1268
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 1272
    goto :goto_0

    .line 1245
    :cond_0
    const-string v4, "disable_incoming_calls"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1246
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_1
    move v0, v3

    .line 1247
    goto :goto_1

    .line 1249
    :cond_2
    const-string v4, "disable_notifications"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    goto :goto_1

    .line 1251
    :cond_3
    const-string v4, "disable_alarm_and_timer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    goto :goto_1

    .line 1255
    :cond_4
    const-string v4, "disable_led_indicator"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1256
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v3

    .line 1257
    goto :goto_1

    .line 1259
    :cond_5
    const-string v4, "always"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v2

    goto :goto_1

    .line 1261
    :cond_6
    const-string v4, "allowed_contacts"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "allowed_list"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1262
    :cond_7
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_8
    move v0, v3

    .line 1263
    goto :goto_1

    .line 1270
    :cond_9
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 1273
    :cond_a
    return-void

    :cond_b
    move v0, v2

    goto :goto_1
.end method

.method private adjustDrivingModeSettings(Lcom/android/settings/settingssearch/SearchList;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1310
    move v1, v2

    :goto_0
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 1311
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    .line 1312
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1314
    if-eqz v0, :cond_a

    .line 1315
    const-string v4, "incoming_call_notification"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1316
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_0
    move v0, v3

    .line 1346
    :goto_1
    if-eqz v0, :cond_b

    .line 1347
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 1351
    goto :goto_0

    .line 1319
    :cond_1
    const-string v4, "message_notification"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1320
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1321
    :cond_2
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isMessageCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v3

    .line 1322
    goto :goto_1

    .line 1325
    :cond_3
    const-string v4, "email_notification"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    goto :goto_1

    .line 1327
    :cond_4
    const-string v4, "voice_mail_notification"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1328
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move v0, v3

    .line 1329
    goto :goto_1

    .line 1330
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    .line 1331
    goto :goto_1

    .line 1333
    :cond_7
    const-string v4, "alarm_notification"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1335
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.sec.android.app.clockpackage"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1339
    goto :goto_1

    .line 1337
    :catch_0
    move-exception v0

    move v0, v3

    .line 1339
    goto :goto_1

    .line 1340
    :cond_8
    const-string v4, "schedule_notification"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v0, v2

    goto :goto_1

    .line 1342
    :cond_9
    const-string v4, "unlock_screen_contents"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_a
    move v0, v2

    goto/16 :goto_1

    .line 1349
    :cond_b
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 1352
    :cond_c
    return-void
.end method

.method private adjustFingerAirViewSettings(Lcom/android/settings/settingssearch/SearchList;)V
    .locals 0
    .parameter "list"

    .prologue
    .line 1792
    return-void
.end method

.method private adjustLanguageSettings(Lcom/android/settings/settingssearch/SearchList;)V
    .locals 11
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1543
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.RecognitionService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1547
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 1549
    new-instance v0, Landroid/speech/tts/TtsEngines;

    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    .line 1550
    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v7, v8

    :goto_0
    move v3, v9

    .line 1552
    :goto_1
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_14

    .line 1553
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    .line 1554
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 1556
    if-eqz v6, :cond_15

    .line 1557
    const-string v0, "phone_language"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1558
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v8, :cond_15

    move v0, v8

    .line 1615
    :goto_2
    if-eqz v0, :cond_13

    .line 1616
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    move v7, v9

    .line 1550
    goto :goto_0

    .line 1561
    :cond_1
    const-string v0, "key_user_dictionary_settings"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1562
    const-string v0, "VZW"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1563
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SearchItem;

    .line 1564
    iget-object v0, v0, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    const v1, 0x7f0907bb

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    move v0, v9

    .line 1565
    goto :goto_2

    :cond_2
    move v0, v8

    .line 1566
    goto :goto_2

    .line 1568
    :cond_3
    const-string v0, "current_input_method"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v9

    goto :goto_2

    .line 1570
    :cond_4
    const-string v0, "auto_replace"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "auto_caps"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "auto_punctuate"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v0, v8

    .line 1575
    goto :goto_2

    :cond_6
    const-string v0, "recognizer"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1576
    if-eqz v10, :cond_7

    if-eq v10, v8, :cond_7

    move v0, v9

    goto :goto_2

    :cond_7
    move v0, v8

    .line 1577
    goto :goto_2

    .line 1579
    :cond_8
    const-string v0, "recognizer_settings"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1580
    if-eqz v10, :cond_9

    move v0, v9

    goto :goto_2

    :cond_9
    move v0, v8

    .line 1581
    goto :goto_2

    .line 1583
    :cond_a
    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v9

    goto :goto_2

    .line 1584
    :cond_b
    const-string v0, "tts_settings"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1585
    if-eqz v7, :cond_c

    .line 1586
    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const v2, 0x7f0700af

    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->header:Landroid/preference/PreferenceActivity$Header;

    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/settingssearch/SearchList;->parsingAdditionalPreferenceMenutree(Landroid/content/Context;IIJLjava/lang/String;)Z

    move v0, v9

    goto/16 :goto_2

    :cond_c
    move v0, v8

    .line 1588
    goto/16 :goto_2

    .line 1590
    :cond_d
    const-string v0, "tts_default_rate"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1591
    if-nez v7, :cond_15

    move v0, v8

    .line 1592
    goto/16 :goto_2

    .line 1594
    :cond_e
    const-string v0, "tts_play_example"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1595
    if-nez v7, :cond_15

    move v0, v8

    .line 1596
    goto/16 :goto_2

    .line 1598
    :cond_f
    const-string v0, "pointer_speed"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v9

    goto/16 :goto_2

    .line 1600
    :cond_10
    const-string v0, "vibrate_input_devices"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1602
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    move v0, v9

    move v1, v9

    .line 1603
    :goto_3
    array-length v4, v2

    if-ge v0, v4, :cond_12

    .line 1604
    aget v4, v2, v0

    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    .line 1605
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual {v4}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v4

    if-eqz v4, :cond_11

    move v1, v8

    .line 1603
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1610
    :cond_12
    if-nez v1, :cond_15

    move v0, v8

    .line 1611
    goto/16 :goto_2

    .line 1618
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1621
    :cond_14
    return-void

    :cond_15
    move v0, v9

    goto/16 :goto_2
.end method

.method private adjustLedIndicatorSettings(Lcom/android/settings/settingssearch/SearchList;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1079
    move v1, v2

    :goto_0
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1080
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    .line 1081
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1083
    if-eqz v0, :cond_2

    .line 1084
    const-string v3, "led_indicator_incoming_notification_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1085
    const/4 v0, 0x1

    .line 1088
    :goto_1
    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 1093
    goto :goto_0

    .line 1091
    :cond_0
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 1094
    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private adjustLocationSettings(Lcom/android/settings/settingssearch/SearchList;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1863
    move v1, v2

    :goto_0
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 1864
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    .line 1865
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 1867
    if-eqz v4, :cond_a

    .line 1868
    const-string v5, "location_toggle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v2

    .line 1917
    :goto_1
    if-eqz v0, :cond_8

    .line 1918
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 1922
    goto :goto_0

    .line 1870
    :cond_0
    const-string v5, "location_e911"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v3

    .line 1872
    goto :goto_1

    .line 1874
    :cond_1
    const-string v5, "location_vzw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    .line 1876
    goto :goto_1

    .line 1878
    :cond_2
    const-string v5, "location_vzw_gps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v3

    .line 1880
    goto :goto_1

    .line 1882
    :cond_3
    const-string v5, "location_vzw_network"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v0, v3

    .line 1884
    goto :goto_1

    .line 1886
    :cond_4
    const-string v5, "location_gps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1889
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android.hardware.location.gps"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v3

    .line 1890
    goto :goto_1

    .line 1892
    :cond_5
    const-string v5, "location_network"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1897
    iget-object v4, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1898
    const v4, 0x7f0906b1

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(I)V

    move v0, v2

    goto :goto_1

    .line 1901
    :cond_6
    const-string v0, "location_history"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    .line 1903
    goto :goto_1

    .line 1905
    :cond_7
    const-string v0, "key_my_place"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    .line 1912
    goto :goto_1

    .line 1920
    :cond_8
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 1923
    :cond_9
    return-void

    :cond_a
    move v0, v2

    goto :goto_1
.end method

.method private adjustLockScreenMenuSettings(Lcom/android/settings/settingssearch/SearchList;)V
    .locals 11
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 743
    new-instance v9, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 744
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "my_profile_enabled"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 746
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move v3, v7

    .line 747
    :goto_0
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_29

    .line 748
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    .line 749
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 751
    if-eqz v6, :cond_2a

    .line 752
    const-string v0, "visiblepattern"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    const/high16 v1, 0x1

    if-eq v0, v1, :cond_2a

    move v0, v8

    .line 931
    :goto_1
    if-eqz v0, :cond_28

    .line 932
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 756
    :cond_0
    const-string v0, "owner_info_settings"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 757
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SearchItem;

    .line 758
    const-string v1, "lock_screen_widget_options"

    iget-object v2, v0, Lcom/android/settings/settingssearch/SearchItem;->parentKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "lock_screen_options"

    iget-object v0, v0, Lcom/android/settings/settingssearch/SearchItem;->parentKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 763
    :cond_1
    if-ne v10, v8, :cond_2a

    .line 764
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-nez v0, :cond_2a

    move v0, v8

    .line 765
    goto :goto_1

    :cond_2
    move v0, v8

    .line 772
    goto :goto_1

    .line 775
    :cond_3
    const-string v0, "quick_note"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v8

    .line 777
    goto :goto_1

    .line 779
    :cond_4
    const-string v0, "unlock_tactile_feedback"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 780
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_2a

    move v0, v8

    .line 781
    goto :goto_1

    .line 783
    :cond_5
    const-string v0, "power_button_instantly_locks"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 784
    const-string v0, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 785
    if-eqz v0, :cond_2a

    move v0, v8

    .line 786
    goto :goto_1

    .line 788
    :cond_6
    const-string v0, "dualclock_settings"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 789
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_7
    move v1, v8

    .line 792
    :goto_2
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SearchItem;

    .line 793
    const-string v2, "lock_screen_widget_options"

    iget-object v4, v0, Lcom/android/settings/settingssearch/SearchItem;->parentKey:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "lock_screen_options"

    iget-object v0, v0, Lcom/android/settings/settingssearch/SearchItem;->parentKey:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 796
    :cond_8
    if-ne v10, v8, :cond_9

    move v1, v8

    :cond_9
    move v0, v1

    .line 803
    goto/16 :goto_1

    :cond_a
    const-string v0, "clock_size"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 807
    if-ne v10, v8, :cond_2a

    move v0, v8

    .line 808
    goto/16 :goto_1

    .line 811
    :cond_b
    const-string v0, "lock_screen_date_and_year"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 815
    if-ne v10, v8, :cond_2a

    move v0, v8

    .line 816
    goto/16 :goto_1

    .line 819
    :cond_c
    const-string v0, "safetyzone_settings"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v8

    .line 820
    goto/16 :goto_1

    .line 821
    :cond_d
    const-string v0, "unlock_set_or_change"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v7

    goto/16 :goto_1

    .line 822
    :cond_e
    const-string v0, "with_circle"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v8

    .line 823
    goto/16 :goto_1

    .line 824
    :cond_f
    const-string v0, "lock_screen_options"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v8

    .line 825
    goto/16 :goto_1

    .line 826
    :cond_10
    const-string v0, "lock_screen_widget_options"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 827
    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const v2, 0x7f070052

    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->header:Landroid/preference/PreferenceActivity$Header;

    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/settingssearch/SearchList;->parsingAdditionalPreferenceMenutree(Landroid/content/Context;IIJLjava/lang/String;)Z

    move v0, v7

    goto/16 :goto_1

    .line 828
    :cond_11
    const-string v0, "lock_screen_short_or_camera_widget"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 829
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v8

    .line 830
    goto/16 :goto_1

    .line 832
    :cond_12
    const-string v0, "lock_screen_clock_or_myprofile"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v7

    goto/16 :goto_1

    .line 836
    :cond_13
    const-string v0, "lock_screen_shortcut"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v8

    .line 838
    goto/16 :goto_1

    .line 842
    :cond_14
    const-string v0, "information_ticker"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 843
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_RemoveMenuInLockScreenTicker"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 844
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_15
    move v0, v8

    .line 852
    goto/16 :goto_1

    :cond_16
    const-string v0, "lock_screen_profile"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 855
    if-nez v10, :cond_2a

    move v0, v8

    .line 856
    goto/16 :goto_1

    .line 858
    :cond_17
    const-string v0, "clock"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v8

    .line 860
    goto/16 :goto_1

    .line 862
    :cond_18
    const-string v0, "weather"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v8

    .line 867
    goto/16 :goto_1

    :cond_19
    const-string v0, "camera_short_cut"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v8

    .line 870
    goto/16 :goto_1

    .line 873
    :cond_1a
    const-string v0, "lock_after_timeout"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v7

    goto/16 :goto_1

    .line 874
    :cond_1b
    const-string v0, "lock_screen_shortcut_menu"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 877
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "Germany"

    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "Australia"

    const-string v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_1c
    move v0, v8

    .line 880
    goto/16 :goto_1

    .line 882
    :cond_1d
    const-string v0, "unlock_effect"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v7

    goto/16 :goto_1

    .line 887
    :cond_1e
    const-string v0, "ripple_effect"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 888
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SearchItem;

    .line 889
    const-string v1, "lock_screen_widget_options"

    iget-object v2, v0, Lcom/android/settings/settingssearch/SearchItem;->parentKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "lock_screen_options"

    iget-object v0, v0, Lcom/android/settings/settingssearch/SearchItem;->parentKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1f
    move v0, v8

    .line 899
    goto/16 :goto_1

    :cond_20
    const-string v0, "ink_effect"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 900
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SearchItem;

    .line 901
    const-string v1, "lock_screen_widget_options"

    iget-object v2, v0, Lcom/android/settings/settingssearch/SearchItem;->parentKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "lock_screen_options"

    iget-object v0, v0, Lcom/android/settings/settingssearch/SearchItem;->parentKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_21
    move v0, v8

    .line 910
    goto/16 :goto_1

    :cond_22
    const-string v0, "help_text"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 911
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SearchItem;

    .line 912
    const-string v1, "lock_screen_widget_options"

    iget-object v2, v0, Lcom/android/settings/settingssearch/SearchItem;->parentKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string v1, "lock_screen_options"

    iget-object v0, v0, Lcom/android/settings/settingssearch/SearchItem;->parentKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_23
    move v0, v8

    .line 914
    goto/16 :goto_1

    .line 916
    :cond_24
    const-string v0, "say_your_wakeup"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "set_wakeup_command"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 917
    :cond_25
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SearchItem;

    .line 918
    const-string v1, "lock_screen_widget_options"

    iget-object v2, v0, Lcom/android/settings/settingssearch/SearchItem;->parentKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "lock_screen_options"

    iget-object v0, v0, Lcom/android/settings/settingssearch/SearchItem;->parentKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_26
    move v0, v8

    .line 920
    goto/16 :goto_1

    .line 922
    :cond_27
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VOICE_SETTING_SET_WAKEUP_COMMAND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 923
    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 924
    invoke-virtual {v1, v0, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 925
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v8, :cond_2a

    move v0, v8

    .line 926
    goto/16 :goto_1

    .line 934
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 937
    :cond_29
    return-void

    :cond_2a
    move v0, v7

    goto/16 :goto_1

    :cond_2b
    move v1, v7

    goto/16 :goto_2
.end method

.method private adjustNFCSettings(Lcom/android/settings/settingssearch/SearchList;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 693
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move v1, v2

    .line 694
    :goto_0
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 695
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    .line 696
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 698
    if-eqz v0, :cond_3

    .line 699
    const-string v4, "toggle_rw_p2p"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 700
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "CMCC"

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    .line 712
    :goto_1
    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 717
    goto :goto_0

    .line 703
    :cond_0
    const-string v4, "nfc_wallet_manager_sub"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    .line 708
    goto :goto_1

    .line 715
    :cond_1
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 718
    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private adjustNearbySettings(Lcom/android/settings/settingssearch/SearchList;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 721
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move v1, v2

    .line 722
    :goto_0
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 723
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    .line 724
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 726
    if-eqz v0, :cond_2

    .line 727
    const-string v3, "allshare_device_name"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 730
    const/4 v0, 0x1

    .line 734
    :goto_1
    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 739
    goto :goto_0

    .line 737
    :cond_0
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 740
    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private adjustPowerSavingModeSettings(Lcom/android/settings/settingssearch/SearchList;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1276
    move v1, v2

    :goto_0
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 1277
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    .line 1278
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1280
    if-eqz v0, :cond_6

    .line 1281
    const-string v4, "power_saving_cpu"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 1301
    :goto_1
    if-eqz v0, :cond_7

    .line 1302
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 1306
    goto :goto_0

    .line 1283
    :cond_0
    const-string v4, "power_saving_display"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    goto :goto_1

    .line 1285
    :cond_1
    const-string v4, "power_saving_background_color"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1286
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v4, "com.android.browser"

    invoke-static {v0, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1287
    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    .line 1291
    goto :goto_1

    .line 1293
    :cond_3
    const-string v4, "power_saving_haptic"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1294
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v4, "vibrator"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v3

    .line 1295
    goto :goto_1

    .line 1297
    :cond_5
    const-string v4, "power_saving_tips"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_6
    move v0, v2

    goto :goto_1

    .line 1304
    :cond_7
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 1307
    :cond_8
    return-void
.end method

.method private adjustPrivacySettings(Lcom/android/settings/settingssearch/SearchList;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1824
    move v1, v2

    :goto_0
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 1825
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    .line 1826
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1828
    if-eqz v0, :cond_7

    .line 1829
    const-string v4, "backup_data"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 1854
    :goto_1
    if-eqz v0, :cond_5

    .line 1855
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    :goto_2
    move v1, v0

    .line 1859
    goto :goto_0

    .line 1831
    :cond_0
    const-string v4, "configure_account"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    goto :goto_1

    .line 1833
    :cond_1
    const-string v4, "auto_restore"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    goto :goto_1

    .line 1835
    :cond_2
    const-string v4, "data_transfer_mode"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v3

    .line 1837
    goto :goto_1

    .line 1840
    :cond_3
    const-string v4, "master_clear"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    goto :goto_1

    .line 1842
    :cond_4
    const-string v4, "collect_diagnostics"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1845
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.carrieriq.tmobile.IQToggle"

    const/16 v5, 0x80

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 1849
    :goto_3
    if-nez v0, :cond_7

    move v0, v3

    .line 1850
    goto :goto_1

    .line 1846
    :catch_0
    move-exception v0

    move v0, v2

    .line 1847
    goto :goto_3

    .line 1857
    :cond_5
    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    .line 1860
    :cond_6
    return-void

    :cond_7
    move v0, v2

    goto :goto_1
.end method

.method private adjustSCloudSettings(Lcom/android/settings/settingssearch/SearchList;)V
    .locals 0
    .parameter "list"

    .prologue
    .line 1821
    return-void
.end method

.method private adjustSMotionSettings(Lcom/android/settings/settingssearch/SearchList;)V
    .locals 10
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1624
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v9

    move v3, v7

    .line 1626
    :goto_0
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_17

    .line 1627
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    .line 1628
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 1630
    if-eqz v6, :cond_18

    .line 1631
    const-string v0, "air_motion"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1635
    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const v2, 0x7f07000b

    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->header:Landroid/preference/PreferenceActivity$Header;

    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/settingssearch/SearchList;->parsingAdditionalPreferenceMenutree(Landroid/content/Context;IIJLjava/lang/String;)Z

    move v0, v7

    .line 1719
    :goto_1
    if-eqz v0, :cond_16

    .line 1720
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1637
    :cond_0
    const-string v0, "motion"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1641
    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const v2, 0x7f07005b

    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->header:Landroid/preference/PreferenceActivity$Header;

    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/settingssearch/SearchList;->parsingAdditionalPreferenceMenutree(Landroid/content/Context;IIJLjava/lang/String;)Z

    move v0, v7

    goto :goto_1

    .line 1643
    :cond_1
    const-string v0, "surface"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1647
    iget-object v1, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const v2, 0x7f070048

    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->header:Landroid/preference/PreferenceActivity$Header;

    iget-wide v4, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/settingssearch/SearchList;->parsingAdditionalPreferenceMenutree(Landroid/content/Context;IIJLjava/lang/String;)Z

    move v0, v7

    goto :goto_1

    .line 1649
    :cond_2
    const-string v0, "g_sensor_cal"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v7

    goto :goto_1

    .line 1653
    :cond_3
    const-string v0, "air_motion_indicator"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v7

    goto :goto_1

    .line 1655
    :cond_4
    const-string v0, "quick_glance"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v7

    goto :goto_1

    .line 1657
    :cond_5
    const-string v0, "air_scroll"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v7

    goto :goto_1

    .line 1659
    :cond_6
    const-string v0, "air_turn"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v7

    goto :goto_1

    .line 1661
    :cond_7
    const-string v0, "air_move"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v7

    goto :goto_1

    .line 1663
    :cond_8
    const-string v0, "air_pin"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v8

    .line 1665
    goto :goto_1

    .line 1667
    :cond_9
    const-string v0, "air_call_accept"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v7

    goto/16 :goto_1

    .line 1669
    :cond_a
    const-string v0, "pick_up_to_call_out"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1670
    if-eqz v9, :cond_18

    move v0, v8

    .line 1671
    goto/16 :goto_1

    .line 1673
    :cond_b
    const-string v0, "pick_up"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1674
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    move v0, v8

    .line 1675
    goto/16 :goto_1

    .line 1677
    :cond_c
    const-string v0, "double_tap"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v8

    .line 1679
    goto/16 :goto_1

    .line 1681
    :cond_d
    const-string v0, "tilt"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v7

    goto/16 :goto_1

    .line 1685
    :cond_e
    const-string v0, "tilt_to_scroll_list"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v8

    .line 1687
    goto/16 :goto_1

    .line 1689
    :cond_f
    const-string v0, "pan"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v8

    .line 1691
    goto/16 :goto_1

    .line 1693
    :cond_10
    const-string v0, "pan_to_browse_image"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v7

    goto/16 :goto_1

    .line 1697
    :cond_11
    const-string v0, "shake"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v8

    .line 1699
    goto/16 :goto_1

    .line 1701
    :cond_12
    const-string v0, "turn_over"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1702
    if-eqz v9, :cond_18

    move v0, v8

    .line 1703
    goto/16 :goto_1

    .line 1705
    :cond_13
    const-string v0, "palm_swipe"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v7

    goto/16 :goto_1

    .line 1709
    :cond_14
    const-string v0, "palm_touch"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v7

    goto/16 :goto_1

    .line 1713
    :cond_15
    const-string v0, "tap_and_twist"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v0, v8

    .line 1715
    goto/16 :goto_1

    .line 1722
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1725
    :cond_17
    return-void

    :cond_18
    move v0, v7

    goto/16 :goto_1
.end method

.method private adjustSecuritySettings(Lcom/android/settings/settingssearch/SearchList;)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1926
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const v1, 0x7f07008f

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/settingssearch/SearchList;->parsingPreferenceMenutree(Landroid/content/Context;I)Z

    .line 1928
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    .line 1929
    :goto_0
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "verifier_setting_visible"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2

    move v4, v2

    :goto_1
    move v5, v3

    .line 1931
    :goto_2
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_1b

    .line 1932
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v6, v0, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    .line 1933
    invoke-virtual {v6}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1935
    if-eqz v0, :cond_1c

    .line 1936
    const-string v7, "encryption"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1937
    if-eqz v1, :cond_3

    .line 1938
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v7, "device_policy"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1939
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_3
    :pswitch_0
    move v0, v3

    .line 2035
    :goto_4
    if-eqz v0, :cond_1a

    .line 2036
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v5

    :goto_5
    move v5, v0

    .line 2040
    goto :goto_2

    :cond_1
    move v1, v3

    .line 1928
    goto :goto_0

    :cond_2
    move v4, v3

    .line 1929
    goto :goto_1

    .line 1943
    :pswitch_1
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1946
    const v0, 0x7f090bad

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 1947
    const v0, 0x7f090bae

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_3

    .line 1953
    :pswitch_2
    const v0, 0x7f0901b1

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 1954
    const v0, 0x7f0901b2

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_3

    :cond_3
    move v0, v2

    .line 1958
    goto :goto_4

    .line 1960
    :cond_4
    const-string v6, "sdEncpref"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1961
    new-instance v0, Lcom/android/settings/encryption/EncryptionPreferenceManager;

    iget-object v6, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/settings/encryption/EncryptionPreferenceManager;-><init>(Landroid/content/Context;)V

    .line 1962
    invoke-virtual {v0}, Lcom/android/settings/encryption/EncryptionPreferenceManager;->isSDcardEncryptionPossible()Z

    move-result v0

    if-nez v0, :cond_1c

    move v0, v2

    .line 1963
    goto :goto_4

    .line 1967
    :cond_5
    const-string v6, "external_default"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v0, v3

    goto :goto_4

    .line 1969
    :cond_6
    const-string v6, "external_full"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v0, v3

    goto :goto_4

    .line 1971
    :cond_7
    const-string v6, "external_file_exclude"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    move v0, v3

    goto :goto_4

    .line 1973
    :cond_8
    const-string v6, "remote_control"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1974
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v6, "CscFeature_Setting_EnableSimChangeAlertOnly4FindMobile"

    invoke-virtual {v0, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_1c

    move v0, v2

    .line 1976
    goto :goto_4

    .line 1980
    :cond_9
    const-string v6, "SIMAlert"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1981
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v2

    .line 1982
    goto/16 :goto_4

    .line 1986
    :cond_a
    const-string v6, "go_to_samsungdive"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    move v0, v3

    goto/16 :goto_4

    .line 1990
    :cond_b
    const-string v6, "sim_lock_settings"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1991
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1994
    const-string v6, "USC"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "SPR"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "VMU"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "BST"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "XAS"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_c
    move v0, v2

    .line 1996
    goto/16 :goto_4

    .line 1997
    :cond_d
    if-eqz v1, :cond_e

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_e
    move v0, v2

    .line 1998
    goto/16 :goto_4

    .line 2003
    :cond_f
    const-string v6, "ip_firewall"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    move v0, v2

    .line 2005
    goto/16 :goto_4

    .line 2007
    :cond_10
    const-string v6, "show_password"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    move v0, v3

    goto/16 :goto_4

    .line 2009
    :cond_11
    const-string v6, "device_admin"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 2010
    if-eqz v1, :cond_12

    if-eqz v4, :cond_12

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_12
    move v0, v2

    .line 2011
    goto/16 :goto_4

    .line 2013
    :cond_13
    const-string v6, "toggle_install_applications"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 2014
    if-eqz v1, :cond_14

    if-eqz v4, :cond_14

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_14
    move v0, v2

    .line 2015
    goto/16 :goto_4

    .line 2017
    :cond_15
    const-string v6, "toggle_verify_applications"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 2018
    if-eqz v1, :cond_16

    if-eqz v4, :cond_16

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_16
    move v0, v2

    .line 2019
    goto/16 :goto_4

    .line 2021
    :cond_17
    const-string v6, "trusted_credentials"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 2022
    if-nez v1, :cond_1c

    move v0, v2

    .line 2023
    goto/16 :goto_4

    .line 2025
    :cond_18
    const-string v6, "credentials_install_key"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 2026
    if-nez v1, :cond_1c

    move v0, v2

    .line 2027
    goto/16 :goto_4

    .line 2029
    :cond_19
    const-string v6, "reset_credentials"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2030
    if-nez v1, :cond_1c

    move v0, v2

    .line 2031
    goto/16 :goto_4

    .line 2038
    :cond_1a
    add-int/lit8 v0, v5, 0x1

    goto/16 :goto_5

    .line 2041
    :cond_1b
    return-void

    :cond_1c
    move v0, v3

    goto/16 :goto_4

    .line 1939
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private adjustSmartScreenSettings(Lcom/android/settings/settingssearch/SearchList;)V
    .locals 5
    .parameter "list"

    .prologue
    .line 1728
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1729
    iget-object v4, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v2, v4, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    .line 1730
    .local v2, pref:Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1731
    .local v1, key:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1732
    .local v3, remove_flag:Z
    if-eqz v1, :cond_0

    .line 1733
    const-string v4, "smartscreen_stay"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1757
    :cond_0
    :goto_1
    if-eqz v3, :cond_2

    .line 1758
    iget-object v4, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1737
    :cond_1
    const-string v4, "smartscreen_rotation"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1741
    const-string v4, "smartscreen_pause"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1747
    const-string v4, "smartscreen_scroll"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 1760
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1763
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #pref:Landroid/preference/Preference;
    .end local v3           #remove_flag:Z
    :cond_3
    return-void
.end method

.method private adjustSoundSettings(Lcom/android/settings/settingssearch/SearchList;)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1097
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    .line 1099
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1100
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_0
    move v1, v3

    :goto_0
    move v4, v3

    .line 1105
    :goto_1
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_1c

    .line 1106
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v0, v0, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    .line 1107
    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1109
    if-eqz v0, :cond_1a

    .line 1110
    const-string v6, "ring_volume"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v3

    .line 1229
    :goto_2
    if-eqz v0, :cond_1b

    .line 1230
    iget-object v0, p1, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v4

    :goto_3
    move v4, v0

    .line 1234
    goto :goto_1

    .line 1112
    :cond_1
    const-string v6, "vibration_feedback_intensity"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1113
    if-nez v1, :cond_1a

    move v0, v2

    .line 1114
    goto :goto_2

    .line 1120
    :cond_2
    const-string v6, "phone_profile"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1121
    const-string v0, "CTC"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "CMCC"

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "CHM"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    move v0, v2

    .line 1124
    goto :goto_2

    .line 1126
    :cond_3
    const-string v6, "musicfx"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1127
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1128
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1129
    const/16 v7, 0x200

    invoke-virtual {v0, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1130
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v6, 0x2

    if-gt v0, v6, :cond_1a

    move v0, v2

    .line 1131
    goto :goto_2

    .line 1133
    :cond_4
    const-string v6, "download_ringtone"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1134
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v6, "CscFeature_Setting_EnableMenuDownloadContents"

    invoke-virtual {v0, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1135
    const-string v6, "Ringtone"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    move v0, v2

    .line 1136
    goto/16 :goto_2

    .line 1138
    :cond_5
    const-string v6, "ds_ring_tone"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v0, v2

    .line 1142
    goto/16 :goto_2

    .line 1144
    :cond_6
    const-string v6, "ringtone"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1145
    if-nez v5, :cond_1a

    move v0, v2

    .line 1146
    goto/16 :goto_2

    .line 1151
    :cond_7
    const-string v6, "ringtone2"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1152
    if-nez v5, :cond_8

    move v0, v2

    .line 1153
    goto/16 :goto_2

    :cond_8
    move v0, v2

    .line 1158
    goto/16 :goto_2

    .line 1160
    :cond_9
    const-string v6, "phone_vibration"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1161
    if-nez v1, :cond_a

    move v0, v2

    .line 1162
    goto/16 :goto_2

    .line 1164
    :cond_a
    if-eqz v5, :cond_b

    move v0, v3

    goto/16 :goto_2

    :cond_b
    move v0, v2

    .line 1165
    goto/16 :goto_2

    .line 1167
    :cond_c
    const-string v6, "notification_sound"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move v0, v3

    goto/16 :goto_2

    .line 1172
    :cond_d
    const-string v6, "vibrate_when_ringing"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1173
    if-eqz v1, :cond_e

    if-nez v5, :cond_1a

    :cond_e
    move v0, v2

    .line 1174
    goto/16 :goto_2

    .line 1176
    :cond_f
    const-string v6, "dtmf_tone"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    move v0, v3

    goto/16 :goto_2

    .line 1180
    :cond_10
    const-string v6, "sound_effects"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    move v0, v3

    goto/16 :goto_2

    .line 1184
    :cond_11
    const-string v6, "lock_sounds"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    move v0, v3

    goto/16 :goto_2

    .line 1188
    :cond_12
    const-string v6, "gps_notification_sounds"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    move v0, v2

    .line 1190
    goto/16 :goto_2

    .line 1192
    :cond_13
    const-string v6, "haptic_feedback"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1193
    if-nez v1, :cond_1a

    move v0, v2

    .line 1194
    goto/16 :goto_2

    .line 1202
    :cond_14
    const-string v6, "autohaptic_settings"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1203
    if-nez v1, :cond_15

    move v0, v2

    .line 1204
    goto/16 :goto_2

    .line 1206
    :cond_15
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_16
    move v0, v2

    .line 1207
    goto/16 :goto_2

    .line 1210
    :cond_17
    const-string v6, "dock_audio"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    move v0, v2

    .line 1215
    goto/16 :goto_2

    :cond_18
    const-string v6, "dock_sounds"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    move v0, v2

    .line 1220
    goto/16 :goto_2

    :cond_19
    const-string v6, "my_sound"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_1a
    move v0, v3

    goto/16 :goto_2

    .line 1232
    :cond_1b
    add-int/lit8 v0, v4, 0x1

    goto/16 :goto_3

    .line 1235
    :cond_1c
    return-void

    :cond_1d
    move v1, v2

    goto/16 :goto_0
.end method

.method private adjustWirelessSettings(Lcom/android/settings/settingssearch/SearchList;)V
    .locals 16
    .parameter

    .prologue
    .line 502
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v9, v1

    .line 503
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v2, "com.ipsec.vpnclient"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    .line 504
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    .line 509
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 510
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 511
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v2

    .line 512
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 513
    array-length v1, v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    move v10, v1

    .line 514
    :goto_1
    array-length v1, v2

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    move v11, v1

    .line 515
    :goto_2
    array-length v1, v3

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    move v12, v1

    .line 517
    :goto_3
    const/4 v4, 0x0

    :goto_4
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_32

    .line 518
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/settingssearch/SearchItem;

    iget-object v1, v1, Lcom/android/settings/settingssearch/SearchItem;->preference:Landroid/preference/Preference;

    .line 519
    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 520
    const/4 v2, 0x0

    .line 521
    if-eqz v7, :cond_0

    .line 522
    const-string v1, "parent"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 523
    const/4 v2, 0x1

    .line 684
    :cond_0
    :goto_5
    if-eqz v2, :cond_31

    .line 685
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 502
    :cond_1
    const/4 v1, 0x0

    move v9, v1

    goto :goto_0

    .line 513
    :cond_2
    const/4 v1, 0x0

    move v10, v1

    goto :goto_1

    .line 514
    :cond_3
    const/4 v1, 0x0

    move v11, v1

    goto :goto_2

    .line 515
    :cond_4
    const/4 v1, 0x0

    move v12, v1

    goto :goto_3

    .line 524
    :cond_5
    const-string v1, "rcs_settings"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 525
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 526
    const/4 v2, 0x1

    goto :goto_5

    .line 528
    :cond_6
    const-string v1, "toggle_airplane"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 529
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    const/4 v2, 0x1

    goto :goto_5

    .line 532
    :cond_7
    const-string v1, "usb_settings"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 533
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 534
    const/4 v2, 0x1

    goto :goto_5

    .line 536
    :cond_8
    const-string v1, "button_smart_network_key"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 537
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c001c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 538
    if-nez v1, :cond_35

    .line 539
    const/4 v1, 0x1

    :goto_6
    move v2, v1

    .line 541
    goto :goto_5

    :cond_9
    const-string v1, "mobile_network_settings"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 542
    if-nez v9, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    :cond_a
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 545
    :cond_b
    const-string v1, "enable_switch_wifi_ap"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 546
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/settings/settingssearch/SearchList;->menuList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/settingssearch/SearchItem;

    .line 547
    const-string v3, "tether_settings"

    iget-object v1, v1, Lcom/android/settings/settingssearch/SearchItem;->parentKey:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 548
    if-eqz v10, :cond_c

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    :cond_c
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 558
    :cond_d
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 561
    :cond_e
    const-string v1, "auto_power_on_off_mode"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 562
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Clock_ExclusiveEnablingAutoPowerSetting"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 563
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 565
    :cond_f
    const-string v1, "tether_settings"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 566
    if-nez v9, :cond_10

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v1

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "ATT"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 567
    :cond_10
    const/4 v13, 0x1

    .line 573
    :goto_7
    if-nez v13, :cond_33

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    const v3, 0x7f0700a9

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/settings/settingssearch/SearchList;->header:Landroid/preference/PreferenceActivity$Header;

    iget-wide v5, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/settingssearch/SearchList;->parsingAdditionalPreferenceMenutree(Landroid/content/Context;IIJLjava/lang/String;)Z

    move v2, v13

    goto/16 :goto_5

    .line 568
    :cond_11
    const-string v1, "TFN"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 569
    const/4 v13, 0x1

    goto :goto_7

    .line 576
    :cond_12
    const-string v1, "enable_wifi_ap"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 577
    if-eqz v10, :cond_13

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-nez v1, :cond_13

    .line 579
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 582
    :cond_13
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 584
    :cond_14
    const-string v1, "wifi_ap_ssid_and_security"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 585
    if-eqz v10, :cond_15

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    :cond_15
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 592
    :cond_16
    const-string v1, "usb_tether_settings"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 593
    if-eqz v11, :cond_17

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    :cond_17
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 596
    :cond_18
    const-string v1, "enable_bluetooth_tethering"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 597
    if-nez v12, :cond_0

    .line 598
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 600
    :cond_19
    const-string v1, "tethering_help"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 602
    const-string v1, "vpn_settings"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 603
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1a
    if-eqz v14, :cond_0

    .line 604
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 606
    :cond_1b
    const-string v1, "vpn_settings_for_att"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 607
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_1c
    if-nez v14, :cond_0

    .line 608
    :cond_1d
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 610
    :cond_1e
    const-string v1, "toggle_nsd"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 611
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 612
    :cond_1f
    const-string v1, "roaming_settings"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 613
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 614
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_Common_UseChameleon"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 615
    const-string v1, "persist.sys.roaming_menu"

    const/4 v3, 0x1

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    .line 616
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 618
    :cond_20
    const-string v3, "SPR"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "VMU"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "BST"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "XAS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 619
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 621
    :cond_21
    const-string v1, "proxy_settings"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 622
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 623
    :cond_22
    const-string v1, "cell_broadcast_settings"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 636
    if-nez v9, :cond_23

    .line 637
    :cond_23
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 639
    :cond_24
    const-string v1, "wifi_calling_holder_key"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 640
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 641
    :cond_25
    const-string v1, "toggle_nfc"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "s_beam_settings"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 642
    :cond_26
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-nez v1, :cond_27

    .line 643
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 644
    :cond_27
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v3, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v1, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 645
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 646
    :cond_28
    if-eqz v15, :cond_0

    .line 647
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 649
    :cond_29
    const-string v1, "nfc_wallet_manager"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 650
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 651
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 652
    :cond_2a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 653
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 654
    :cond_2b
    if-eqz v15, :cond_2c

    .line 655
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 659
    :cond_2c
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 661
    :cond_2d
    const-string v1, "nearby_settings"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 662
    const-string v1, "ALL"

    const-string v3, "ALL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 663
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 664
    :cond_2e
    if-eqz v15, :cond_0

    .line 665
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 667
    :cond_2f
    const-string v1, "allshare_cast_settings"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 670
    if-eqz v15, :cond_0

    .line 671
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 673
    :cond_30
    const-string v1, "kies_via_wifi"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 675
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.sec.android.app.kieswifi"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :goto_8
    if-eqz v15, :cond_0

    .line 680
    const/4 v2, 0x1

    goto/16 :goto_5

    .line 676
    :catch_0
    move-exception v1

    .line 677
    const/4 v2, 0x1

    goto :goto_8

    .line 687
    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 690
    :cond_32
    return-void

    :cond_33
    move v2, v13

    goto/16 :goto_5

    :cond_34
    move v13, v2

    goto/16 :goto_7

    :cond_35
    move v1, v2

    goto/16 :goto_6
.end method

.method private getVoiceControlIntent(Landroid/preference/PreferenceActivity$Header;)Z
    .locals 6
    .parameter "mHeader"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2413
    iget-object v2, p1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 2414
    .local v2, voice_control_intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 2415
    iget-object v5, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2416
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2417
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v4, :cond_0

    .line 2421
    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private isDocomoSettingsDisabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2395
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2397
    .local v0, packMgr:Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_1

    .line 2398
    :try_start_0
    const-string v2, "com.nttdocomo.android.docomoset"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 2400
    const-string v2, "com.nttdocomo.android.docomoset"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const-string v2, "com.nttdocomo.android.docomoset"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 2409
    :cond_0
    :goto_0
    return v1

    .line 2406
    :catch_0
    move-exception v1

    .line 2409
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPackageLoaded(Ljava/lang/String;)Z
    .locals 3
    .parameter "packagename"

    .prologue
    const/4 v1, 0x0

    .line 2508
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2510
    .local v0, packMgr:Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    .line 2511
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2512
    const/4 v1, 0x1

    .line 2516
    :cond_0
    :goto_0
    return v1

    .line 2514
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private readSoftwareUpdateType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2460
    const-string v0, "system_update_settings"

    .line 2461
    const-string v0, "software_update_settings"

    .line 2462
    const-string v0, "software_update_settings_no_subtree"

    .line 2463
    const-string v0, "system_update_settings_na_gsm"

    .line 2464
    const-string v0, "system_update_settings_vzw"

    .line 2465
    const-string v0, "system_update_settings_spr"

    .line 2466
    const-string v0, "no_software_update_settings"

    .line 2467
    const-string v0, "com.sec.android.fotaclient"

    .line 2469
    const-string v0, "system_update_settings"

    .line 2470
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    .line 2471
    const-string v2, "ATT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2473
    const-string v0, "com.sec.android.fotaclient"

    invoke-direct {p0, v0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->isPackageLoaded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2474
    const-string v0, "software_update_settings_no_subtree"

    .line 2504
    :cond_0
    :goto_0
    return-object v0

    .line 2476
    :cond_1
    const-string v0, "system_update_settings_na_gsm"

    goto :goto_0

    .line 2481
    :cond_2
    const-string v2, "TMB"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2483
    const-string v0, "com.sec.android.fotaclient"

    invoke-direct {p0, v0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->isPackageLoaded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2484
    const-string v0, "software_update_settings_no_subtree"

    goto :goto_0

    .line 2486
    :cond_3
    const-string v0, "system_update_settings_na_gsm"

    goto :goto_0

    .line 2491
    :cond_4
    const-string v2, "USC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "CRI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2492
    :cond_5
    const-string v0, "software_update_settings_no_subtree"

    goto :goto_0

    .line 2493
    :cond_6
    const-string v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2494
    const-string v0, "system_update_settings_vzw"

    goto :goto_0

    .line 2495
    :cond_7
    const-string v2, "SPR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "BST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2497
    const-string v2, "com.sec.android.fotaclient"

    invoke-direct {p0, v2}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->isPackageLoaded(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2498
    const-string v0, "TFN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2499
    const-string v0, "software_update_settings_no_subtree"

    goto :goto_0

    .line 2496
    :cond_8
    const-string v0, "system_update_settings_spr"

    goto :goto_0

    .line 2501
    :cond_9
    const-string v0, "software_update_settings"

    goto :goto_0
.end method

.method public static updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/Preference;I)Z
    .locals 9
    .parameter "context"
    .parameter "preference"
    .parameter "flags"

    .prologue
    const/4 v6, 0x0

    .line 2425
    if-nez p1, :cond_1

    .line 2456
    :cond_0
    :goto_0
    return v6

    .line 2429
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2430
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 2432
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2433
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 2434
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 2435
    .local v3, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 2436
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 2437
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    .line 2441
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 2445
    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_2

    .line 2447
    invoke-virtual {v5, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 2450
    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    .line 2435
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addOrRemoveSearchableOptions(Lcom/android/settings/settingssearch/SearchList;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 446
    iget-object v2, p1, Lcom/android/settings/settingssearch/SearchList;->header:Landroid/preference/PreferenceActivity$Header;

    iget-wide v0, v2, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 447
    .local v0, id:J
    const-wide/32 v2, 0x7f0b058a

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 448
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustWirelessSettings(Lcom/android/settings/settingssearch/SearchList;)V

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    const-wide/32 v2, 0x7f0b058c

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 450
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustNFCSettings(Lcom/android/settings/settingssearch/SearchList;)V

    goto :goto_0

    .line 451
    :cond_2
    const-wide/32 v2, 0x7f0b058f

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 452
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustNearbySettings(Lcom/android/settings/settingssearch/SearchList;)V

    goto :goto_0

    .line 453
    :cond_3
    const-wide/32 v2, 0x7f0b0596

    cmp-long v2, v0, v2

    if-nez v2, :cond_4

    .line 454
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustLockScreenMenuSettings(Lcom/android/settings/settingssearch/SearchList;)V

    goto :goto_0

    .line 455
    :cond_4
    const-wide/32 v2, 0x7f0b0597

    cmp-long v2, v0, v2

    if-nez v2, :cond_5

    .line 456
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustDisplaySettings(Lcom/android/settings/settingssearch/SearchList;)V

    goto :goto_0

    .line 457
    :cond_5
    const-wide/32 v2, 0x7f0b0599

    cmp-long v2, v0, v2

    if-nez v2, :cond_6

    .line 458
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustLedIndicatorSettings(Lcom/android/settings/settingssearch/SearchList;)V

    goto :goto_0

    .line 459
    :cond_6
    const-wide/32 v2, 0x7f0b059a

    cmp-long v2, v0, v2

    if-nez v2, :cond_7

    .line 460
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustSoundSettings(Lcom/android/settings/settingssearch/SearchList;)V

    goto :goto_0

    .line 461
    :cond_7
    const-wide/32 v2, 0x7f0b059e

    cmp-long v2, v0, v2

    if-nez v2, :cond_8

    .line 462
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustDormantModeSettings(Lcom/android/settings/settingssearch/SearchList;)V

    goto :goto_0

    .line 463
    :cond_8
    const-wide/32 v2, 0x7f0b059f

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    .line 464
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustDrivingModeSettings(Lcom/android/settings/settingssearch/SearchList;)V

    goto :goto_0

    .line 465
    :cond_9
    const-wide/32 v2, 0x7f0b05a4

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    .line 466
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustPowerSavingModeSettings(Lcom/android/settings/settingssearch/SearchList;)V

    goto :goto_0

    .line 467
    :cond_a
    const-wide/32 v2, 0x7f0b05a5

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    .line 468
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustDockSettings(Lcom/android/settings/settingssearch/SearchList;)V

    goto :goto_0

    .line 469
    :cond_b
    const-wide/32 v2, 0x7f0b05a6

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    .line 470
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustAccessibilitySettings(Lcom/android/settings/settingssearch/SearchList;)V

    goto :goto_0

    .line 471
    :cond_c
    const-wide/32 v2, 0x7f0b05aa

    cmp-long v2, v0, v2

    if-nez v2, :cond_d

    .line 472
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustLanguageSettings(Lcom/android/settings/settingssearch/SearchList;)V

    goto/16 :goto_0

    .line 473
    :cond_d
    const-wide/32 v2, 0x7f0b05ad

    cmp-long v2, v0, v2

    if-nez v2, :cond_e

    .line 474
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustSMotionSettings(Lcom/android/settings/settingssearch/SearchList;)V

    goto/16 :goto_0

    .line 475
    :cond_e
    const-wide/32 v2, 0x7f0b05ae

    cmp-long v2, v0, v2

    if-nez v2, :cond_f

    .line 476
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustSmartScreenSettings(Lcom/android/settings/settingssearch/SearchList;)V

    goto/16 :goto_0

    .line 477
    :cond_f
    const-wide/32 v2, 0x7f0b05af

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 478
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustFingerAirViewSettings(Lcom/android/settings/settingssearch/SearchList;)V

    goto/16 :goto_0

    .line 479
    :cond_10
    const-wide/32 v2, 0x7f0b057a

    cmp-long v2, v0, v2

    if-nez v2, :cond_11

    .line 480
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustSCloudSettings(Lcom/android/settings/settingssearch/SearchList;)V

    goto/16 :goto_0

    .line 481
    :cond_11
    const-wide/32 v2, 0x7f0b057b

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    .line 482
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustPrivacySettings(Lcom/android/settings/settingssearch/SearchList;)V

    goto/16 :goto_0

    .line 483
    :cond_12
    const-wide/32 v2, 0x7f0b0585

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    .line 484
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustLocationSettings(Lcom/android/settings/settingssearch/SearchList;)V

    goto/16 :goto_0

    .line 485
    :cond_13
    const-wide/32 v2, 0x7f0b05c4

    cmp-long v2, v0, v2

    if-nez v2, :cond_14

    .line 486
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustSecuritySettings(Lcom/android/settings/settingssearch/SearchList;)V

    goto/16 :goto_0

    .line 487
    :cond_14
    const-wide/32 v2, 0x7f0b05bd

    cmp-long v2, v0, v2

    if-nez v2, :cond_15

    .line 488
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustDateTimeSettings(Lcom/android/settings/settingssearch/SearchList;)V

    goto/16 :goto_0

    .line 489
    :cond_15
    const-wide/32 v2, 0x7f0b05c8

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 490
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->adjustAboutSettings(Lcom/android/settings/settingssearch/SearchList;)V

    goto/16 :goto_0
.end method

.method public getPreferenceListRes(J)I
    .locals 2
    .parameter "id"

    .prologue
    .line 371
    const-wide/32 v0, 0x7f0b058a

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 372
    const v0, 0x7f0700cc

    .line 442
    :goto_0
    return v0

    .line 373
    :cond_0
    const-wide/32 v0, 0x7f0b058c

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 374
    const v0, 0x7f070063

    goto :goto_0

    .line 375
    :cond_1
    const-wide/32 v0, 0x7f0b058f

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 376
    const v0, 0x7f070011

    goto :goto_0

    .line 377
    :cond_2
    const-wide/32 v0, 0x7f0b0596

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    .line 378
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_4

    .line 379
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 380
    const v0, 0x7f07008e

    goto :goto_0

    .line 382
    :cond_3
    const v0, 0x7f070088

    goto :goto_0

    .line 384
    :cond_4
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 385
    const v0, 0x7f070085

    goto :goto_0

    .line 386
    :cond_5
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 388
    const v0, 0x7f070095

    goto :goto_0

    .line 390
    :cond_6
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 442
    :cond_7
    const/4 v0, -0x1

    goto :goto_0

    .line 392
    :sswitch_0
    const v0, 0x7f070091

    goto :goto_0

    .line 394
    :sswitch_1
    const v0, 0x7f070093

    goto :goto_0

    .line 398
    :sswitch_2
    const v0, 0x7f070090

    goto :goto_0

    .line 400
    :sswitch_3
    const v0, 0x7f070087

    goto :goto_0

    .line 403
    :cond_8
    const-wide/32 v0, 0x7f0b0597

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    .line 404
    const v0, 0x7f070035

    goto/16 :goto_0

    .line 405
    :cond_9
    const-wide/32 v0, 0x7f0b0599

    cmp-long v0, p1, v0

    if-nez v0, :cond_a

    .line 406
    const v0, 0x7f07004f

    goto/16 :goto_0

    .line 407
    :cond_a
    const-wide/32 v0, 0x7f0b059a

    cmp-long v0, p1, v0

    if-nez v0, :cond_b

    .line 408
    const v0, 0x7f0700a1

    goto/16 :goto_0

    .line 409
    :cond_b
    const-wide/32 v0, 0x7f0b059e

    cmp-long v0, p1, v0

    if-nez v0, :cond_c

    .line 410
    const v0, 0x7f070039

    goto/16 :goto_0

    .line 411
    :cond_c
    const-wide/32 v0, 0x7f0b059f

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    .line 412
    const v0, 0x7f07003a

    goto/16 :goto_0

    .line 413
    :cond_d
    const-wide/32 v0, 0x7f0b05a4

    cmp-long v0, p1, v0

    if-nez v0, :cond_e

    .line 414
    const v0, 0x7f070057

    goto/16 :goto_0

    .line 415
    :cond_e
    const-wide/32 v0, 0x7f0b05a5

    cmp-long v0, p1, v0

    if-nez v0, :cond_f

    .line 416
    const v0, 0x7f070038

    goto/16 :goto_0

    .line 417
    :cond_f
    const-wide/32 v0, 0x7f0b05a6

    cmp-long v0, p1, v0

    if-nez v0, :cond_10

    .line 418
    const/high16 v0, 0x7f07

    goto/16 :goto_0

    .line 419
    :cond_10
    const-wide/32 v0, 0x7f0b05aa

    cmp-long v0, p1, v0

    if-nez v0, :cond_11

    .line 420
    const v0, 0x7f07004e

    goto/16 :goto_0

    .line 421
    :cond_11
    const-wide/32 v0, 0x7f0b05ad

    cmp-long v0, p1, v0

    if-nez v0, :cond_12

    .line 422
    const v0, 0x7f07007c

    goto/16 :goto_0

    .line 423
    :cond_12
    const-wide/32 v0, 0x7f0b05ae

    cmp-long v0, p1, v0

    if-nez v0, :cond_13

    .line 424
    const v0, 0x7f07009e

    goto/16 :goto_0

    .line 425
    :cond_13
    const-wide/32 v0, 0x7f0b05af

    cmp-long v0, p1, v0

    if-nez v0, :cond_14

    .line 426
    const v0, 0x7f070043

    goto/16 :goto_0

    .line 427
    :cond_14
    const-wide/32 v0, 0x7f0b057a

    cmp-long v0, p1, v0

    if-eqz v0, :cond_7

    .line 430
    const-wide/32 v0, 0x7f0b057b

    cmp-long v0, p1, v0

    if-nez v0, :cond_15

    .line 431
    const v0, 0x7f070077

    goto/16 :goto_0

    .line 432
    :cond_15
    const-wide/32 v0, 0x7f0b0585

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    .line 433
    const v0, 0x7f070051

    goto/16 :goto_0

    .line 434
    :cond_16
    const-wide/32 v0, 0x7f0b05c4

    cmp-long v0, p1, v0

    if-nez v0, :cond_17

    .line 435
    const v0, 0x7f07008d

    goto/16 :goto_0

    .line 436
    :cond_17
    const-wide/32 v0, 0x7f0b05bd

    cmp-long v0, p1, v0

    if-nez v0, :cond_18

    .line 437
    const v0, 0x7f070029

    goto/16 :goto_0

    .line 438
    :cond_18
    const-wide/32 v0, 0x7f0b05c8

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 439
    const v0, 0x7f07002d

    goto/16 :goto_0

    .line 390
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
        0x70000 -> :sswitch_3
    .end sparse-switch
.end method

.method public isAvailableHeader(Landroid/preference/PreferenceActivity$Header;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 104
    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 105
    const-wide/32 v4, 0x7f0b057d

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 106
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.wifi"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 367
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    const-wide/32 v4, 0x7f0b057e

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 125
    const-wide/32 v4, 0x7f0b057f

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    .line 126
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.bluetooth"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    :goto_1
    move v0, v1

    .line 367
    goto :goto_0

    .line 129
    :cond_3
    const-wide/32 v4, 0x7f0b0581

    cmp-long v4, v2, v4

    if-nez v4, :cond_4

    .line 131
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    .line 132
    const-string v3, "VZW"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 135
    :cond_4
    const-wide/32 v4, 0x7f0b0584

    cmp-long v4, v2, v4

    if-nez v4, :cond_5

    .line 136
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 139
    :try_start_0
    invoke-interface {v2}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 145
    :cond_5
    const-wide/32 v4, 0x7f0b0586

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 150
    const-wide/32 v4, 0x7f0b0587

    cmp-long v4, v2, v4

    if-nez v4, :cond_6

    .line 152
    const-string v2, "LGT"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 155
    :cond_6
    const-wide/32 v4, 0x7f0b0588

    cmp-long v4, v2, v4

    if-nez v4, :cond_7

    .line 157
    const-string v2, "SKT"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_0

    .line 160
    :cond_7
    const-wide/32 v4, 0x7f0b0589

    cmp-long v4, v2, v4

    if-nez v4, :cond_8

    .line 161
    const-string v2, "CTC"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    .line 164
    :cond_8
    const-wide/32 v4, 0x7f0b058a

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 166
    const-wide/32 v4, 0x7f0b058c

    cmp-long v4, v2, v4

    if-nez v4, :cond_9

    .line 169
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.nfc"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_0

    .line 173
    :cond_9
    const-wide/32 v4, 0x7f0b058e

    cmp-long v4, v2, v4

    if-nez v4, :cond_a

    .line 175
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.nfc"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 181
    :cond_a
    const-wide/32 v4, 0x7f0b058f

    cmp-long v4, v2, v4

    if-nez v4, :cond_b

    .line 182
    const-string v2, "ALL"

    const-string v3, "ALL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    .line 185
    :cond_b
    const-wide/32 v4, 0x7f0b0590

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 190
    const-wide/32 v4, 0x7f0b0592

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 192
    const-wide/32 v4, 0x7f0b0594

    cmp-long v4, v2, v4

    if-nez v4, :cond_c

    .line 193
    const-string v2, "DCM"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->isDocomoSettingsDisabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    :try_start_1
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.nttdocomo.android.docomoset"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 199
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 203
    :cond_c
    const-wide/32 v4, 0x7f0b0595

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 208
    const-wide/32 v4, 0x7f0b0596

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 210
    const-wide/32 v4, 0x7f0b0597

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 212
    const-wide/32 v4, 0x7f0b0599

    cmp-long v4, v2, v4

    if-nez v4, :cond_d

    .line 213
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_0

    .line 216
    :cond_d
    const-wide/32 v4, 0x7f0b059a

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 218
    const-wide/32 v4, 0x7f0b05ba

    cmp-long v4, v2, v4

    if-nez v4, :cond_e

    .line 219
    const-string v2, "SKT"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_0

    .line 222
    :cond_e
    const-wide/32 v4, 0x7f0b059b

    cmp-long v4, v2, v4

    if-nez v4, :cond_f

    .line 223
    const-string v2, "SKT"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    .line 226
    :cond_f
    const-wide/32 v4, 0x7f0b059d

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 230
    const-wide/32 v4, 0x7f0b059e

    cmp-long v4, v2, v4

    if-nez v4, :cond_10

    .line 232
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    .line 233
    const-string v3, "VZW"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_0

    .line 236
    :cond_10
    const-wide/32 v4, 0x7f0b059f

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 238
    const-wide/32 v4, 0x7f0b05a0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 243
    const-wide/32 v4, 0x7f0b05a1

    cmp-long v4, v2, v4

    if-nez v4, :cond_11

    .line 244
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    .line 248
    :cond_11
    const-wide/32 v4, 0x7f0b05a2

    cmp-long v4, v2, v4

    if-nez v4, :cond_12

    .line 250
    :try_start_2
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.safetyassurance"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 251
    :catch_1
    move-exception v1

    goto/16 :goto_0

    .line 254
    :cond_12
    const-wide/32 v4, 0x7f0b05a3

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 258
    const-wide/32 v4, 0x7f0b05a4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 262
    const-wide/32 v4, 0x7f0b05a5

    cmp-long v4, v2, v4

    if-nez v4, :cond_13

    .line 263
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    .line 266
    :cond_13
    const-wide/32 v4, 0x7f0b05a6

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 268
    const-wide/32 v4, 0x7f0b05a9

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 272
    const-wide/32 v4, 0x7f0b05aa

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 274
    const-wide/32 v4, 0x7f0b05ad

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 278
    const-wide/32 v4, 0x7f0b05ae

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 283
    const-wide/32 v4, 0x7f0b05af

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 287
    const-wide/32 v4, 0x7f0b05b1

    cmp-long v4, v2, v4

    if-nez v4, :cond_14

    .line 288
    invoke-direct {p0, p1}, Lcom/android/settings/settingssearch/SettingsSearchUtils;->getVoiceControlIntent(Landroid/preference/PreferenceActivity$Header;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    .line 291
    :cond_14
    const-wide/32 v4, 0x7f0b0575

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 313
    const-wide/32 v4, 0x7f0b0578

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 315
    const-wide/32 v4, 0x7f0b057a

    cmp-long v4, v2, v4

    if-nez v4, :cond_15

    .line 316
    invoke-static {}, Lcom/android/settings/Utils;->DisableCloud()Z

    move-result v2

    if-nez v2, :cond_0

    .line 320
    :try_start_3
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.cloudagent"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 321
    :catch_2
    move-exception v1

    goto/16 :goto_0

    .line 325
    :cond_15
    const-wide/32 v4, 0x7f0b057b

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 327
    const-wide/32 v4, 0x7f0b0585

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 329
    const-wide/32 v4, 0x7f0b05c4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 331
    const-wide/32 v4, 0x7f0b05bf

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 333
    const-wide/32 v4, 0x7f0b05c1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 335
    const-wide/32 v4, 0x7f0b05c2

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 339
    const-wide/32 v4, 0x7f0b05c3

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 341
    const-wide/32 v4, 0x7f0b05bd

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 343
    const-wide/32 v4, 0x7f0b05c5

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 345
    const-wide/32 v4, 0x7f0b05c6

    cmp-long v4, v2, v4

    if-nez v4, :cond_16

    .line 348
    :try_start_4
    iget-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sprint.dsa"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    move v2, v1

    .line 354
    :goto_2
    if-nez v2, :cond_2

    goto/16 :goto_0

    .line 349
    :catch_3
    move-exception v2

    move v2, v0

    .line 350
    goto :goto_2

    .line 357
    :cond_16
    const-wide/32 v4, 0x7f0b05c7

    cmp-long v4, v2, v4

    if-nez v4, :cond_17

    .line 358
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 360
    const-string v3, "SPR"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "BST"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    .line 364
    :cond_17
    const-wide/32 v4, 0x7f0b05c8

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 142
    :catch_4
    move-exception v0

    goto/16 :goto_1
.end method
