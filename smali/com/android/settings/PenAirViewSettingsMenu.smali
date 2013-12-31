.class public Lcom/android/settings/PenAirViewSettingsMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PenAirViewSettingsMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static mActionBarLayout:Landroid/view/View;

.field private static mActionBarSwitch:Landroid/widget/Switch;

.field private static mActivity:Landroid/app/Activity;

.field private static mPenAirViewEnabler:Lcom/android/settings/PenAirViewEnabler;


# instance fields
.field private mAirViewDialog:Landroid/app/AlertDialog;

.field private mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private final mPenAirViewObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

.field private mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

.field private mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

.field private mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

.field private mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

.field private mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    .line 104
    new-instance v0, Lcom/android/settings/PenAirViewSettingsMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/PenAirViewSettingsMenu$1;-><init>(Lcom/android/settings/PenAirViewSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPenAirViewObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PenAirViewSettingsMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->updatePenAirViewSettingsMenu()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/PenAirViewSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private initializeAllPreferences()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 208
    const-string v3, "key_pen_pointer"

    invoke-virtual {p0, v3}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    .line 209
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 212
    const-string v3, "key_pen_information_preview"

    invoke-virtual {p0, v3}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    .line 213
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 215
    const-string v3, "key_pen_progress_preview"

    invoke-virtual {p0, v3}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    .line 216
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 218
    const-string v3, "key_pen_speed_dial_preview"

    invoke-virtual {p0, v3}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    .line 219
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 224
    const-string v3, "key_pen_icon_label"

    invoke-virtual {p0, v3}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    .line 225
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 227
    const-string v3, "key_pen_list_scroll"

    invoke-virtual {p0, v3}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    .line 228
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 230
    const-string v3, "key_pen_sound_and_haptic_feedback"

    invoke-virtual {p0, v3}, Lcom/android/settings/PenAirViewSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 239
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    iget-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/android/settings/PenAirViewSettingsMenu;->mSettingValue:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "air_view_master_onoff"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 243
    .local v0, extra_bundle:Landroid/os/Bundle;
    const-string v3, "extra_parent_preference_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, targetKey:Ljava/lang/String;
    sget v3, Lcom/android/settings/PenAirViewSettingsMenu;->mSettingValue:I

    if-ne v3, v2, :cond_1

    .line 245
    .local v2, value:Z
    :goto_0
    const-string v3, "key_pen_pointer"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 246
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 247
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 267
    .end local v0           #extra_bundle:Landroid/os/Bundle;
    .end local v1           #targetKey:Ljava/lang/String;
    .end local v2           #value:Z
    :cond_0
    :goto_1
    return-void

    .restart local v0       #extra_bundle:Landroid/os/Bundle;
    .restart local v1       #targetKey:Ljava/lang/String;
    :cond_1
    move v2, v4

    .line 244
    goto :goto_0

    .line 248
    .restart local v2       #value:Z
    :cond_2
    const-string v3, "key_pen_information_preview"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 249
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 250
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 251
    :cond_3
    const-string v3, "key_pen_progress_preview"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 252
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 253
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 254
    :cond_4
    const-string v3, "key_pen_speed_dial_preview"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 255
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 256
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 257
    :cond_5
    const-string v3, "key_pen_icon_label"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 258
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 259
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 260
    :cond_6
    const-string v3, "key_pen_list_scroll"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 262
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/PenAirViewSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static isAllOptionDisabled(Landroid/content/ContentResolver;)Z
    .locals 9
    .parameter "cr"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 271
    const-string v8, "pen_hovering_information_preview"

    invoke-static {p0, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 272
    .local v1, inforPreview:I
    const-string v8, "pen_hovering_progress_preview"

    invoke-static {p0, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 273
    .local v3, progressPreview:I
    const-string v8, "pen_hovering_speed_dial_preview"

    invoke-static {p0, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 274
    .local v5, speedDialPreview:I
    const-string v8, "pen_hovering_icon_label"

    invoke-static {p0, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 275
    .local v0, iconLabel:I
    const-string v8, "pen_hovering_list_scroll"

    invoke-static {p0, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 276
    .local v2, listScroll:I
    const-string v8, "pen_hovering_sound"

    invoke-static {p0, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 286
    .local v4, soundHaptic:I
    or-int v8, v1, v3

    or-int/2addr v8, v5

    or-int/2addr v8, v0

    or-int/2addr v8, v2

    or-int/2addr v8, v4

    if-ge v8, v6, :cond_0

    :goto_0
    return v6

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method private showAirViewDialog(Landroid/preference/Preference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    .line 295
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090e78

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090e4c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/PenAirViewSettingsMenu$3;

    invoke-direct {v2, p0}, Lcom/android/settings/PenAirViewSettingsMenu$3;-><init>(Lcom/android/settings/PenAirViewSettingsMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/PenAirViewSettingsMenu$2;

    invoke-direct {v2, p0}, Lcom/android/settings/PenAirViewSettingsMenu$2;-><init>(Lcom/android/settings/PenAirViewSettingsMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    .line 308
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 310
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mAirViewDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/PenAirViewSettingsMenu$4;

    invoke-direct {v1, p0}, Lcom/android/settings/PenAirViewSettingsMenu$4;-><init>(Lcom/android/settings/PenAirViewSettingsMenu;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 317
    return-void
.end method

.method private updatePenAirViewSettingsMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 367
    .local v0, state:I
    if-nez v0, :cond_0

    .line 368
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 369
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 370
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 371
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 372
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 373
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 374
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 384
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 377
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 378
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 379
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 380
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 381
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 382
    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 126
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 180
    const-string v0, "PenAirViewSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 113
    const-string v0, "PenAirViewSettings"

    const-string v1, "onCreate() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/android/settings/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    .line 116
    sget-object v0, Lcom/android/settings/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarLayout:Landroid/view/View;

    .line 117
    new-instance v0, Landroid/widget/Switch;

    sget-object v1, Lcom/android/settings/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    .line 118
    new-instance v0, Lcom/android/settings/PenAirViewEnabler;

    sget-object v1, Lcom/android/settings/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/PenAirViewEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    sput-object v0, Lcom/android/settings/PenAirViewSettingsMenu;->mPenAirViewEnabler:Lcom/android/settings/PenAirViewEnabler;

    .line 119
    const v0, 0x7f070069

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettingsMenu;->addPreferencesFromResource(I)V

    .line 120
    invoke-direct {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->initializeAllPreferences()V

    .line 121
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 168
    const-string v0, "PenAirViewSettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 170
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/settings/PenAirViewSettingsMenu;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090e3c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 174
    :cond_0
    sget-object v0, Lcom/android/settings/PenAirViewSettingsMenu;->mPenAirViewEnabler:Lcom/android/settings/PenAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/PenAirViewEnabler;->pause()V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPenAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 176
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 322
    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    .line 324
    .local v2, value:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_2

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_hovering_pointer"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 345
    .end local p2
    :cond_0
    :goto_1
    return v4

    .end local v2           #value:I
    .restart local p2
    :cond_1
    move v2, v5

    .line 322
    goto :goto_0

    .line 326
    .restart local v2       #value:I
    :cond_2
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_5

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "air_button_onoff"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_3

    move v0, v4

    .line 329
    .local v0, airButtonState:Z
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 331
    .local v1, isChecked:Z
    if-nez v1, :cond_4

    if-ne v0, v4, :cond_4

    .line 332
    invoke-direct {p0, p1}, Lcom/android/settings/PenAirViewSettingsMenu;->showAirViewDialog(Landroid/preference/Preference;)V

    goto :goto_1

    .end local v0           #airButtonState:Z
    .end local v1           #isChecked:Z
    .restart local p2
    :cond_3
    move v0, v5

    .line 327
    goto :goto_2

    .line 334
    .end local p2
    .restart local v0       #airButtonState:Z
    .restart local v1       #isChecked:Z
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_hovering_information_preview"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 336
    .end local v0           #airButtonState:Z
    .end local v1           #isChecked:Z
    .restart local p2
    :cond_5
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_6

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_hovering_progress_preview"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 338
    :cond_6
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_7

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_hovering_speed_dial_preview"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 340
    :cond_7
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_8

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_hovering_icon_label"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 342
    :cond_8
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_hovering_list_scroll"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 185
    const-string v4, "PenAirViewSettings"

    const-string v5, "onPreferenceTreeClick() "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    iget-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v4, :cond_0

    .line 189
    sget v4, Lcom/android/settings/PenAirViewSettingsMenu;->mSettingValue:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 190
    sget v4, Lcom/android/settings/PenAirViewSettingsMenu;->mSettingValue:I

    if-ne v4, v2, :cond_2

    move v1, v2

    .local v1, value:Z
    :goto_0
    move-object v0, p2

    .line 191
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 192
    .local v0, checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 193
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 199
    .end local v0           #checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    .end local v1           #value:Z
    :cond_0
    iget-object v4, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering_sound"

    iget-object v6, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_2
    move v1, v3

    .line 190
    goto :goto_0

    :cond_3
    move v2, v3

    .line 200
    goto :goto_1
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/16 v3, 0x10

    const/4 v7, 0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 130
    const-string v1, "PenAirViewSettings"

    const-string v2, "onResume() "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    .line 133
    sget-object v1, Lcom/android/settings/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_0

    .line 134
    sget-object v1, Lcom/android/settings/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 136
    .local v0, padding:I
    sget-object v1, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v5, v5, v0, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 137
    sget-object v1, Lcom/android/settings/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 139
    sget-object v1, Lcom/android/settings/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    sget-object v2, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v6, v6, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 143
    sget-object v1, Lcom/android/settings/PenAirViewSettingsMenu;->mPenAirViewEnabler:Lcom/android/settings/PenAirViewEnabler;

    sget-object v2, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Lcom/android/settings/PenAirViewEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 145
    .end local v0           #padding:I
    :cond_0
    sget-object v1, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarLayout:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 146
    sget-object v1, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 149
    :cond_1
    sget-object v1, Lcom/android/settings/PenAirViewSettingsMenu;->mPenAirViewEnabler:Lcom/android/settings/PenAirViewEnabler;

    invoke-virtual {v1}, Lcom/android/settings/PenAirViewEnabler;->resume()V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->updateState()V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mPenAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v7, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 153
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 157
    const-string v0, "PenAirViewSettings"

    const-string v1, "onStrop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 159
    sget-object v0, Lcom/android/settings/PenAirViewSettingsMenu;->mPenAirViewEnabler:Lcom/android/settings/PenAirViewEnabler;

    invoke-virtual {v0}, Lcom/android/settings/PenAirViewEnabler;->stop()V

    .line 160
    sget-object v0, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lcom/android/settings/PenAirViewSettingsMenu;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 164
    :cond_0
    return-void
.end method

.method public updateState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 349
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenPointer:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "pen_hovering_pointer"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 351
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenInformationPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "pen_hovering_information_preview"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 353
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenProgresspreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "pen_hovering_progress_preview"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 355
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenSpeedDialPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "pen_hovering_speed_dial_preview"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 357
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenIconLabel:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "pen_hovering_icon_label"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 359
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mSwitchPrefPenListScroll:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "pen_hovering_list_scroll"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 361
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/PenAirViewSettingsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "pen_hovering_sound"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    :goto_6
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 363
    invoke-direct {p0}, Lcom/android/settings/PenAirViewSettingsMenu;->updatePenAirViewSettingsMenu()V

    .line 364
    return-void

    :cond_0
    move v0, v2

    .line 349
    goto :goto_0

    :cond_1
    move v0, v2

    .line 351
    goto :goto_1

    :cond_2
    move v0, v2

    .line 353
    goto :goto_2

    :cond_3
    move v0, v2

    .line 355
    goto :goto_3

    :cond_4
    move v0, v2

    .line 357
    goto :goto_4

    :cond_5
    move v0, v2

    .line 359
    goto :goto_5

    :cond_6
    move v1, v2

    .line 361
    goto :goto_6
.end method
