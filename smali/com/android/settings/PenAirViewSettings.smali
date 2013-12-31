.class public Lcom/android/settings/PenAirViewSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PenAirViewSettings.java"


# instance fields
.field private mAirButtonDisablePopup:Landroid/app/AlertDialog;

.field private mCheckPrefPenIconLabel:Landroid/preference/CheckBoxPreference;

.field private mCheckPrefPenInformationPreview:Landroid/preference/CheckBoxPreference;

.field private mCheckPrefPenListScroll:Landroid/preference/CheckBoxPreference;

.field private mCheckPrefPenPointer:Landroid/preference/CheckBoxPreference;

.field private mCheckPrefPenProgresspreview:Landroid/preference/CheckBoxPreference;

.field private mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mCheckPrefPenSpeedDialPreview:Landroid/preference/CheckBoxPreference;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mAirButtonDisablePopup:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PenAirViewSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenInformationPreview:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private initializeAllPreferences()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 182
    const-string v0, "key_pen_pointer"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenPointer:Landroid/preference/CheckBoxPreference;

    .line 183
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenPointer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering_pointer"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 185
    const-string v0, "key_pen_information_preview"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenInformationPreview:Landroid/preference/CheckBoxPreference;

    .line 186
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenInformationPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering_information_preview"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 188
    const-string v0, "key_pen_progress_preview"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenProgresspreview:Landroid/preference/CheckBoxPreference;

    .line 189
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenProgresspreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering_progress_preview"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 192
    const-string v0, "key_pen_speed_dial_preview"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenSpeedDialPreview:Landroid/preference/CheckBoxPreference;

    .line 193
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenSpeedDialPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering_speed_dial_preview"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 196
    const-string v0, "key_pen_icon_label"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenIconLabel:Landroid/preference/CheckBoxPreference;

    .line 197
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenIconLabel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering_icon_label"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 199
    const-string v0, "key_pen_list_scroll"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenListScroll:Landroid/preference/CheckBoxPreference;

    .line 200
    iget-object v3, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenListScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "pen_hovering_list_scroll"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 203
    const-string v0, "key_pen_sound_and_haptic_feedback"

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 204
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_sound"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    :goto_6
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 212
    return-void

    :cond_0
    move v0, v2

    .line 183
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 186
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 189
    goto :goto_2

    :cond_3
    move v0, v2

    .line 193
    goto :goto_3

    :cond_4
    move v0, v2

    .line 197
    goto :goto_4

    :cond_5
    move v0, v2

    .line 200
    goto :goto_5

    :cond_6
    move v1, v2

    .line 204
    goto :goto_6
.end method

