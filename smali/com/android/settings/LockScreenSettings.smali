.class public Lcom/android/settings/LockScreenSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockScreenSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private isMyprofile:I

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mClockMyprofile:Landroid/preference/PreferenceScreen;

.field private mClockSize:Landroid/preference/ListPreference;

.field private mClockWeather:Landroid/preference/PreferenceScreen;

.field private mDateAndYear:Landroid/preference/CheckBoxPreference;

.field private mDualclock:Landroid/preference/SwitchPreferenceScreen;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEditClock:Landroid/preference/PreferenceScreen;

.field private mFavappCameraWidget:Landroid/preference/PreferenceScreen;

.field private mHelpText:Landroid/preference/CheckBoxPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMyprofile:Landroid/preference/PreferenceScreen;

.field private mOwnerInfo:Landroid/preference/PreferenceScreen;

.field private mPersonalmessage:Landroid/preference/Preference;

.field private mSayCommand:Landroid/preference/CheckBoxPreference;

.field private mSearchMenuOpen:Z

.field private mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

.field private mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

.field private option:Ljava/lang/String;

.field resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 118
    iput v0, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    .line 126
    iput-boolean v0, p0, Lcom/android/settings/LockScreenSettings;->mSearchMenuOpen:Z

    .line 129
    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 130
    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LockScreenSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 187
    .local v0, root:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 190
    :cond_0
    const v1, 0x7f070052

    invoke-virtual {p0, v1}, Lcom/android/settings/LockScreenSettings;->addPreferencesFromResource(I)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 194
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 197
    const v1, 0x7f070053

    invoke-virtual {p0, v1}, Lcom/android/settings/LockScreenSettings;->addPreferencesFromResource(I)V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 203
    :cond_1
    return-object v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 246
    const-string v0, "enterprise_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/LockScreenSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private updateClockSizeSummary()V
    .locals 5

    .prologue
    .line 686
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 687
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_clock_size"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 688
    .local v0, State:I
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 689
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 690
    return-void
.end method

