.class public Lcom/android/settings/DisplayAdvanceMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DisplayAdvanceMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mPowerSavingMode:Landroid/preference/CheckBoxPreference;

.field private mReadingMode:Landroid/preference/SwitchPreferenceScreen;

.field private mReadingModeObserver:Landroid/database/ContentObserver;

.field private mScreenMode:Landroid/preference/PreferenceScreen;

.field private mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

.field private mTouchKeyLight:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 64
    new-instance v0, Lcom/android/settings/DisplayAdvanceMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplayAdvanceMenu$1;-><init>(Lcom/android/settings/DisplayAdvanceMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplayAdvanceMenu;->mReadingModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DisplayAdvanceMenu;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/DisplayAdvanceMenu;->mReadingMode:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DisplayAdvanceMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/DisplayAdvanceMenu;->updateScreenSaverSummary()V

    return-void
.end method

.method private updateScreenSaverSummary()V
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/settings/DisplayAdvanceMenu;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/settings/DisplayAdvanceMenu;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    new-instance v1, Lcom/android/settings/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settings/DisplayAdvanceMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/settings/DreamBackend;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 290
    iget-object v0, p0, Lcom/android/settings/DisplayAdvanceMenu;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DisplayAdvanceMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 293
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 4

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/settings/DisplayAdvanceMenu;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplayAdvanceMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "button_key_light"

    const/16 v3, 0x5dc

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 221
    invoke-direct {p0}, Lcom/android/settings/DisplayAdvanceMenu;->updateScreenSaverSummary()V

    .line 222
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v5, 0x7f07000a

    invoke-virtual {p0, v5}, Lcom/android/settings/DisplayAdvanceMenu;->addPreferencesFromResource(I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/DisplayAdvanceMenu;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 78
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v5, "touch_key_light"

    invoke-virtual {p0, v5}, Lcom/android/settings/DisplayAdvanceMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/DisplayAdvanceMenu;->mTouchKeyLight:Landroid/preference/ListPreference;

    .line 79
    iget-object v5, p0, Lcom/android/settings/DisplayAdvanceMenu;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/DisplayAdvanceMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x1110043

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eq v5, v6, :cond_5

    .line 84
    :goto_0
    const-string v5, "screen_mode"

    invoke-virtual {p0, v5}, Lcom/android/settings/DisplayAdvanceMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/DisplayAdvanceMenu;->mScreenMode:Landroid/preference/PreferenceScreen;

    .line 93
    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 94
    const-string v5, "screen_mode"

    invoke-virtual {p0, v5}, Lcom/android/settings/DisplayAdvanceMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 95
    .local v2, screenMode:Landroid/preference/PreferenceScreen;
    const v5, 0x7f040155

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceScreen;->setWidgetLayoutResource(I)V

    .line 99
    .end local v2           #screenMode:Landroid/preference/PreferenceScreen;
    :cond_0
    const-string v5, "reading_mode"

    invoke-virtual {p0, v5}, Lcom/android/settings/DisplayAdvanceMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/DisplayAdvanceMenu;->mReadingMode:Landroid/preference/SwitchPreferenceScreen;

    .line 104
    iget-object v5, p0, Lcom/android/settings/DisplayAdvanceMenu;->mReadingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 107
    const-string v5, "power_saving_mode"

    invoke-virtual {p0, v5}, Lcom/android/settings/DisplayAdvanceMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/DisplayAdvanceMenu;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    .line 108
    iget-object v8, p0, Lcom/android/settings/DisplayAdvanceMenu;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    const-string v5, "power_saving_mode"

    invoke-static {v1, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 123
    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 128
    :cond_1
    const-string v5, "screensaver"

    invoke-virtual {p0, v5}, Lcom/android/settings/DisplayAdvanceMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/DisplayAdvanceMenu;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    .line 129
    iget-object v5, p0, Lcom/android/settings/DisplayAdvanceMenu;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/DisplayAdvanceMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x1110047

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_7

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/DisplayAdvanceMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/DisplayAdvanceMenu;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 136
    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 137
    iget-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v5, :cond_4

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/DisplayAdvanceMenu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 139
    .local v0, extra_bundle:Landroid/os/Bundle;
    const-string v5, "extra_parent_preference_key"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, targetKey:Ljava/lang/String;
    sget v5, Lcom/android/settings/DisplayAdvanceMenu;->mSettingValue:I

    const/4 v8, -0x1

    if-eq v5, v8, :cond_3

    .line 141
    sget v5, Lcom/android/settings/DisplayAdvanceMenu;->mSettingValue:I

    if-ne v5, v6, :cond_8

    move v4, v6

    .line 142
    .local v4, value:Z
    :goto_3
    const-string v5, "screensaver"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 143
    iget-object v5, p0, Lcom/android/settings/DisplayAdvanceMenu;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_3

    .line 144
    iget-object v5, p0, Lcom/android/settings/DisplayAdvanceMenu;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 145
    iget-object v5, p0, Lcom/android/settings/DisplayAdvanceMenu;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 146
    iget-object v5, p0, Lcom/android/settings/DisplayAdvanceMenu;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/DisplayAdvanceMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 157
    .end local v4           #value:Z
    :cond_3
    :goto_4
    const-string v5, "touch_key_light"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 158
    invoke-direct {p0}, Lcom/android/settings/DisplayAdvanceMenu;->updateState()V

    .line 163
    .end local v0           #extra_bundle:Landroid/os/Bundle;
    .end local v3           #targetKey:Ljava/lang/String;
    :cond_4
    return-void

    .line 82
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/DisplayAdvanceMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/DisplayAdvanceMenu;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_6
    move v5, v7

    .line 108
    goto/16 :goto_1

    .line 132
    :cond_7
    iget-object v5, p0, Lcom/android/settings/DisplayAdvanceMenu;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_2

    .line 133
    iget-object v5, p0, Lcom/android/settings/DisplayAdvanceMenu;->mScreenSaverPreference:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_2

    .restart local v0       #extra_bundle:Landroid/os/Bundle;
    .restart local v3       #targetKey:Ljava/lang/String;
    :cond_8
    move v4, v7

    .line 141
    goto :goto_3

    .line 149
    .restart local v4       #value:Z
    :cond_9
    const-string v5, "reading_mode"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 150
    iget-object v5, p0, Lcom/android/settings/DisplayAdvanceMenu;->mReadingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 151
    iget-object v5, p0, Lcom/android/settings/DisplayAdvanceMenu;->mReadingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 152
    iget-object v5, p0, Lcom/android/settings/DisplayAdvanceMenu;->mReadingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/DisplayAdvanceMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/DisplayAdvanceMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplayAdvanceMenu;->mReadingModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 182
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 227
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, key:Ljava/lang/String;
    const-string v6, "touch_key_light"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 230
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 232
    .local v3, value:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DisplayAdvanceMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "button_key_light"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 234
    iget-object v4, p0, Lcom/android/settings/DisplayAdvanceMenu;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v3           #value:I
    :cond_0
    :goto_0
    return v5

    .line 235
    .restart local v3       #value:I
    :catch_0
    move-exception v0

    .line 236
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "DisplayAdvanceMenu"

    const-string v6, "could not persist Touch key light setting"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 238
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #value:I
    .restart local p2
    :cond_1
    const-string v6, "screensaver"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 239
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v4

    .line 240
    .restart local v3       #value:I
    :goto_1
    if-ne v3, v4, :cond_4

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/DisplayAdvanceMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 244
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DisplayAdvanceMenu;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 245
    .local v2, mAlertDialog:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f09057e

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 246
    const v4, 0x7f090ba4

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 247
    const v4, 0x104000a

    new-instance v6, Lcom/android/settings/DisplayAdvanceMenu$2;

    invoke-direct {v6, p0}, Lcom/android/settings/DisplayAdvanceMenu$2;-><init>(Lcom/android/settings/DisplayAdvanceMenu;)V

    invoke-virtual {v2, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 257
    const/high16 v4, 0x104

    new-instance v6, Lcom/android/settings/DisplayAdvanceMenu$3;

    invoke-direct {v6, p0}, Lcom/android/settings/DisplayAdvanceMenu$3;-><init>(Lcom/android/settings/DisplayAdvanceMenu;)V

    invoke-virtual {v2, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 264
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 265
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .end local v2           #mAlertDialog:Landroid/app/AlertDialog$Builder;
    .end local v3           #value:I
    :cond_2
    move v3, v5

    .line 239
    goto :goto_1

    .line 267
    .restart local v3       #value:I
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DisplayAdvanceMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "desk_home_screen_display"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 268
    new-instance v6, Lcom/android/settings/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settings/DisplayAdvanceMenu;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Lcom/android/settings/DreamBackend;->setEnabled(Z)V

    .line 269
    invoke-direct {p0}, Lcom/android/settings/DisplayAdvanceMenu;->updateScreenSaverSummary()V

    goto :goto_0

    .line 272
    :cond_4
    new-instance v4, Lcom/android/settings/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settings/DisplayAdvanceMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/android/settings/DreamBackend;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Lcom/android/settings/DreamBackend;->setEnabled(Z)V

    .line 273
    invoke-direct {p0}, Lcom/android/settings/DisplayAdvanceMenu;->updateScreenSaverSummary()V

    goto/16 :goto_0

    .line 275
    .end local v3           #value:I
    .restart local p2
    :cond_5
    const-string v6, "reading_mode"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 276
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    move v3, v4

    .line 277
    .restart local v3       #value:I
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/DisplayAdvanceMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "e_reading_display_mode"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .end local v3           #value:I
    :cond_6
    move v3, v5

    .line 276
    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 187
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 188
    iget-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v5, :cond_0

    .line 189
    sget v5, Lcom/android/settings/DisplayAdvanceMenu;->mSettingValue:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 190
    sget v5, Lcom/android/settings/DisplayAdvanceMenu;->mSettingValue:I

    if-ne v5, v3, :cond_2

    move v2, v3

    .local v2, value:Z
    :goto_0
    move-object v0, p2

    .line 191
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 192
    .local v0, checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 193
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 199
    .end local v0           #checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    .end local v2           #value:Z
    :cond_0
    iget-object v5, p0, Lcom/android/settings/DisplayAdvanceMenu;->mScreenMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 200
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 201
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/DisplayAdvanceMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 202
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "com.android.settings.ModePreviewTablet"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings/DisplayAdvanceMenu;->startActivity(Landroid/content/Intent;)V

    .line 214
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    :cond_2
    move v2, v4

    .line 190
    goto :goto_0

    .line 205
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "com.android.settings.ModePreview"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings/DisplayAdvanceMenu;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 208
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/DisplayAdvanceMenu;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/DisplayAdvanceMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "power_saving_mode"

    iget-object v7, p0, Lcom/android/settings/DisplayAdvanceMenu;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_2
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 211
    iget-object v3, p0, Lcom/android/settings/DisplayAdvanceMenu;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledACL(Z)Z

    goto :goto_1

    :cond_5
    move v3, v4

    .line 209
    goto :goto_2
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 167
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 169
    invoke-direct {p0}, Lcom/android/settings/DisplayAdvanceMenu;->updateState()V

    .line 171
    iget-object v2, p0, Lcom/android/settings/DisplayAdvanceMenu;->mReadingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DisplayAdvanceMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "e_reading_display_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/DisplayAdvanceMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "e_reading_display_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DisplayAdvanceMenu;->mReadingModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 176
    return-void
.end method