.method public static isAllOptionDisabled(Landroid/content/ContentResolver;)Z
    .locals 10
    .parameter "cr"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 215
    const-string v9, "pen_hovering_pointer"

    invoke-static {p0, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 216
    .local v3, pointer:I
    const-string v9, "pen_hovering_information_preview"

    invoke-static {p0, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 217
    .local v1, inforPreview:I
    const-string v9, "pen_hovering_progress_preview"

    invoke-static {p0, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 218
    .local v4, progressPreview:I
    const-string v9, "pen_hovering_speed_dial_preview"

    invoke-static {p0, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 219
    .local v6, speedDialPreview:I
    const-string v9, "pen_hovering_icon_label"

    invoke-static {p0, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 220
    .local v0, iconLabel:I
    const-string v9, "pen_hovering_list_scroll"

    invoke-static {p0, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 221
    .local v2, listScroll:I
    const-string v9, "pen_hovering_sound"

    invoke-static {p0, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 227
    .local v5, soundHaptic:I
    or-int v9, v3, v1

    or-int/2addr v9, v4

    or-int/2addr v9, v6

    or-int/2addr v9, v0

    or-int/2addr v9, v2

    or-int/2addr v9, v5

    if-ge v9, v7, :cond_0

    :goto_0
    return v7

    :cond_0
    move v7, v8

    goto :goto_0
.end method

.method private showAirButtonDisableDialog()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mAirButtonDisablePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mAirButtonDisablePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mAirButtonDisablePopup:Landroid/app/AlertDialog;

    .line 238
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090e50

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090e4c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/PenAirViewSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/PenAirViewSettings$2;-><init>(Lcom/android/settings/PenAirViewSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/PenAirViewSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/PenAirViewSettings$1;-><init>(Lcom/android/settings/PenAirViewSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mAirButtonDisablePopup:Landroid/app/AlertDialog;

    .line 253
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mAirButtonDisablePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 255
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mAirButtonDisablePopup:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/PenAirViewSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/PenAirViewSettings$3;-><init>(Lcom/android/settings/PenAirViewSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 262
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 100
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 128
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

    .line 129
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 90
    const-string v0, "PenAirViewSettings"

    const-string v1, "onCreate() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f070068

    invoke-virtual {p0, v0}, Lcom/android/settings/PenAirViewSettings;->addPreferencesFromResource(I)V

    .line 94
    invoke-direct {p0}, Lcom/android/settings/PenAirViewSettings;->initializeAllPreferences()V

    .line 95
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 118
    const-string v0, "PenAirViewSettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 120
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/android/settings/PenAirViewSettings;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090e3c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 124
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 133
    const-string v6, "PenAirViewSettings"

    const-string v7, "onPreferenceTreeClick() "

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 136
    iget-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v6, :cond_0

    .line 137
    sget v6, Lcom/android/settings/PenAirViewSettings;->mSettingValue:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 138
    sget v6, Lcom/android/settings/PenAirViewSettings;->mSettingValue:I

    if-ne v6, v4, :cond_2

    move v3, v4

    .local v3, value:Z
    :goto_0
    move-object v1, p2

    .line 139
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 140
    .local v1, checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 141
    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 147
    .end local v1           #checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    .end local v3           #value:Z
    :cond_0
    iget-object v6, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenPointer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_pointer"

    iget-object v8, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenPointer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_3

    :goto_1
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    :cond_1
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    return v4

    :cond_2
    move v3, v5

    .line 138
    goto :goto_0

    :cond_3
    move v4, v5

    .line 148
    goto :goto_1

    .line 150
    :cond_4
    iget-object v6, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenInformationPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_button_onoff"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_5

    move v0, v4

    .line 153
    .local v0, airButtonState:Z
    :goto_3
    iget-object v6, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenInformationPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 155
    .local v2, isChecked:Z
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v2, :cond_6

    if-ne v0, v4, :cond_6

    .line 156
    invoke-direct {p0}, Lcom/android/settings/PenAirViewSettings;->showAirButtonDisableDialog()V

    goto :goto_2

    .end local v0           #airButtonState:Z
    .end local v2           #isChecked:Z
    :cond_5
    move v0, v5

    .line 151
    goto :goto_3

    .line 158
    .restart local v0       #airButtonState:Z
    .restart local v2       #isChecked:Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_information_preview"

    iget-object v8, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenInformationPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_7

    :goto_4
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_7
    move v4, v5

    goto :goto_4

    .line 161
    .end local v0           #airButtonState:Z
    .end local v2           #isChecked:Z
    :cond_8
    iget-object v6, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenProgresspreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_progress_preview"

    iget-object v8, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenProgresspreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_9

    :goto_5
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_9
    move v4, v5

    goto :goto_5

    .line 164
    :cond_a
    iget-object v6, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenSpeedDialPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_speed_dial_preview"

    iget-object v8, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenSpeedDialPreview:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_b

    :goto_6
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_b
    move v4, v5

    goto :goto_6

    .line 167
    :cond_c
    iget-object v6, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenIconLabel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_icon_label"

    iget-object v8, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenIconLabel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_d

    :goto_7
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_d
    move v4, v5

    goto :goto_7

    .line 170
    :cond_e
    iget-object v6, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenListScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_list_scroll"

    iget-object v8, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenListScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_f

    :goto_8
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_f
    move v4, v5

    goto :goto_8

    .line 173
    :cond_10
    iget-object v6, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_sound"

    iget-object v8, p0, Lcom/android/settings/PenAirViewSettings;->mCheckPrefPenSoundNHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_11

    :goto_9
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_11
    move v4, v5

    goto :goto_9
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 104
    const-string v0, "PenAirViewSettings"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/PenAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PenAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    .line 107
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 108
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 112
    const-string v0, "PenAirViewSettings"

    const-string v1, "onStrop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 114
    return-void
.end method