.method private updateState()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 517
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_0

    .line 518
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "dualclock_menu_settings"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 521
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "lock_screen_clock_size"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 522
    .local v0, mClockSizeValue:I
    const-string v1, "LockScreenSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mClockSizeValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v1, :cond_1

    .line 524
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 525
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 526
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateClockSizeSummary()V

    .line 529
    :cond_1
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v1, :cond_3

    .line 530
    iget v1, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    if-ne v1, v2, :cond_3

    .line 532
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 533
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 534
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-nez v1, :cond_2

    .line 535
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 536
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 540
    :cond_3
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    .line 541
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "unlock_text"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 543
    :cond_4
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    .line 544
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "wake_up_lock_screen"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_b

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 546
    :cond_5
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_6

    .line 547
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "kg_enable_camera_widget_type"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_c

    .line 548
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0911e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 554
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_7

    .line 555
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "my_profile_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_d

    .line 556
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090eb8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 562
    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_8

    .line 563
    iget v1, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    if-ne v1, v2, :cond_e

    .line 564
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0911f3

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 570
    :cond_8
    :goto_5
    return-void

    .end local v0           #mClockSizeValue:I
    :cond_9
    move v1, v3

    .line 518
    goto/16 :goto_0

    .restart local v0       #mClockSizeValue:I
    :cond_a
    move v1, v3

    .line 541
    goto :goto_1

    :cond_b
    move v1, v3

    .line 544
    goto :goto_2

    .line 551
    :cond_c
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0911e7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 559
    :cond_d
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090b70

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 566
    :cond_e
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0911f2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto :goto_5
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 208
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/LockScreenSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/LockScreenSettings$1;-><init>(Lcom/android/settings/LockScreenSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 241
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 716
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v3, "personal_message_category"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "my_profile_enabled"

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v3, "multiple_widget_category"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 721
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "kg_multiple_lockscreen"

    if-eqz p2, :cond_3

    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 722
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 726
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 717
    goto :goto_0

    :cond_3
    move v1, v2

    .line 721
    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 730
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 731
    const-string v0, "LockScreenSettings"

    const-string v1, "configuration changed"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x10

    const/4 v5, -0x2

    const/4 v3, 0x0

    .line 136
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->resolver:Landroid/content/ContentResolver;

    .line 139
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 146
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v1, :cond_0

    .line 148
    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v1, p0, Lcom/android/settings/LockScreenSettings;->mSearchMenuOpen:Z

    .line 154
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_option_category"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    .line 156
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 157
    const-string v1, "personal_message_category"

    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v2, "personal_message_category"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v2, "multiple_widget_category"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 161
    :cond_2
    new-instance v1, Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 163
    .local v0, padding:I
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 169
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 172
    .end local v0           #padding:I
    :cond_3
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v2, "clock_category"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0911f2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 179
    :cond_4
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/LockScreenSettings;->setHasOptionsMenu(Z)V

    .line 183
    :cond_5
    return-void

    .line 174
    :cond_6
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v2, "personal_message_category"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f090eb8

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 176
    :cond_7
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v2, "multiple_widget_category"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0911dc

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 574
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 575
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 577
    const-string v0, "LockScreenSettings"

    const-string v1, "onPause(), dismiss mClockSize dialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 643
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, key:Ljava/lang/String;
    const-string v6, "dualclock_settings"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 645
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    move v3, v4

    .line 646
    .local v3, value:I
    :goto_0
    const-string v6, "oversea"

    const-string v7, "ril.currentplmn"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 647
    .local v0, isRoamingArea:Z
    if-nez v0, :cond_2

    const-string v6, "SKT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 648
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 649
    .local v2, mAlertDialog:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f090eb4

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 650
    const v6, 0x7f091496

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 651
    const v6, 0x104000a

    new-instance v7, Lcom/android/settings/LockScreenSettings$3;

    invoke-direct {v7, p0}, Lcom/android/settings/LockScreenSettings$3;-><init>(Lcom/android/settings/LockScreenSettings;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 657
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 658
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 682
    .end local v0           #isRoamingArea:Z
    .end local v2           #mAlertDialog:Landroid/app/AlertDialog$Builder;
    .end local v3           #value:I
    :cond_0
    :goto_1
    return v4

    :cond_1
    move v3, v5

    .line 645
    goto :goto_0

    .line 660
    .restart local v0       #isRoamingArea:Z
    .restart local v3       #value:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dualclock_menu_settings"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 663
    .end local v0           #isRoamingArea:Z
    .end local v3           #value:I
    .restart local p2
    :cond_3
    const-string v6, "lock_screen_profile"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 664
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    move v3, v4

    .line 665
    .restart local v3       #value:I
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "my_profile_enabled"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .end local v3           #value:I
    :cond_4
    move v3, v5

    .line 664
    goto :goto_2

    .line 667
    .restart local p2
    :cond_5
    const-string v6, "lock_screen_short_or_camera_widget"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 669
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 672
    :cond_6
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7

    move v3, v4

    .line 673
    .restart local v3       #value:I
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "kg_enable_camera_widget"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .end local v3           #value:I
    :cond_7
    move v3, v5

    .line 672
    goto :goto_3

    .line 678
    .restart local p2
    :cond_8
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_0

    .line 679
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_clock_size"

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 680
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateClockSizeSummary()V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 584
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 585
    iget-boolean v8, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v8, :cond_0

    sget v8, Lcom/android/settings/LockScreenSettings;->mSettingValue:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 586
    sget v8, Lcom/android/settings/LockScreenSettings;->mSettingValue:I

    if-ne v8, v6, :cond_2

    move v0, v6

    .local v0, bValue:Z
    :goto_0
    move-object v1, p2

    .line 587
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 588
    .local v1, checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 589
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 594
    .end local v0           #bValue:Z
    .end local v1           #checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    :cond_0
    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 595
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "unlock_text"

    iget-object v10, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_3

    :goto_1
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 639
    :cond_1
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    :goto_3
    return v6

    :cond_2
    move v0, v7

    .line 586
    goto :goto_0

    :cond_3
    move v6, v7

    .line 595
    goto :goto_1

    .line 596
    :cond_4
    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 597
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wake_up_lock_screen"

    iget-object v10, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_5

    :goto_4
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_5
    move v6, v7

    goto :goto_4

    .line 598
    :cond_6
    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 599
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 600
    .local v2, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v6, "com.android.settings.ShortCameraMenu"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 601
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/settings/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 602
    .end local v2           #intent:Landroid/content/Intent;
    :cond_7
    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 603
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 604
    .restart local v2       #intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v6, "com.android.settings.ShortCameraMenu"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 605
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/settings/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 606
    .end local v2           #intent:Landroid/content/Intent;
    :cond_8
    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 607
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 608
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.settings.ClockMyprofileMenuTablet"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/settings/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 611
    .end local v2           #intent:Landroid/content/Intent;
    :cond_9
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.settings.ClockMyprofileMenu"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 612
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/settings/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 614
    .end local v2           #intent:Landroid/content/Intent;
    :cond_a
    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mEditClock:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 618
    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 619
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_date_and_year"

    iget-object v10, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_b

    :goto_5
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_b
    move v6, v7

    goto :goto_5

    .line 620
    :cond_c
    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 621
    const v6, 0x7f0901a4

    invoke-static {v6}, Lcom/android/settings/OwnerInfoSettings;->newInstance(I)Lcom/android/settings/OwnerInfoSettings;

    move-result-object v5

    .line 622
    .local v5, newFragment:Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "dialog"

    invoke-virtual {v5, v6, v7}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 623
    .end local v5           #newFragment:Landroid/app/DialogFragment;
    :cond_d
    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 624
    const-string v8, "oversea"

    const-string v9, "ril.currentplmn"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 625
    .local v3, isRoamingArea:Z
    if-nez v3, :cond_1

    const-string v8, "SKT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 626
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 627
    .local v4, mAlertDialog:Landroid/app/AlertDialog$Builder;
    const v8, 0x7f090eb4

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 628
    const v8, 0x7f091496

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 629
    const v8, 0x104000a

    new-instance v9, Lcom/android/settings/LockScreenSettings$2;

    invoke-direct {v9, p0}, Lcom/android/settings/LockScreenSettings$2;-><init>(Lcom/android/settings/LockScreenSettings;)V

    invoke-virtual {v4, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 634
    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 635
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_3
.end method

.method public onResume()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 255
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 256
    iput-boolean v11, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 258
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 259
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 262
    const-string v9, "lock_screen_short_or_camera_widget"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    .line 263
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v9, :cond_1

    .line 264
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 266
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    if-eqz v9, :cond_25

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v9

    if-nez v9, :cond_25

    .line 268
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v11}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 269
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v11}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 279
    :goto_0
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_2a

    const-string v9, "ro.product.name"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "u0lte"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2a

    .line 285
    :cond_1
    :goto_1
    const-string v9, "lock_screen_clock_or_myprofile"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    .line 286
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_2

    .line 288
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    if-eqz v9, :cond_2b

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getMiscPolicy()Landroid/app/enterprise/MiscPolicy;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/MiscPolicy;->getCurrentLockScreenString()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2b

    .line 290
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 298
    :cond_2
    :goto_2
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->resolver:Landroid/content/ContentResolver;

    const-string v12, "my_profile_enabled"

    invoke-static {v9, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    .line 300
    const-string v9, "lock_screen_widget_options_category"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    .line 301
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v9, :cond_3

    .line 302
    iget v9, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    if-ne v9, v10, :cond_2c

    .line 303
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    const v12, 0x7f0911f3

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 309
    :cond_3
    :goto_3
    const-string v9, "lock_screen_profile"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    .line 310
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_4

    .line 311
    iget v9, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    if-nez v9, :cond_4

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 316
    :cond_4
    const-string v9, "clock_size"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    .line 317
    iget v9, p0, Lcom/android/settings/LockScreenSettings;->isMyprofile:I

    if-ne v9, v10, :cond_2d

    .line 318
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v9, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 323
    :goto_4
    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v13, "my_profile_enabled"

    invoke-static {v9, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_2e

    move v9, v10

    :goto_5
    invoke-virtual {v12, v9}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 325
    const-string v9, "lock_screen_date_and_year"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    .line 326
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_5

    .line 327
    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v13, "lock_screen_date_and_year"

    invoke-static {v9, v13, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_2f

    move v9, v10

    :goto_6
    invoke-virtual {v12, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 330
    :cond_5
    const-string v9, "clock_weather"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    .line 338
    const-string v9, "owner_info_settings"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    .line 341
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-nez v9, :cond_30

    move v3, v10

    .line 342
    .local v3, mIsOwner:Z
    :goto_7
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_6

    if-nez v3, :cond_6

    .line 343
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mOwnerInfo:Landroid/preference/PreferenceScreen;

    const v12, 0x7f0901a8

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 346
    :cond_6
    const-string v9, "dualclock_settings"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    .line 347
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 350
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 351
    const-string v9, "LockScreenSettings"

    const-string v12, " remove Dualclock menu"

    invoke-static {v9, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_8
    const-string v9, "help_text"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    .line 355
    const-string v9, "say_your_wakeup"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    .line 357
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_9

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 361
    :cond_9
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_a

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 366
    :cond_a
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_b

    .line 367
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f091213

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 371
    :cond_b
    const-string v9, "set_wakeup_command"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    .line 372
    .local v4, setWakeupCommand:Landroid/preference/PreferenceScreen;
    if-eqz v4, :cond_c

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    const-string v9, "feature_category"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    invoke-virtual {v12, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 379
    :cond_c
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateState()V

    .line 382
    const/4 v6, 0x1

    .line 384
    .local v6, svoice_state:Z
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 385
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/app/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v9

    if-eqz v9, :cond_31

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/app/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v9

    if-eqz v9, :cond_31

    move v6, v10

    .line 387
    :cond_d
    :goto_8
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_e

    .line 388
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 389
    :cond_e
    if-eqz v4, :cond_f

    .line 390
    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 394
    :cond_f
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v9

    if-eqz v9, :cond_22

    .line 397
    const/4 v5, 0x0

    .line 398
    .local v5, state:Z
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v12, "personal_message_category"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 399
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "my_profile_enabled"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_32

    move v5, v10

    .line 403
    :cond_10
    :goto_9
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v12, "multiple_widget_category"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "kg_multiple_lockscreen"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_33

    move v5, v10

    .line 407
    :cond_11
    :goto_a
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    if-eqz v9, :cond_12

    .line 408
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v9, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 411
    :cond_12
    const-string v9, "lock_screen_favapp_or_camera_widget"

    invoke-virtual {p0, v9}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "kg_multiple_lockscreen"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_13

    .line 413
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 417
    :cond_13
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_14

    .line 418
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "kg_enable_camera_widget_type"

    invoke-static {v9, v12, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_34

    .line 419
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0911e8

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 427
    :cond_14
    :goto_b
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v12, "multiple_widget_category"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 429
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_15

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 432
    :cond_15
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v9, :cond_16

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 435
    :cond_16
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v9, :cond_17

    .line 436
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 438
    :cond_17
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_18

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 441
    :cond_18
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mPersonalmessage:Landroid/preference/Preference;

    if-eqz v9, :cond_19

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mPersonalmessage:Landroid/preference/Preference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 444
    :cond_19
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_1a

    .line 445
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 452
    :cond_1a
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v12, "personal_message_category"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 454
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v9, :cond_1b

    .line 455
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 457
    :cond_1b
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    if-eqz v9, :cond_1c

    .line 458
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 460
    :cond_1c
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_1d

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mDateAndYear:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 463
    :cond_1d
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_1e

    .line 464
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 466
    :cond_1e
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_1f

    .line 467
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mClockWeather:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 472
    :cond_1f
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->option:Ljava/lang/String;

    const-string v12, "clock_category"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 474
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_20

    .line 475
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 477
    :cond_20
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_21

    .line 478
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 480
    :cond_21
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mPersonalmessage:Landroid/preference/Preference;

    if-eqz v9, :cond_22

    .line 481
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mPersonalmessage:Landroid/preference/Preference;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 491
    .end local v5           #state:Z
    :cond_22
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v9

    if-eqz v9, :cond_24

    .line 492
    iget-boolean v9, p0, Lcom/android/settings/LockScreenSettings;->mSearchMenuOpen:Z

    iput-boolean v9, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 493
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 494
    iget-boolean v9, p0, Lcom/android/settings/LockScreenSettings;->mSearchMenuOpen:Z

    if-eqz v9, :cond_23

    sget v9, Lcom/android/settings/LockScreenSettings;->mSettingValue:I

    const/4 v12, -0x1

    if-eq v9, v12, :cond_23

    .line 495
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 496
    .local v0, extra_bundle:Landroid/os/Bundle;
    const-string v9, "extra_parent_preference_key"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 497
    .local v7, targetKey:Ljava/lang/String;
    sget v9, Lcom/android/settings/LockScreenSettings;->mSettingValue:I

    if-ne v9, v10, :cond_35

    move v8, v10

    .line 498
    .local v8, value:Z
    :goto_c
    const-string v9, "dualclock_settings"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_36

    .line 499
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v9, :cond_23

    .line 500
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 501
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/LockScreenSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 502
    iput-boolean v11, p0, Lcom/android/settings/LockScreenSettings;->mSearchMenuOpen:Z

    .line 510
    .end local v0           #extra_bundle:Landroid/os/Bundle;
    .end local v7           #targetKey:Ljava/lang/String;
    .end local v8           #value:Z
    :cond_23
    :goto_d
    iget-boolean v9, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v9, p0, Lcom/android/settings/LockScreenSettings;->mSearchMenuOpen:Z

    .line 513
    :cond_24
    return-void

    .line 272
    .end local v3           #mIsOwner:Z
    .end local v4           #setWakeupCommand:Landroid/preference/PreferenceScreen;
    .end local v6           #svoice_state:Z
    :cond_25
    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->resolver:Landroid/content/ContentResolver;

    const-string v13, "kg_enable_camera_widget"

    invoke-static {v9, v13, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_26

    move v9, v10

    :goto_e
    invoke-virtual {v12, v9}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "kg_multiple_lockscreen"

    invoke-static {v9, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_27

    move v1, v10

    .line 274
    .local v1, isMultiple:Z
    :goto_f
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "is_secured_lock"

    invoke-static {v9, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v10, :cond_28

    move v2, v10

    .line 275
    .local v2, isSecured:Z
    :goto_10
    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_29

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v9

    if-nez v9, :cond_29

    move v9, v10

    :goto_11
    invoke-virtual {v12, v9}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    .end local v1           #isMultiple:Z
    .end local v2           #isSecured:Z
    :cond_26
    move v9, v11

    .line 272
    goto :goto_e

    :cond_27
    move v1, v11

    .line 273
    goto :goto_f

    .restart local v1       #isMultiple:Z
    :cond_28
    move v2, v11

    .line 274
    goto :goto_10

    .restart local v2       #isSecured:Z
    :cond_29
    move v9, v11

    .line 275
    goto :goto_11

    .line 281
    .end local v1           #isMultiple:Z
    .end local v2           #isSecured:Z
    :cond_2a
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v12, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 293
    :cond_2b
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockMyprofile:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_2

    .line 305
    :cond_2c
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mWidgetOptionsCategory:Landroid/preference/PreferenceCategory;

    const v12, 0x7f0911f2

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto/16 :goto_3

    .line 320
    :cond_2d
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mClockSize:Landroid/preference/ListPreference;

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_2e
    move v9, v11

    .line 323
    goto/16 :goto_5

    :cond_2f
    move v9, v11

    .line 327
    goto/16 :goto_6

    :cond_30
    move v3, v11

    .line 341
    goto/16 :goto_7

    .restart local v3       #mIsOwner:Z
    .restart local v4       #setWakeupCommand:Landroid/preference/PreferenceScreen;
    .restart local v6       #svoice_state:Z
    :cond_31
    move v6, v11

    .line 385
    goto/16 :goto_8

    .restart local v5       #state:Z
    :cond_32
    move v5, v11

    .line 399
    goto/16 :goto_9

    :cond_33
    move v5, v11

    .line 404
    goto/16 :goto_a

    .line 422
    :cond_34
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mFavappCameraWidget:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0911e7

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .end local v5           #state:Z
    .restart local v0       #extra_bundle:Landroid/os/Bundle;
    .restart local v7       #targetKey:Ljava/lang/String;
    :cond_35
    move v8, v11

    .line 497
    goto/16 :goto_c

    .line 504
    .restart local v8       #value:Z
    :cond_36
    const-string v9, "lock_screen_short_or_camera_widget"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 505
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 506
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mShortCameraWidget:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/android/settings/LockScreenSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 507
    iput-boolean v11, p0, Lcom/android/settings/LockScreenSettings;->mSearchMenuOpen:Z

    goto/16 :goto_d
.end method
