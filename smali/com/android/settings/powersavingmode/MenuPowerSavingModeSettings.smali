.class public Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MenuPowerSavingModeSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private iBackgroundColor:I

.field private iCpuPowerSavinge:I

.field private iDisplayPowerSaving:I

.field private iOffHapticFeedback:I

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAutoTurnOn:Landroid/preference/CheckBoxPreference;

.field private mBackgroundColor:Landroid/preference/CheckBoxPreference;

.field private mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

.field private mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

.field private mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mIsFromHelp:Z

.field private mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

.field private mPowerSavingObserver:Landroid/database/ContentObserver;

.field private mSupportBrowser:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 95
    iput-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 96
    iput-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z

    .line 99
    new-instance v0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$1;-><init>(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->updateUIPowerSaving()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;Lcom/android/settings/helpdialog/TwHelpDialog;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object p1
.end method

.method private showHelpStep1Dialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 435
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 437
    iput-object v3, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v1, :cond_1

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400a2

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 443
    .local v0, view:Landroid/view/View;
    new-instance v1, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 444
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 445
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v2, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 446
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 447
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 448
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    .line 451
    .end local v0           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private showHelpStep2Dialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 454
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v2, :cond_0

    .line 455
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 456
    iput-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 459
    :cond_0
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v2, :cond_1

    .line 460
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400a3

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 461
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b010b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 462
    .local v0, closeBtn:Landroid/widget/ImageView;
    new-instance v2, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$3;-><init>(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    new-instance v2, Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 472
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 473
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 474
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 475
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 476
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->show()V

    .line 478
    .end local v0           #closeBtn:Landroid/widget/ImageView;
    .end local v1           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private updateUIPowerSaving()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, powersavingState:I
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 317
    :cond_0
    const-string v1, "MenuPowerSavingModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "powersavingState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    if-nez v0, :cond_2

    .line 319
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 320
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 321
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 322
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 324
    iget-boolean v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_1

    .line 325
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->showHelpStep1Dialog()V

    .line 338
    :cond_1
    :goto_0
    return-void

    .line 328
    :cond_2
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 329
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 330
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 331
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 332
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 334
    iget-boolean v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_1

    .line 335
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->showHelpStep2Dialog()V

    goto :goto_0
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "psm_switch"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 385
    .local v4, powersavingState:I
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "psm_cpu_clock"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 386
    .local v1, cpu:I
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "psm_display"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 387
    .local v2, display:I
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "psm_background_colour"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 388
    .local v0, back:I
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "psm_haptic_feedback"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 391
    .local v3, haptic:I
    const-string v6, "power_saving_cpu"

    invoke-virtual {p0, v6}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-nez v6, :cond_0

    .line 392
    const/4 v1, 0x0

    .line 393
    :cond_0
    const-string v6, "power_saving_display"

    invoke-virtual {p0, v6}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-nez v6, :cond_1

    .line 394
    const/4 v2, 0x0

    .line 395
    :cond_1
    const-string v6, "power_saving_background_color"

    invoke-virtual {p0, v6}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-nez v6, :cond_2

    .line 396
    const/4 v0, 0x0

    .line 397
    :cond_2
    const-string v6, "power_saving_haptic"

    invoke-virtual {p0, v6}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-nez v6, :cond_3

    .line 398
    const/4 v3, 0x0

    .line 400
    :cond_3
    const-string v6, "MenuPowerSavingModeSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isAllOptionDisabled(), powersavingState : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cpu : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", display : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", back : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", haptic : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    if-nez v0, :cond_4

    const/4 v5, 0x1

    .line 405
    .local v5, retVal:Z
    :cond_4
    return v5
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 191
    const-string v0, "MenuPowerSavingModeSettings"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$2;-><init>(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 208
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 209
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 302
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 303
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 307
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->updateUIPowerSaving()V

    .line 308
    const-string v0, "MenuPowerSavingModeSettings"

    const-string v1, "onConfigurationChanged() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/16 v10, 0x10

    const/4 v11, -0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 110
    const-string v5, "MenuPowerSavingModeSettings"

    const-string v8, "onCreate() "

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 115
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 116
    const-string v5, "fromHelp"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z

    .line 118
    const-string v5, "fromHelp"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 121
    :cond_0
    const-string v5, "MenuPowerSavingModeSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isFromHelp : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mIsFromHelp:Z

    if-nez v5, :cond_1

    .line 125
    invoke-virtual {p0, v6}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->setHasOptionsMenu(Z)V

    .line 131
    :cond_1
    const v5, 0x7f070057

    invoke-virtual {p0, v5}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->addPreferencesFromResource(I)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 133
    .local v0, activity:Landroid/app/Activity;
    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 135
    instance-of v5, v0, Landroid/preference/PreferenceActivity;

    if-eqz v5, :cond_2

    move-object v3, v0

    .line 136
    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 138
    .local v3, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0f001b

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 140
    .local v2, padding:I
    iget-object v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v7, v7, v2, v7}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 141
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v10, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 143
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v9, Landroid/app/ActionBar$LayoutParams;

    const/16 v10, 0x15

    invoke-direct {v9, v11, v11, v10}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v8, v9}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 147
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarLayout:Landroid/view/View;

    .line 151
    .end local v2           #padding:I
    .end local v3           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_2
    new-instance v5, Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    iget-object v8, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v5, v0, v8, v7}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Z)V

    iput-object v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    .line 153
    const-string v5, "power_saving_cpu"

    invoke-virtual {p0, v5}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    .line 154
    iget-object v8, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "psm_cpu_clock"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 155
    const-string v5, "power_saving_display"

    invoke-virtual {p0, v5}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    .line 156
    iget-object v8, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "psm_display"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 157
    const-string v5, "power_saving_background_color"

    invoke-virtual {p0, v5}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    .line 158
    iget-object v8, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "psm_background_colour"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 160
    iget-object v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    const v8, 0x7f090c2d

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 162
    :cond_3
    const-string v5, "power_saving_auto_turn_on"

    invoke-virtual {p0, v5}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mAutoTurnOn:Landroid/preference/CheckBoxPreference;

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f09001d

    new-array v9, v6, [Ljava/lang/Object;

    const/16 v10, 0x14

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {v5, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, text:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mAutoTurnOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v8, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mAutoTurnOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "psm_auto_turn_on"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_8

    move v5, v6

    :goto_3
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 166
    const-string v5, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string v8, "power_saving_more_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mAutoTurnOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 172
    :cond_4
    iget-boolean v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mSupportBrowser:Z

    if-eqz v5, :cond_9

    .line 180
    :goto_4
    const-string v5, "power_saving_haptic"

    invoke-virtual {p0, v5}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 181
    iget-object v5, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "psm_haptic_feedback"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_a

    :goto_5
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 182
    const-string v5, "vibrator"

    invoke-virtual {p0, v5}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 187
    :goto_6
    return-void

    .end local v4           #text:Ljava/lang/String;
    :cond_5
    move v5, v7

    .line 154
    goto/16 :goto_0

    :cond_6
    move v5, v7

    .line 156
    goto/16 :goto_1

    :cond_7
    move v5, v7

    .line 158
    goto/16 :goto_2

    .restart local v4       #text:Ljava/lang/String;
    :cond_8
    move v5, v7

    .line 165
    goto :goto_3

    .line 176
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "psm_background_colour"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    :cond_a
    move v6, v7

    .line 181
    goto :goto_5

    .line 183
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "psm_haptic_feedback"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 416
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 418
    const/4 v0, 0x1

    const v1, 0x7f091167

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020186

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 420
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 287
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 288
    const-string v0, "MenuPowerSavingModeSettings"

    const-string v1, "onDestroy() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 292
    iput-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 296
    iput-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 298
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 424
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 431
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 426
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "battery_conservation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    invoke-virtual {p0, v0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->startActivity(Landroid/content/Intent;)V

    .line 429
    const/4 v1, 0x1

    goto :goto_0

    .line 424
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 241
    const-string v1, "MenuPowerSavingModeSettings"

    const-string v2, "onPause() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 244
    iget v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iCpuPowerSavinge:I

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_cpu_clock"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iDisplayPowerSaving:I

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_display"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iBackgroundColor:I

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_background_colour"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iOffHapticFeedback:I

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "psm_haptic_feedback"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 248
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "changed"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 253
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "psm_switch"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 255
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09118d

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 262
    :goto_0
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v1}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->pause()V

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 264
    return-void

    .line 260
    :cond_2
    iget-object v1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 411
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 342
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 343
    iget-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v4, :cond_0

    .line 344
    sget v4, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mSettingValue:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 345
    sget v4, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mSettingValue:I

    if-ne v4, v2, :cond_2

    move v1, v2

    .local v1, value:Z
    :goto_0
    move-object v0, p2

    .line 346
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 347
    .local v0, checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "psm_switch"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 348
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 354
    .end local v0           #checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    .end local v1           #value:Z
    :cond_0
    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "psm_cpu_clock"

    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    :goto_1
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 373
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->isAllOptionDisabled()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 374
    iget-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 379
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    :goto_4
    return v2

    :cond_2
    move v1, v3

    .line 345
    goto :goto_0

    :cond_3
    move v4, v3

    .line 355
    goto :goto_1

    .line 357
    :cond_4
    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "psm_display"

    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v2

    :goto_5
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_5
    move v4, v3

    goto :goto_5

    .line 360
    :cond_6
    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 361
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "psm_background_colour"

    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mBackgroundColor:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v2

    :goto_6
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_7
    move v4, v3

    goto :goto_6

    .line 363
    :cond_8
    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "psm_haptic_feedback"

    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v2

    :goto_7
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_9
    move v4, v3

    goto :goto_7

    .line 366
    :cond_a
    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mAutoTurnOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "psm_auto_turn_on"

    iget-object v6, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mAutoTurnOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_b

    :goto_8
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 370
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_4

    :cond_b
    move v2, v3

    .line 367
    goto :goto_8

    .line 376
    :cond_c
    iget-object v3, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_3
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 212
    const-string v0, "MenuPowerSavingModeSettings"

    const-string v3, "onResume() "

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 215
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "psm_cpu_clock"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iCpuPowerSavinge:I

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "psm_display"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iDisplayPowerSaving:I

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "psm_background_colour"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iBackgroundColor:I

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "psm_haptic_feedback"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->iOffHapticFeedback:I

    .line 225
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->updateUIPowerSaving()V

    .line 226
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->resume()V

    .line 227
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "psm_switch"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 232
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v3, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mCpuPowerSavinge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "psm_cpu_clock"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 234
    iget-object v3, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mDisplayPowerSaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "psm_display"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mOffHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "psm_haptic_feedback"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 237
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 233
    goto :goto_0

    :cond_3
    move v0, v2

    .line 234
    goto :goto_1

    :cond_4
    move v1, v2

    .line 235
    goto :goto_2
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 268
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 269
    const-string v0, "MenuPowerSavingModeSettings"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 277
    iput-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 281
    iput-object v2, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 283
    :cond_2
    return-void
.end method
