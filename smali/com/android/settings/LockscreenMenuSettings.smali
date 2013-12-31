.class public Lcom/android/settings/LockscreenMenuSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockscreenMenuSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static mContext:Landroid/content/Context;


# instance fields
.field private bRegisterReceiver:Z

.field private isDeviceLockTime:Z

.field private layoutType:I

.field private mAutoSwipe:Landroid/preference/CheckBoxPreference;

.field private mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

.field private mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mClockMenu:Landroid/preference/PreferenceScreen;

.field private mCoverCategory:Landroid/preference/PreferenceCategory;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceLockDialog:Landroid/app/AlertDialog;

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field private mDualclock:Landroid/preference/SwitchPreferenceScreen;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mFingerPrint:Landroid/preference/SwitchPreferenceScreen;

.field private mHelpText:Landroid/preference/CheckBoxPreference;

.field private mInkEffect:Landroid/preference/PreferenceScreen;

.field mInkEffectSummary:[I

.field mInkEffectSummaryForTablet:[I

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

.field private mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

.field private mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

.field private mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

.field private mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

.field private mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

.field private mQuicknote:Landroid/preference/CheckBoxPreference;

.field private mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

.field private mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

.field private mSafetyZoneLocktype:Ljava/lang/String;

.field private mSafetyZoneObserver:Landroid/database/ContentObserver;

.field private mSayCommand:Landroid/preference/CheckBoxPreference;

.field private mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

.field private mSelectInfo:Landroid/preference/Preference;

.field private mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

.field private mSignatureVerificationLevel:Landroid/preference/ListPreference;

.field private mStartFromSearch:Z

.field private mSviewColor:Landroid/preference/Preference;

.field private mTactileFeedback:Landroid/preference/CheckBoxPreference;

.field private mUnlockEffect:Landroid/preference/ListPreference;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field private mVisibleSignature:Landroid/preference/CheckBoxPreference;

.field private setWakeupCommand:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x9

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 173
    iput-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 184
    iput-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    .line 186
    iput-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->bRegisterReceiver:Z

    .line 193
    iput v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    .line 194
    iput-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirectUri:Landroid/net/Uri;

    .line 198
    iput-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mStartFromSearch:Z

    .line 210
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffectSummary:[I

    .line 222
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffectSummaryForTablet:[I

    .line 234
    new-instance v0, Lcom/android/settings/LockscreenMenuSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/LockscreenMenuSettings$1;-><init>(Lcom/android/settings/LockscreenMenuSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneObserver:Landroid/database/ContentObserver;

    return-void

    .line 210
    :array_0
    .array-data 0x4
        0xa6t 0x11t 0x9t 0x7ft
        0xa7t 0x11t 0x9t 0x7ft
        0xa9t 0x11t 0x9t 0x7ft
        0xaat 0x11t 0x9t 0x7ft
        0xact 0x11t 0x9t 0x7ft
        0xadt 0x11t 0x9t 0x7ft
        0xaet 0x11t 0x9t 0x7ft
        0xabt 0x11t 0x9t 0x7ft
        0xb0t 0x11t 0x9t 0x7ft
    .end array-data

    .line 222
    :array_1
    .array-data 0x4
        0xa6t 0x11t 0x9t 0x7ft
        0xa7t 0x11t 0x9t 0x7ft
        0xa9t 0x11t 0x9t 0x7ft
        0xaat 0x11t 0x9t 0x7ft
        0xact 0x11t 0x9t 0x7ft
        0xadt 0x11t 0x9t 0x7ft
        0xaet 0x11t 0x9t 0x7ft
        0xabt 0x11t 0x9t 0x7ft
        0xb0t 0x11t 0x9t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/LockscreenMenuSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/LockscreenMenuSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/LockscreenMenuSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->showSafetyZoneEnableDialog()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 14

    .prologue
    const v13, 0x7f09020c

    const v12, 0x7f0901dd

    const v11, 0x7f0901d6

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 277
    :cond_0
    const v0, 0x7f070084

    invoke-virtual {p0, v0}, Lcom/android/settings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 279
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_46

    move v2, v3

    .line 282
    :goto_0
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecureForSetting()Z

    move-result v0

    if-nez v0, :cond_48

    .line 283
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 284
    const v0, 0x7f07008e

    move v9, v0

    .line 328
    :goto_1
    if-eqz v9, :cond_1

    .line 329
    invoke-virtual {p0, v9}, Lcom/android/settings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 332
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 333
    if-eqz v1, :cond_2

    .line 334
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 336
    :cond_2
    iput v9, p0, Lcom/android/settings/LockscreenMenuSettings;->layoutType:I

    .line 337
    const v0, 0x7f070089

    invoke-virtual {p0, v0}, Lcom/android/settings/LockscreenMenuSettings;->addPreferencesFromResource(I)V

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    move-object v5, v0

    .line 343
    :goto_2
    const-string v0, "lock_screen_options_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 345
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecureForSetting()Z

    move-result v1

    if-nez v1, :cond_3

    .line 346
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-eqz v1, :cond_4b

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 347
    new-instance v1, Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/preference/SwitchPreferenceScreen;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 348
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    const-string v6, "multiple_lock_screenswitch"

    invoke-virtual {v1, v6}, Landroid/preference/SwitchPreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    const v6, 0x7f0911dc

    invoke-virtual {v1, v6}, Landroid/preference/SwitchPreferenceScreen;->setTitle(I)V

    .line 350
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    const v6, 0x7f0911dd

    invoke-virtual {v1, v6}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 351
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 352
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setOrder(I)V

    .line 353
    if-eqz v0, :cond_3

    .line 354
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 371
    :cond_3
    :goto_3
    const-string v1, "lock_after_timeout"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 372
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    if-eqz v1, :cond_5

    .line 374
    iget-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v1, :cond_4

    .line 375
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    const v6, 0x7f090056

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setTitle(I)V

    .line 376
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    const v6, 0x7f090056

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    .line 377
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    const v6, 0x7f0a0018

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 378
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    const v6, 0x7f0a0019

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 381
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->setupLockAfterPreference()V

    .line 382
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->updateLockAfterPreferenceSummary()V

    .line 386
    :cond_5
    const-string v1, "biometric_weak_liveliness"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    .line 390
    const-string v1, "visiblepattern"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 392
    const-string v1, "power_button_instantly_locks"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    .line 396
    const v1, 0x7f070085

    if-eq v9, v1, :cond_6

    const v1, 0x7f070095

    if-ne v9, v1, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    const/high16 v6, 0x1

    if-eq v1, v6, :cond_7

    .line 399
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_7

    .line 400
    const-string v1, "visiblepattern"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 405
    :cond_7
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_8

    .line 406
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternDisabledByMDM()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 407
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 413
    :cond_8
    const-string v1, "owner_info_settings"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    .line 414
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_9

    .line 415
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 418
    :cond_9
    const-string v1, "lock_screen_widget_options"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    .line 420
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4c

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "u0lte"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 427
    :cond_a
    :goto_4
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_b

    .line 428
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "easy_mode_switch"

    invoke-static {v1, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_4e

    move v1, v3

    :goto_5
    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 432
    :cond_b
    const-string v1, "quick_note"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    .line 433
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_c

    const v1, 0x7f07008e

    if-eq v9, v1, :cond_c

    .line 435
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 437
    :cond_c
    const-string v1, "auto_swipe"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    .line 438
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz v2, :cond_e

    .line 439
    :cond_d
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 441
    :cond_e
    const-string v1, "visiblesignature"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    .line 442
    const-string v1, "signature_verification_level"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    .line 443
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-eqz v1, :cond_f

    .line 444
    invoke-direct {p0, v4}, Lcom/android/settings/LockscreenMenuSettings;->setupSignatureVerificationLevelPreference(Z)V

    .line 448
    :cond_f
    const-string v1, "unlock_tactile_feedback"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    .line 449
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-nez v1, :cond_10

    .line 450
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_10

    .line 451
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 456
    :cond_10
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecureForSetting()Z

    move-result v1

    if-nez v1, :cond_50

    .line 457
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 458
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "lock_motion_tilt_to_unlock"

    invoke-static {v1, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_11

    .line 459
    const-string v1, "unlock_set_or_change"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 460
    const v6, 0x7f090d24

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 461
    const v1, 0x7f090d24

    invoke-virtual {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    .line 486
    :cond_11
    :goto_6
    iget-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_12

    .line 487
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 490
    :cond_12
    const-string v1, "LockScreenMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mLockPatternUtils.isSecureForSetting(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecureForSetting()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "is_secured_lock"

    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecureForSetting()Z

    move-result v1

    if-eqz v1, :cond_52

    move v1, v3

    :goto_7
    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 495
    const-string v1, "dualclock_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    .line 496
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_13

    .line 497
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 498
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "dualclock_menu_settings"

    invoke-static {v1, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_53

    move v1, v3

    :goto_8
    invoke-virtual {v6, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 499
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 505
    :cond_13
    :goto_9
    const-string v1, "safetyzone_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    .line 506
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_14

    .line 507
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "easy_mode_switch"

    invoke-static {v1, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_55

    move v1, v3

    :goto_a
    invoke-virtual {v6, v1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 509
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 520
    :cond_14
    const-string v1, "lock_screen_shortcut_menu"

    invoke-virtual {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    .line 522
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_16

    .line 523
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 524
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "Germany"

    const-string v6, "ro.csc.country_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "Australia"

    const-string v6, "ro.csc.country_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 527
    :cond_15
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_16

    .line 528
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 532
    :cond_16
    const-string v1, "lock_screen_finger_print"

    invoke-virtual {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mFingerPrint:Landroid/preference/SwitchPreferenceScreen;

    .line 533
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "lock_screen_fingerprint_shortcut"

    invoke-static {v1, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 534
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mFingerPrint:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v6, :cond_17

    .line 535
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mFingerPrint:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 536
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mFingerPrint:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_56

    move v1, v3

    :goto_b
    invoke-virtual {v6, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 539
    :cond_17
    const-string v1, "unlock_effect"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    .line 540
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "lockscreen_ripple_effect"

    invoke-static {v1, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 541
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v6, :cond_18

    .line 576
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 577
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 578
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->updateRippleEffectPreferenceSummary()V

    .line 581
    :cond_18
    const-string v1, "ink_effect"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    .line 582
    const-string v1, "hltejs01dcm"

    const-string v6, "ro.product.device"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "SC-02F"

    const-string v6, "ro.product.model"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 583
    :cond_19
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 587
    :cond_1a
    const-string v1, "help_text"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    .line 588
    const-string v1, "say_your_wakeup"

    invoke-virtual {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    .line 590
    const-string v1, "cover"

    invoke-virtual {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    .line 591
    const-string v1, "automatic_unlock"

    invoke-virtual {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    .line 592
    const-string v1, "sview_color"

    invoke-virtual {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSviewColor:Landroid/preference/Preference;

    .line 593
    const-string v1, "select_info"

    invoke-virtual {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSelectInfo:Landroid/preference/Preference;

    .line 595
    const-string v1, "/sys/devices/w1_bus_master1/w1_master_verify_mac"

    .line 596
    const/4 v8, 0x0

    .line 597
    const/16 v6, 0x39

    .line 599
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileReader;->read()I

    move-result v1

    int-to-char v6, v1

    .line 601
    const-string v1, "LockScreenMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "verify_mac:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 607
    if-eqz v7, :cond_1b

    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 611
    :cond_1b
    :goto_c
    const/16 v1, 0x30

    if-ne v6, v1, :cond_58

    .line 629
    :cond_1c
    :goto_d
    const v1, 0x7f070088

    if-ne v9, v1, :cond_21

    .line 630
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1d

    .line 632
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f091213

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 636
    :cond_1d
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v1, :cond_1e

    .line 641
    :cond_1e
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1f

    .line 643
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 648
    :cond_1f
    const-string v1, "set_wakeup_command"

    invoke-virtual {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    .line 649
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_21

    .line 650
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 651
    if-eqz v1, :cond_21

    .line 652
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 653
    invoke-virtual {v6, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 654
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v3, :cond_21

    .line 655
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_20

    .line 656
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 657
    :cond_20
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_21

    .line 658
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 666
    :cond_21
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 667
    iget-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mStartFromSearch:Z

    if-eqz v1, :cond_22

    .line 668
    sget v1, Lcom/android/settings/LockscreenMenuSettings;->mSettingValue:I

    const/4 v6, -0x1

    if-eq v1, v6, :cond_22

    .line 669
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 670
    const-string v6, "extra_parent_preference_key"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 671
    sget v6, Lcom/android/settings/LockscreenMenuSettings;->mSettingValue:I

    if-ne v6, v3, :cond_59

    .line 672
    :goto_e
    const-string v4, "lock_screen_shortcut_menu"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 673
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 674
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 675
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 693
    :cond_22
    :goto_f
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 696
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 697
    const-string v1, "multiple_lock_screenswitch"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    .line 699
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_23

    .line 700
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    const-string v3, "com.android.settings.LockScreenSettings"

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 701
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    new-instance v3, Lcom/android/settings/LockscreenMenuSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/LockscreenMenuSettings$2;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 711
    :cond_23
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_24

    .line 712
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 713
    :cond_24
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_25

    if-eqz v0, :cond_25

    .line 714
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 718
    :cond_25
    const-string v1, "lock_screen_clock_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockMenu:Landroid/preference/PreferenceScreen;

    .line 719
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockMenu:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_26

    .line 720
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockMenu:Landroid/preference/PreferenceScreen;

    const-string v3, "com.android.settings.LockScreenSettings"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 721
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockMenu:Landroid/preference/PreferenceScreen;

    new-instance v3, Lcom/android/settings/LockscreenMenuSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/LockscreenMenuSettings$3;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 731
    :cond_26
    const-string v1, "lock_screen_myprofile_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    .line 734
    const-string v1, "lock_screen_wakeup_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    .line 736
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_27

    sget-object v1, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->isVoiceControlEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 737
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 738
    const-string v1, "LockScreenMenu"

    const-string v3, "removePreference lock_screen_wakeup_settings if Svoice is not supported"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_27
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_28

    .line 742
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 743
    :cond_28
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_29

    .line 744
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 746
    :cond_29
    const-string v1, "biometric_weak_improve_matching"

    invoke-virtual {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 748
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_2a

    .line 749
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 752
    :cond_2a
    const-string v3, "LockScreenMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lock type :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    const v4, 0x7f0901d2

    invoke-virtual {p0, v4}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-ne v3, v4, :cond_5c

    .line 755
    const-string v3, "unlock_set_or_change"

    invoke-virtual {p0, v3}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const v4, 0x7f09020b

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 756
    const-string v3, "lock_screen_options_category"

    invoke-virtual {p0, v3}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const v4, 0x7f0911de

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 758
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v3, :cond_2b

    if-eqz v2, :cond_2b

    .line 759
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 760
    :cond_2b
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_2c

    if-eqz v2, :cond_2c

    .line 761
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 762
    :cond_2c
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    if-eqz v2, :cond_2d

    .line 763
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 764
    :cond_2d
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2e

    .line 765
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 766
    :cond_2e
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2f

    .line 767
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 768
    :cond_2f
    if-eqz v1, :cond_30

    .line 769
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 770
    :cond_30
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_31

    .line 771
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 772
    :cond_31
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-eqz v2, :cond_32

    .line 773
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 774
    :cond_32
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_33

    .line 775
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1021
    :cond_33
    :goto_10
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1023
    const-string v2, "unlock_set_or_change"

    invoke-virtual {p0, v2}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const v3, 0x7f09020a

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 1025
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    if-eqz v2, :cond_34

    .line 1026
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1027
    :cond_34
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_35

    .line 1028
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1029
    :cond_35
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_36

    .line 1030
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1031
    :cond_36
    if-eqz v1, :cond_37

    .line 1032
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1033
    :cond_37
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v1, :cond_38

    .line 1034
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1035
    :cond_38
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_39

    .line 1036
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1037
    :cond_39
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_3a

    .line 1038
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mOwnerInfoMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1039
    :cond_3a
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3b

    .line 1040
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1041
    :cond_3b
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_3c

    .line 1042
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1043
    :cond_3c
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_3d

    .line 1044
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1045
    :cond_3d
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockMenu:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_3e

    .line 1046
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1047
    :cond_3e
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v1, :cond_3f

    .line 1048
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1049
    :cond_3f
    if-eqz v0, :cond_40

    .line 1050
    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1051
    :cond_40
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_41

    .line 1052
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1053
    :cond_41
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_42

    .line 1054
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1055
    :cond_42
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_43

    .line 1056
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1057
    :cond_43
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-eqz v0, :cond_44

    .line 1058
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1059
    :cond_44
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_45

    .line 1060
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1066
    :cond_45
    return-object v5

    :cond_46
    move v2, v4

    .line 279
    goto/16 :goto_0

    .line 286
    :cond_47
    const v0, 0x7f070088

    .line 287
    const v5, 0x7f0901d2

    invoke-virtual {p0, v5}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    move v9, v0

    goto/16 :goto_1

    .line 289
    :cond_48
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 291
    const v0, 0x7f070085

    .line 292
    invoke-virtual {p0, v13}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    move v9, v0

    goto/16 :goto_1

    .line 293
    :cond_49
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSignatureLockInstalled()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 295
    const v0, 0x7f070095

    .line 296
    const v5, 0x7f09020d

    invoke-virtual {p0, v5}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    move v9, v0

    goto/16 :goto_1

    .line 298
    :cond_4a
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v4

    .line 326
    :goto_11
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_motion_tilt_to_unlock"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v9, v0

    goto/16 :goto_1

    .line 300
    :sswitch_0
    const v0, 0x7f070091

    .line 301
    const v5, 0x7f0901d9

    invoke-virtual {p0, v5}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_11

    .line 304
    :sswitch_1
    const v0, 0x7f07008c

    .line 305
    const v5, 0x7f0914fe

    invoke-virtual {p0, v5}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_11

    .line 308
    :sswitch_2
    const v0, 0x7f070093

    .line 309
    const v5, 0x7f090205

    invoke-virtual {p0, v5}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_11

    .line 312
    :sswitch_3
    const v0, 0x7f070086

    .line 313
    invoke-virtual {p0, v12}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_11

    .line 318
    :sswitch_4
    const v0, 0x7f070090

    .line 319
    const v5, 0x7f090207

    invoke-virtual {p0, v5}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_11

    .line 322
    :sswitch_5
    const v0, 0x7f070087

    .line 323
    const v5, 0x7f0901db

    invoke-virtual {p0, v5}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    goto :goto_11

    .line 357
    :cond_4b
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    .line 358
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    const-string v6, "multiple_lock_screen"

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f0911dc

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 360
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f0911dd

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 361
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 362
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 363
    if-eqz v0, :cond_3

    .line 364
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 422
    :cond_4c
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_a

    .line 423
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    const v6, 0x7f0911e6

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 424
    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockScreenWidgetOptions:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "easy_mode_switch"

    invoke-static {v1, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_4d

    move v1, v3

    :goto_12
    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_4d
    move v1, v4

    goto :goto_12

    :cond_4e
    move v1, v4

    .line 428
    goto/16 :goto_5

    .line 464
    :cond_4f
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "lock_motion_tilt_to_unlock"

    invoke-static {v1, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 466
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    goto/16 :goto_6

    .line 470
    :cond_50
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "lock_motion_tilt_to_unlock"

    invoke-static {v1, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 472
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    .line 475
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 476
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "lock_screen_face_with_voice"

    invoke-static {v1, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 477
    if-ne v6, v3, :cond_51

    .line 478
    const-string v1, "unlock_set_or_change"

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 479
    invoke-virtual {v1, v11}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 480
    invoke-virtual {p0, v11}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    .line 482
    :cond_51
    const-string v1, "LockScreenMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mLockPatternUtils.usingBiometricWeak(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_52
    move v1, v4

    .line 491
    goto/16 :goto_7

    :cond_53
    move v1, v4

    .line 498
    goto/16 :goto_8

    .line 501
    :cond_54
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    :cond_55
    move v1, v4

    .line 507
    goto/16 :goto_a

    :cond_56
    move v1, v4

    .line 536
    goto/16 :goto_b

    .line 603
    :catch_0
    move-exception v1

    move-object v7, v8

    .line 604
    :goto_13
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 607
    if-eqz v7, :cond_1b

    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_c

    .line 608
    :catch_1
    move-exception v1

    goto/16 :goto_c

    .line 606
    :catchall_0
    move-exception v0

    move-object v7, v8

    .line 607
    :goto_14
    if-eqz v7, :cond_57

    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 608
    :cond_57
    :goto_15
    throw v0

    .line 619
    :cond_58
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1c

    .line 620
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 621
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 622
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSviewColor:Landroid/preference/Preference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 623
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSelectInfo:Landroid/preference/Preference;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_d

    :cond_59
    move v3, v4

    .line 671
    goto/16 :goto_e

    .line 677
    :cond_5a
    const-string v4, "dualclock_settings"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 678
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 679
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 680
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 682
    :cond_5b
    const-string v4, "safetyzone_settings"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 683
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 684
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 685
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 776
    :cond_5c
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    const v4, 0x7f0901d9

    invoke-virtual {p0, v4}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-ne v3, v4, :cond_66

    .line 778
    const-string v2, "unlock_set_or_change"

    invoke-virtual {p0, v2}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const v3, 0x7f09020e

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 779
    const-string v2, "lock_screen_options_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const v3, 0x7f0911df

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 781
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v2, :cond_5d

    .line 782
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 783
    :cond_5d
    if-eqz v1, :cond_5e

    .line 784
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 785
    :cond_5e
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_5f

    .line 786
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 787
    :cond_5f
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_60

    .line 788
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 789
    :cond_60
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_61

    .line 790
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 791
    :cond_61
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_62

    .line 792
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 793
    :cond_62
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_63

    .line 794
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 795
    :cond_63
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_64

    .line 796
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 797
    :cond_64
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-eqz v2, :cond_65

    .line 798
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 799
    :cond_65
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_33

    .line 800
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_10

    .line 801
    :cond_66
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    const v4, 0x7f0914fe

    invoke-virtual {p0, v4}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-ne v3, v4, :cond_72

    .line 803
    const-string v3, "unlock_set_or_change"

    invoke-virtual {p0, v3}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const v4, 0x7f090210

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 804
    const-string v3, "lock_screen_options_category"

    invoke-virtual {p0, v3}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const v4, 0x7f090210

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 806
    if-eqz v1, :cond_67

    .line 807
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 808
    :cond_67
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v3, :cond_68

    .line 809
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 810
    :cond_68
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_69

    .line 811
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 812
    :cond_69
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_6a

    .line 813
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 814
    :cond_6a
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_6b

    .line 815
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 816
    :cond_6b
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_6c

    .line 817
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 818
    :cond_6c
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_6d

    .line 819
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 820
    :cond_6d
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_6e

    .line 821
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 822
    :cond_6e
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_6f

    .line 823
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 824
    :cond_6f
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-eqz v3, :cond_70

    .line 825
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 826
    :cond_70
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_33

    const-string v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    if-eqz v2, :cond_33

    .line 827
    :cond_71
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_10

    .line 828
    :cond_72
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    const v4, 0x7f090205

    invoke-virtual {p0, v4}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-ne v3, v4, :cond_7d

    .line 830
    const-string v2, "unlock_set_or_change"

    invoke-virtual {p0, v2}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const v3, 0x7f09020f

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 831
    const-string v2, "lock_screen_options_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const v3, 0x7f0911e0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 833
    if-eqz v1, :cond_73

    .line 834
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 835
    :cond_73
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v2, :cond_74

    .line 836
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 837
    :cond_74
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_75

    .line 838
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 839
    :cond_75
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_76

    .line 840
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 841
    :cond_76
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_77

    .line 842
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 843
    :cond_77
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_78

    .line 844
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 845
    :cond_78
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_79

    .line 846
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 847
    :cond_79
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_7a

    .line 848
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 849
    :cond_7a
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_7b

    .line 850
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 851
    :cond_7b
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-eqz v2, :cond_7c

    .line 852
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 853
    :cond_7c
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_33

    .line 854
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_10

    .line 855
    :cond_7d
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    const v4, 0x7f0901db

    invoke-virtual {p0, v4}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-ne v3, v4, :cond_88

    .line 857
    const-string v2, "unlock_set_or_change"

    invoke-virtual {p0, v2}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const v3, 0x7f0901fa

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 859
    const-string v2, "lock_screen_options_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const v3, 0x7f0901fa

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 862
    if-eqz v1, :cond_7e

    .line 863
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 864
    :cond_7e
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v2, :cond_7f

    .line 865
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 866
    :cond_7f
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_80

    .line 867
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 868
    :cond_80
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_81

    .line 869
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 870
    :cond_81
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_82

    .line 871
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 872
    :cond_82
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_83

    .line 873
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 874
    :cond_83
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_84

    .line 875
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 876
    :cond_84
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_85

    .line 877
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 878
    :cond_85
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_86

    .line 879
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 880
    :cond_86
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-eqz v2, :cond_87

    .line 881
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 882
    :cond_87
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_33

    .line 883
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_10

    .line 884
    :cond_88
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    const v4, 0x7f090207

    invoke-virtual {p0, v4}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-ne v3, v4, :cond_94

    .line 886
    const-string v3, "unlock_set_or_change"

    invoke-virtual {p0, v3}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const v4, 0x7f090211

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 887
    const-string v3, "lock_screen_options_category"

    invoke-virtual {p0, v3}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const v4, 0x7f0911e3

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 889
    if-eqz v1, :cond_89

    .line 890
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 891
    :cond_89
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v3, :cond_8a

    .line 892
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 893
    :cond_8a
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_8b

    .line 894
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 895
    :cond_8b
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_8c

    .line 896
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 897
    :cond_8c
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_8d

    .line 898
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 899
    :cond_8d
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_8e

    .line 900
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 901
    :cond_8e
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_8f

    .line 902
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 903
    :cond_8f
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_90

    .line 904
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 905
    :cond_90
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_91

    .line 906
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 907
    :cond_91
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-eqz v3, :cond_92

    .line 908
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 909
    :cond_92
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_33

    const-string v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    if-eqz v2, :cond_33

    .line 910
    :cond_93
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_10

    .line 911
    :cond_94
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    invoke-virtual {p0, v12}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_9f

    .line 913
    const-string v2, "unlock_set_or_change"

    invoke-virtual {p0, v2}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/preference/Preference;->setSummary(I)V

    .line 914
    const-string v2, "lock_screen_options_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/preference/Preference;->setTitle(I)V

    .line 916
    if-eqz v1, :cond_95

    .line 917
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 918
    :cond_95
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v2, :cond_96

    .line 919
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 920
    :cond_96
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_97

    .line 921
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 922
    :cond_97
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_98

    .line 923
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 924
    :cond_98
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_99

    .line 925
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 926
    :cond_99
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_9a

    .line 927
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 928
    :cond_9a
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_9b

    .line 929
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 930
    :cond_9b
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_9c

    .line 931
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 932
    :cond_9c
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_9d

    .line 933
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 934
    :cond_9d
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-eqz v2, :cond_9e

    .line 935
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 936
    :cond_9e
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_33

    .line 937
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_10

    .line 938
    :cond_9f
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    invoke-virtual {p0, v13}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_aa

    .line 940
    const-string v2, "unlock_set_or_change"

    invoke-virtual {p0, v2}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/preference/Preference;->setSummary(I)V

    .line 941
    const-string v2, "lock_screen_options_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const v3, 0x7f0911e1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 943
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v2, :cond_a0

    .line 944
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 945
    :cond_a0
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_a1

    .line 946
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 947
    :cond_a1
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_a2

    .line 948
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 949
    :cond_a2
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_a3

    .line 950
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 951
    :cond_a3
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_a4

    .line 952
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 954
    :cond_a4
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 955
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    const/high16 v3, 0x1

    if-eq v2, v3, :cond_a5

    .line 956
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_a5

    .line 957
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 965
    :cond_a5
    :goto_16
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_a6

    .line 966
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 967
    :cond_a6
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_a7

    .line 968
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 969
    :cond_a7
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-eqz v2, :cond_a8

    .line 970
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 971
    :cond_a8
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_33

    .line 972
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_10

    .line 961
    :cond_a9
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_a5

    .line 962
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_16

    .line 973
    :cond_aa
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_b4

    .line 975
    const-string v2, "unlock_set_or_change"

    invoke-virtual {p0, v2}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/preference/Preference;->setSummary(I)V

    .line 976
    const-string v2, "lock_screen_options_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const v3, 0x7f0911e1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 978
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v2, :cond_ab

    .line 979
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 980
    :cond_ab
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_ac

    .line 981
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 982
    :cond_ac
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_ad

    .line 983
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 984
    :cond_ad
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_ae

    .line 985
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 986
    :cond_ae
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_af

    .line 987
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 988
    :cond_af
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_b0

    .line 989
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 990
    :cond_b0
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_b1

    .line 991
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 992
    :cond_b1
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_b2

    .line 993
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 994
    :cond_b2
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-eqz v2, :cond_b3

    .line 995
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 996
    :cond_b3
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_33

    .line 997
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_10

    .line 998
    :cond_b4
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneLocktype:Ljava/lang/String;

    const v3, 0x7f09020d

    invoke-virtual {p0, v3}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_33

    .line 999
    const-string v2, "unlock_set_or_change"

    invoke-virtual {p0, v2}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const v3, 0x7f09020d

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 1000
    const-string v2, "lock_screen_options_category"

    invoke-virtual {p0, v2}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const v3, 0x7f0911e2

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 1002
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v2, :cond_b5

    .line 1003
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1004
    :cond_b5
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_b6

    .line 1005
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1006
    :cond_b6
    if-eqz v1, :cond_b7

    .line 1007
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1008
    :cond_b7
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_b8

    .line 1009
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1010
    :cond_b8
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_b9

    .line 1011
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1012
    :cond_b9
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_ba

    .line 1013
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1014
    :cond_ba
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_bb

    .line 1015
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1016
    :cond_bb
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_bc

    .line 1017
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1018
    :cond_bc
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_33

    .line 1019
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_10

    .line 608
    :catch_2
    move-exception v1

    goto/16 :goto_c

    :catch_3
    move-exception v1

    goto/16 :goto_15

    .line 606
    :catchall_1
    move-exception v0

    goto/16 :goto_14

    .line 603
    :catch_4
    move-exception v1

    goto/16 :goto_13

    :cond_bd
    move-object v5, v1

    goto/16 :goto_2

    .line 298
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_2
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
        0x70000 -> :sswitch_5
        0x80000 -> :sswitch_1
        0x90000 -> :sswitch_3
    .end sparse-switch
.end method

.method private disableUnusableTimeouts(J)V
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1192
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 1193
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 1194
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1195
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1197
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "screen_off_timeout"

    invoke-static {v0, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v7, v0

    move v0, v1

    .line 1200
    :goto_0
    array-length v7, v4

    if-ge v0, v7, :cond_1

    .line 1201
    aget-object v7, v4, v0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1202
    cmp-long v7, v7, p1

    if-gtz v7, :cond_0

    .line 1203
    aget-object v7, v3, v0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1204
    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1200
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1209
    :cond_1
    const-string v0, "LockScreenMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "revisedValues.size() : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v7, p1, v7

    .line 1211
    const-string v0, "LockScreenMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "last_timeout : "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_2

    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-gez v0, :cond_2

    .line 1213
    const v0, 0x7f09100f

    new-array v3, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/LockscreenMenuSettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1218
    :cond_2
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1220
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1222
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1223
    int-to-long v3, v0

    cmp-long v3, v3, p1

    if-gtz v3, :cond_4

    .line 1224
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1233
    :goto_1
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1235
    return-void

    .line 1226
    :cond_4
    const-string v0, "LockScreenMenu"

    const-string v3, "mLockAfter.setValueIndex(revisedValues.size()-1)"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_1
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 1285
    const-string v0, "enterprise_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1287
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 11
    .parameter

    .prologue
    const-wide/16 v4, 0x3c

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    .line 1932
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    .line 1933
    div-long v2, v0, v4

    .line 1934
    rem-long v4, v0, v4

    .line 1936
    const-string v0, ""

    .line 1937
    cmp-long v1, v2, v7

    if-lez v1, :cond_0

    .line 1938
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110008

    long-to-int v6, v2

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    long-to-int v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1940
    :cond_0
    cmp-long v1, v2, v7

    if-lez v1, :cond_1

    cmp-long v1, v4, v7

    if-lez v1, :cond_1

    .line 1941
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1943
    :cond_1
    cmp-long v1, v4, v7

    if-lez v1, :cond_2

    .line 1944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110009

    long-to-int v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    long-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1947
    :cond_2
    const-string v1, "LockScreenMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTimeoutNewEntry : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    return-object v0
.end method

.method private isEffect()Z
    .locals 6

    .prologue
    .line 1266
    const/4 v2, 0x0

    .line 1267
    .local v2, water_effect:I
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_ripple_effect"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1272
    .local v0, effect:I
    const/4 v2, 0x1

    .line 1274
    if-ne v0, v2, :cond_0

    .line 1275
    const/4 v1, 0x1

    .line 1279
    .local v1, state:Z
    :goto_0
    return v1

    .line 1277
    .end local v1           #state:Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #state:Z
    goto :goto_0
.end method

.method private isInDefaultTimeoutList(J)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1977
    .line 1978
    iget-boolean v0, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_1

    .line 1979
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0019

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1985
    :goto_0
    if-nez v2, :cond_2

    .line 1991
    :cond_0
    :goto_1
    return v1

    .line 1981
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a001b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1987
    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1988
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    .line 1987
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 1677
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private isVoiceControlEnabled(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1070
    const/4 v0, 0x1

    .line 1073
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.vlingo.midas"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 1074
    const-string v2, "LockScreenMenu"

    const-string v3, "SVoice is installed."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1084
    :goto_0
    return v0

    .line 1075
    :catch_0
    move-exception v0

    .line 1076
    const-string v0, "LockScreenMenu"

    const-string v2, "SVoice is not installed."

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1077
    goto :goto_0
.end method

.method private setupLockAfterPreference()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    .line 1121
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    const-wide/16 v4, 0x1388

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1123
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1124
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1125
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 1126
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v4, v4

    .line 1128
    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    .line 1134
    iget-boolean v6, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v6, :cond_2

    :goto_1
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->disableUnusableTimeouts(J)V

    .line 1137
    :cond_0
    return-void

    :cond_1
    move-wide v0, v2

    .line 1125
    goto :goto_0

    .line 1134
    :cond_2
    sub-long/2addr v0, v4

    goto :goto_1
.end method

.method private setupSignatureVerificationLevelPreference(Z)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 1238
    if-nez p1, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    const v2, 0x7f040155

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 1240
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1243
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_signature_verification_level"

    invoke-static {v0, v2, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1246
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1248
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 1249
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    move v0, v1

    move v2, v1

    .line 1252
    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_2

    .line 1253
    aget-object v6, v5, v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1254
    int-to-long v8, v3

    cmp-long v6, v8, v6

    if-nez v6, :cond_1

    move v2, v0

    .line 1252
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1259
    :cond_2
    aget-object v0, v4, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1260
    const-string v2, "SecuritySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get signature verification level: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    const v3, 0x7f09103e

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1263
    return-void
.end method

.method private showSafetyZoneEnableDialog()V
    .locals 3

    .prologue
    .line 1859
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090c18

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/LockscreenMenuSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/LockscreenMenuSettings$8;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/LockscreenMenuSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/LockscreenMenuSettings$7;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1882
    return-void
.end method

.method private showSafetyZoneInfoDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1886
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1888
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1889
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1890
    iput-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    .line 1893
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1894
    const v2, 0x7f04006a

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1895
    const v0, 0x7f0b0077

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1897
    const v3, 0x7f090c17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1898
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1899
    const v0, 0x7f090c11

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1900
    const v0, 0x7f09074d

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1901
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    .line 1902
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1903
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneInfoDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/LockscreenMenuSettings$9;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/LockscreenMenuSettings$9;-><init>(Lcom/android/settings/LockscreenMenuSettings;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1922
    return-void
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 14

    .prologue
    .line 1141
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1143
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 1144
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 1145
    const/4 v1, 0x0

    .line 1146
    const/4 v0, 0x0

    :goto_0
    array-length v2, v7

    if-ge v0, v2, :cond_1

    .line 1147
    aget-object v2, v7, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1148
    cmp-long v2, v4, v2

    if-ltz v2, :cond_0

    move v1, v0

    .line 1146
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1154
    :cond_1
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 1155
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v8, v0

    .line 1157
    const-wide/16 v10, 0x0

    iget-boolean v0, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_3

    :goto_2
    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 1161
    iget-boolean v0, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_4

    const v0, 0x7f090057

    .line 1162
    :goto_3
    iget-boolean v2, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v2, :cond_5

    const v2, 0x7f090058

    .line 1165
    :goto_4
    aget-object v3, v7, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v3, v12, v10

    if-gez v3, :cond_7

    cmp-long v3, v10, v4

    if-gez v3, :cond_7

    .line 1166
    const-string v3, "LockScreenMenu"

    const-string v4, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    iget-boolean v3, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v3, :cond_6

    cmp-long v3, v10, v8

    if-gez v3, :cond_6

    .line 1169
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v1, v6, v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1189
    :goto_5
    return-void

    .line 1154
    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_1

    .line 1157
    :cond_3
    sub-long/2addr v2, v8

    goto :goto_2

    .line 1161
    :cond_4
    const v0, 0x7f0901a2

    goto :goto_3

    .line 1162
    :cond_5
    const v2, 0x7f09100e

    goto :goto_4

    .line 1171
    :cond_6
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings/LockscreenMenuSettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1176
    :cond_7
    if-nez v1, :cond_8

    .line 1177
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v1, v6, v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1179
    :cond_8
    invoke-direct {p0, v4, v5}, Lcom/android/settings/LockscreenMenuSettings;->isInDefaultTimeoutList(J)Z

    move-result v2

    if-eqz v2, :cond_a

    cmp-long v2, v4, v10

    if-ltz v2, :cond_9

    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-nez v2, :cond_a

    .line 1180
    :cond_9
    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v1, v6, v1

    aput-object v1, v3, v4

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1182
    :cond_a
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings/LockscreenMenuSettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/LockscreenMenuSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method

.method private updateRippleEffectPreferenceSummary()V
    .locals 7

    .prologue
    .line 1845
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1846
    .local v1, entries:[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 1848
    .local v3, values:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_ripple_effect"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1849
    .local v0, State:I
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1851
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 1852
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 1853
    iget-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1851
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1856
    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 1089
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1090
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/LockscreenMenuSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/LockscreenMenuSettings$4;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1112
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1685
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1686
    const/16 v1, 0x7c

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 1688
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->startBiometricWeakImprove()V

    .line 1709
    :cond_0
    :goto_0
    return-void

    .line 1690
    :cond_1
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_2

    if-ne p2, v2, :cond_2

    .line 1692
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 1693
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 1694
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 1695
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 1708
    .end local v0           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1999
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 243
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    .line 247
    const-string v1, "DeviceLockTime"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    .line 250
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 252
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 254
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 257
    .local v0, activity:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirectUri:Landroid/net/Uri;

    .line 258
    const-string v1, "LockScreenMenu"

    const-string v2, " LockScreen : onCreateCalled"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirectUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirectUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    .line 261
    const-string v1, "LockScreenMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDirect LockScreen : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v1, :cond_1

    .line 268
    iget-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mStartFromSearch:Z

    .line 270
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1116
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 1117
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1546
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 1547
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1548
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1549
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1550
    const-string v0, "LockScreenMenu"

    const-string v1, "onPause(), dismiss mUnlockEffect dialog"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1712
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mLockAfter:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_5

    move-object v0, p2

    .line 1713
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1715
    int-to-long v3, v0

    invoke-direct {p0, v3, v4}, Lcom/android/settings/LockscreenMenuSettings;->isInDefaultTimeoutList(J)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1716
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_after_timeout_rollback"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v3, v0

    .line 1722
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "lock_screen_lock_after_timeout"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1728
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "screen_off_timeout"

    const-wide/16 v5, 0x7530

    invoke-static {v0, v4, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1730
    iget-boolean v0, p0, Lcom/android/settings/LockscreenMenuSettings;->isDeviceLockTime:Z

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    int-to-long v6, v3

    cmp-long v0, v6, v4

    if-gez v0, :cond_0

    .line 1731
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->showDeviceLockDialog()V

    .line 1734
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->updateLockAfterPreferenceSummary()V

    .line 1826
    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1828
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v0, :cond_1a

    .line 1829
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v1

    .line 1830
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "my_profile_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1841
    :cond_3
    :goto_3
    return v1

    .line 1718
    :cond_4
    const v0, 0x1b7741

    move v3, v0

    goto :goto_0

    .line 1724
    :catch_0
    move-exception v0

    .line 1725
    const-string v4, "SecuritySettings"

    const-string v5, "could not persist lockAfter timeout setting"

    invoke-static {v4, v5, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1735
    :cond_5
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSignatureVerificationLevel:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_6

    move-object v0, p2

    .line 1736
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1738
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_signature_verification_level"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1744
    :goto_4
    invoke-direct {p0, v1}, Lcom/android/settings/LockscreenMenuSettings;->setupSignatureVerificationLevelPreference(Z)V

    goto :goto_2

    .line 1740
    :catch_1
    move-exception v0

    .line 1741
    const-string v3, "SecuritySettings"

    const-string v4, "could not persist signature verification level setting"

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1745
    :cond_6
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1746
    const-string v0, "oversea"

    const-string v3, "ril.currentplmn"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1747
    if-nez v0, :cond_7

    const-string v0, "SKT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1748
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1749
    const v3, 0x7f090eb4

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1750
    const v3, 0x7f091496

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1751
    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/LockscreenMenuSettings$6;

    invoke-direct {v4, p0}, Lcom/android/settings/LockscreenMenuSettings$6;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1757
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1758
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 1760
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dualclock_menu_settings"

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_5
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_8
    move v0, v2

    goto :goto_5

    .line 1762
    :cond_9
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZone:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v0, p2

    .line 1763
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1765
    if-eqz v0, :cond_c

    .line 1766
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "safetyzone_settings"

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1767
    if-eqz v0, :cond_1

    .line 1769
    const-string v3, "DoNotShowDialogOn"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1770
    if-nez v0, :cond_a

    .line 1771
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->showSafetyZoneInfoDialog()V

    goto/16 :goto_2

    .line 1773
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "safety_zone_list"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1774
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1775
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->showSafetyZoneEnableDialog()V

    goto/16 :goto_2

    .line 1777
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "safety_zone_enable"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1781
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "safety_zone_enable"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_e

    .line 1782
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f090c1a

    invoke-virtual {p0, v4}, Lcom/android/settings/LockscreenMenuSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1783
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "safety_zone_enable"

    if-eqz v0, :cond_d

    move v0, v1

    :goto_6
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_d
    move v0, v2

    goto :goto_6

    .line 1785
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "safety_zone_enable"

    if-eqz v0, :cond_f

    move v0, v1

    :goto_7
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_f
    move v0, v2

    goto :goto_7

    .line 1788
    :cond_10
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_12

    .line 1789
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_ripple_effect"

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1790
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->updateRippleEffectPreferenceSummary()V

    .line 1791
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_11

    .line 1792
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->isEffect()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1793
    :cond_11
    const-string v3, "LockScreenMenu"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " LockScreen : lockscreen_ripple_effect :"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1794
    :cond_12
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mFingerPrint:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v0, :cond_14

    move-object v0, p2

    .line 1795
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1796
    if-eqz v0, :cond_13

    .line 1797
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lock_screen_fingerprint_shortcut"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1799
    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lock_screen_fingerprint_shortcut"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1800
    :cond_14
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v0, :cond_17

    .line 1802
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_15
    move-object v0, p2

    .line 1805
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    .line 1806
    :goto_8
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_shortcut"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1807
    new-instance v3, Landroid/content/Intent;

    const-string v0, "com.android.settings.LOCK_SCREEN_SHORTCUT_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1808
    const-string v4, "isEnable"

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1809
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_16
    move v0, v2

    .line 1805
    goto :goto_8

    .line 1813
    :cond_17
    const-string v0, "multiple_lock_screen"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1815
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_18
    move-object v0, p2

    .line 1818
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    .line 1819
    :goto_9
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "kg_multiple_lockscreen"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1820
    const-string v0, "LockScreenMenu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple lock screen : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "kg_multiple_lockscreen"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_19
    move v0, v2

    .line 1818
    goto :goto_9

    .line 1831
    :cond_1a
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v0, :cond_1c

    .line 1832
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    move v2, v1

    .line 1833
    :cond_1b
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wake_up_lock_screen"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    .line 1834
    :cond_1c
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v0, :cond_3

    .line 1835
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    move v2, v1

    .line 1836
    :cond_1d
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "kg_multiple_lockscreen"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1556
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 1558
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1559
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v0, :cond_0

    .line 1560
    sget v0, Lcom/android/settings/LockscreenMenuSettings;->mSettingValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1561
    sget v0, Lcom/android/settings/LockscreenMenuSettings;->mSettingValue:I

    if-ne v0, v3, :cond_3

    move v1, v3

    :goto_0
    move-object v0, p2

    .line 1562
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 1563
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1564
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1571
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_wallpaper"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1572
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_motion_tilt_to_unlock"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1573
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering_ink_effect"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1575
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 1576
    const-string v1, "unlock_set_or_change"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1577
    const-string v0, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v1, 0x7b

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings/LockscreenMenuSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 1668
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    :goto_2
    return v3

    :cond_3
    move v1, v6

    .line 1561
    goto :goto_0

    .line 1579
    :cond_4
    const-string v1, "biometric_weak_improve_matching"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1580
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 1582
    const/16 v1, 0x7c

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1588
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->startBiometricWeakImprove()V

    goto :goto_1

    .line 1590
    :cond_5
    const-string v1, "biometric_weak_liveliness"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1591
    invoke-direct {p0, p2}, Lcom/android/settings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1592
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_1

    .line 1597
    :cond_6
    iget-object v1, p0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1598
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 1600
    const/16 v3, 0x7d

    invoke-virtual {v1, v3, v2, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1606
    invoke-virtual {v0, v6}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 1607
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 1610
    :cond_7
    const-string v1, "lockenabled"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1611
    invoke-direct {p0, p2}, Lcom/android/settings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_1

    .line 1612
    :cond_8
    const-string v1, "visiblepattern"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1613
    invoke-direct {p0, p2}, Lcom/android/settings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_1

    .line 1614
    :cond_9
    const-string v1, "quick_note"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1615
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_quick_note"

    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_a

    :goto_3
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_a
    move v3, v6

    goto :goto_3

    .line 1616
    :cond_b
    const-string v1, "visiblesignature"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1617
    invoke-direct {p0, p2}, Lcom/android/settings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisibleSignatureEnabled(Z)V

    goto/16 :goto_1

    .line 1618
    :cond_c
    const-string v1, "unlock_tactile_feedback"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1620
    const-string v1, "power_button_instantly_locks"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1621
    invoke-direct {p0, p2}, Lcom/android/settings/LockscreenMenuSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto/16 :goto_1

    .line 1622
    :cond_d
    const-string v0, "owner_info_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/LockscreenMenuSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_e

    .line 1623
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->showDialog()V

    goto/16 :goto_1

    .line 1624
    :cond_e
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1625
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    .line 1626
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->isEffect()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1627
    :cond_f
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1628
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "unlock_text"

    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_10

    :goto_4
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_10
    move v3, v6

    goto :goto_4

    .line 1629
    :cond_11
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1630
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "automatic_unlock"

    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_12

    :goto_5
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_12
    move v3, v6

    goto :goto_5

    .line 1631
    :cond_13
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1632
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wake_up_lock_screen"

    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_14

    :goto_6
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_14
    move v3, v6

    goto :goto_6

    .line 1633
    :cond_15
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1634
    const-string v0, "oversea"

    const-string v1, "ril.currentplmn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1635
    if-nez v0, :cond_2

    const-string v0, "SKT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1636
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1637
    const v1, 0x7f090eb4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1638
    const v1, 0x7f091496

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1639
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/LockscreenMenuSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/LockscreenMenuSettings$5;-><init>(Lcom/android/settings/LockscreenMenuSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1644
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1645
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 1648
    :cond_16
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1649
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1650
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1651
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.InkeffectPreviewTablet"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1652
    invoke-virtual {p0, v0}, Lcom/android/settings/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1654
    :cond_17
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.InkeffectPreview"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1655
    invoke-virtual {p0, v0}, Lcom/android/settings/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1659
    :cond_18
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1660
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_swipe_main_user"

    iget-object v2, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_19

    :goto_7
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_19
    move v3, v6

    goto :goto_7

    .line 1661
    :cond_1a
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1662
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_2

    .line 1663
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 1664
    const-string v1, "com.android.settings.myprofile.PersonalMessage"

    const v3, 0x7f090eb8

    const-string v4, ""

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1294
    iget-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 1295
    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 1297
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 1301
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 1303
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    .line 1304
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1308
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 1309
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1311
    :cond_1
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 1312
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "lock_screen_quick_note"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1314
    :cond_2
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 1315
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutoSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "auto_swipe_main_user"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1317
    :cond_3
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 1318
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mVisibleSignature:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisibleSignatureEnabled()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1320
    :cond_4
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 1321
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1323
    :cond_5
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    .line 1324
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1325
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1326
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f091311

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 1330
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lockscreen_wallpaper"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_20

    move v0, v2

    .line 1331
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "lock_motion_tilt_to_unlock"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1332
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "pen_hovering_ink_effect"

    invoke-static {v3, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1335
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_21

    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v3

    if-nez v3, :cond_21

    .line 1337
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_7

    .line 1338
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1339
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1355
    :cond_7
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_24

    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v3

    if-nez v3, :cond_24

    .line 1357
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_8

    .line 1358
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1359
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 1375
    :cond_8
    :goto_4
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    if-eqz v3, :cond_a

    .line 1376
    if-nez v0, :cond_9

    if-lez v5, :cond_29

    .line 1377
    :cond_9
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1388
    :goto_5
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->updateRippleEffectPreferenceSummary()V

    .line 1390
    :cond_a
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_d

    .line 1391
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->isEffect()Z

    move-result v7

    invoke-virtual {v3, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1392
    if-nez v0, :cond_b

    if-lez v5, :cond_c

    .line 1393
    :cond_b
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1395
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1396
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffectSummaryForTablet:[I

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 1401
    :cond_d
    :goto_6
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_e

    .line 1402
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "unlock_text"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2b

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1405
    :cond_e
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_f

    .line 1406
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mAutomaticUnlock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "automatic_unlock"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2c

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1409
    :cond_f
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_10

    .line 1410
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "wake_up_lock_screen"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v1

    :goto_9
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1411
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "easy_mode_switch"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2e

    move v0, v1

    :goto_a
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1414
    :cond_10
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_11

    .line 1415
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "easy_mode_switch"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2f

    move v0, v1

    :goto_b
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1419
    :cond_11
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 1420
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isSVoiceAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_30

    move v0, v1

    :goto_c
    move v3, v0

    .line 1422
    :goto_d
    if-nez v3, :cond_13

    .line 1423
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_12

    .line 1424
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1425
    :cond_12
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_13

    .line 1426
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->setWakeupCommand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1432
    :cond_13
    iget v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    const/16 v5, 0xb

    if-ne v0, v5, :cond_31

    .line 1433
    const-string v0, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v5, 0x7b

    const/4 v6, 0x0

    invoke-virtual {p0, p0, v0, v5, v6}, Lcom/android/settings/LockscreenMenuSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 1435
    iput v9, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    .line 1445
    :cond_14
    :goto_e
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "safety_zone_enable"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/LockscreenMenuSettings;->mSafetyZoneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v5, v1, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1448
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1449
    invoke-direct {p0}, Lcom/android/settings/LockscreenMenuSettings;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenViewAllowed(I)Z

    move-result v0

    if-nez v0, :cond_32

    .line 1451
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_15

    .line 1452
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1453
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 1466
    :cond_15
    :goto_f
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_16

    .line 1467
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1468
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "kg_multiple_lockscreen"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_35

    move v0, v1

    :goto_10
    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1471
    :cond_16
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockMenu:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_17

    .line 1472
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mClockMenu:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "easy_mode_switch"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_36

    move v0, v1

    :goto_11
    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1475
    :cond_17
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_18

    .line 1476
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1477
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "my_profile_enabled"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_37

    move v0, v1

    :goto_12
    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1478
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "easy_mode_switch"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_38

    move v0, v1

    :goto_13
    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 1481
    :cond_18
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_19

    .line 1482
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1483
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "wake_up_lock_screen"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_39

    move v0, v1

    :goto_14
    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1484
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "easy_mode_switch"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3a

    move v0, v1

    :goto_15
    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 1487
    :cond_19
    if-nez v3, :cond_1a

    .line 1488
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_1a

    .line 1489
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 1496
    :cond_1a
    iput-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 1497
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1498
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v0, :cond_1d

    .line 1499
    sget v0, Lcom/android/settings/LockscreenMenuSettings;->mSettingValue:I

    if-eq v0, v9, :cond_1d

    .line 1500
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 1501
    const-string v3, "extra_parent_preference_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1502
    sget v3, Lcom/android/settings/LockscreenMenuSettings;->mSettingValue:I

    if-ne v3, v1, :cond_3b

    .line 1503
    :goto_16
    const-string v3, "multiple_lock_screenswitch"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1504
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_1b

    .line 1505
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1506
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1507
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1510
    :cond_1b
    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 1536
    :cond_1c
    :goto_17
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->initArrayLinkKey()V

    .line 1540
    :cond_1d
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 1542
    return-void

    :cond_1e
    move v0, v2

    .line 1312
    goto/16 :goto_0

    :cond_1f
    move v0, v2

    .line 1315
    goto/16 :goto_1

    :cond_20
    move v0, v1

    .line 1330
    goto/16 :goto_2

    .line 1343
    :cond_21
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "kg_multiple_lockscreen"

    invoke-static {v3, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_22

    move v3, v1

    .line 1345
    :goto_18
    iget-object v7, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_7

    .line 1346
    iget-object v7, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1347
    iget-object v7, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v8, "easy_mode_switch"

    invoke-static {v3, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_23

    move v3, v1

    :goto_19
    invoke-virtual {v7, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_22
    move v3, v2

    .line 1343
    goto :goto_18

    :cond_23
    move v3, v2

    .line 1347
    goto :goto_19

    .line 1363
    :cond_24
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_8

    .line 1364
    iget-object v7, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v8, "lock_screen_shortcut"

    invoke-static {v3, v8, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_25

    move v3, v1

    :goto_1a
    invoke-virtual {v7, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1365
    const-string v3, "DCM"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 1366
    iget-object v7, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v8, "easy_mode_switch"

    invoke-static {v3, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_26

    move v3, v1

    :goto_1b
    invoke-virtual {v7, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_25
    move v3, v2

    .line 1364
    goto :goto_1a

    :cond_26
    move v3, v2

    .line 1366
    goto :goto_1b

    .line 1368
    :cond_27
    iget-object v7, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v8, "easy_mode_switch"

    invoke-static {v3, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_28

    sget-object v3, Lcom/android/settings/LockscreenMenuSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_28

    move v3, v1

    :goto_1c
    invoke-virtual {v7, v3}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_28
    move v3, v2

    goto :goto_1c

    .line 1379
    :cond_29
    iget-object v3, p0, Lcom/android/settings/LockscreenMenuSettings;->mUnlockEffect:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_5

    .line 1398
    :cond_2a
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mInkEffectSummary:[I

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_2b
    move v0, v2

    .line 1402
    goto/16 :goto_7

    :cond_2c
    move v0, v2

    .line 1406
    goto/16 :goto_8

    :cond_2d
    move v0, v2

    .line 1410
    goto/16 :goto_9

    :cond_2e
    move v0, v2

    .line 1411
    goto/16 :goto_a

    :cond_2f
    move v0, v2

    .line 1415
    goto/16 :goto_b

    :cond_30
    move v0, v2

    .line 1420
    goto/16 :goto_c

    .line 1436
    :cond_31
    iget v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDirect:I

    if-ne v0, v9, :cond_14

    .line 1441
    const-string v0, "LockScreenMenu"

    const-string v5, "LockScreenMenuSettings : onResumeCalled -> finish()"

    invoke-static {v0, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->finish()V

    goto/16 :goto_e

    .line 1457
    :cond_32
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "kg_multiple_lockscreen"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_33

    move v0, v1

    .line 1459
    :goto_1d
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v5, :cond_15

    .line 1460
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1461
    iget-object v5, p0, Lcom/android/settings/LockscreenMenuSettings;->mMultipleLockScreenSwitch:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "easy_mode_switch"

    invoke-static {v0, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_34

    move v0, v1

    :goto_1e
    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_f

    :cond_33
    move v0, v2

    .line 1457
    goto :goto_1d

    :cond_34
    move v0, v2

    .line 1461
    goto :goto_1e

    :cond_35
    move v0, v2

    .line 1468
    goto/16 :goto_10

    :cond_36
    move v0, v2

    .line 1472
    goto/16 :goto_11

    :cond_37
    move v0, v2

    .line 1477
    goto/16 :goto_12

    :cond_38
    move v0, v2

    .line 1478
    goto/16 :goto_13

    :cond_39
    move v0, v2

    .line 1483
    goto/16 :goto_14

    :cond_3a
    move v0, v2

    .line 1484
    goto/16 :goto_15

    :cond_3b
    move v1, v2

    .line 1502
    goto/16 :goto_16

    .line 1511
    :cond_3c
    const-string v3, "lock_screen_shortcut_menu"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 1512
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_3d

    .line 1513
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1514
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1515
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mShortcutMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1518
    :cond_3d
    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    goto/16 :goto_17

    .line 1519
    :cond_3e
    const-string v3, "lock_screen_myprofile_settings"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1520
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_3f

    .line 1521
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1522
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1523
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mMyProfileMenu:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1526
    :cond_3f
    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    goto/16 :goto_17

    .line 1527
    :cond_40
    const-string v3, "lock_screen_wakeup_settings"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1528
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_41

    .line 1529
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1530
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1531
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mSayYourWakeUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/LockscreenMenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1534
    :cond_41
    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    goto/16 :goto_17

    :cond_42
    move v3, v1

    goto/16 :goto_d
.end method

.method public showDeviceLockDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1954
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1956
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1957
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1958
    iput-object v4, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 1961
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/LockscreenMenuSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1962
    const v2, 0x7f040115

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1963
    const v0, 0x7f0b0300

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1964
    const v3, 0x7f090059

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1966
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1967
    const v0, 0x7f090571

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1968
    const v0, 0x104000a

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1970
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    .line 1971
    iget-object v0, p0, Lcom/android/settings/LockscreenMenuSettings;->mDeviceLockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1972
    return-void
.end method

.method showDialog()V
    .locals 3

    .prologue
    .line 1672
    const v0, 0x7f0901a4

    invoke-static {v0}, Lcom/android/settings/OwnerInfoSettings;->newInstance(I)Lcom/android/settings/OwnerInfoSettings;

    move-result-object v0

    .line 1673
    invoke-virtual {p0}, Lcom/android/settings/LockscreenMenuSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1674
    return-void
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .prologue
    .line 1925
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1926
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1927
    invoke-virtual {p0, v0}, Lcom/android/settings/LockscreenMenuSettings;->startActivity(Landroid/content/Intent;)V

    .line 1928
    return-void
.end method
