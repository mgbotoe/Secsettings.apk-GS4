.class public Lcom/android/settings/FingerAirViewSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FingerAirViewSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private isGoIntoMoreDepth:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mFingerAirViewObserver:Landroid/database/ContentObserver;

.field private mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

.field private mMagnifier:Landroid/preference/SwitchPreferenceScreen;

.field private mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/FingerAirViewSettings;->isGoIntoMoreDepth:Z

    .line 55
    new-instance v0, Lcom/android/settings/FingerAirViewSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/FingerAirViewSettings$1;-><init>(Lcom/android/settings/FingerAirViewSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mFingerAirViewObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FingerAirViewSettings;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/FingerAirViewSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/FingerAirViewSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/settings/FingerAirViewSettings;->broadcastFingerAirViewChanged(Z)V

    return-void
.end method

.method private broadcastFingerAirViewChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 336
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    .local v0, finger_air_view_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 339
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 4

    .prologue
    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090ea9

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090eaa

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09081c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, message:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090cbc

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/FingerAirViewSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/FingerAirViewSettings$4;-><init>(Lcom/android/settings/FingerAirViewSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lcom/android/settings/FingerAirViewSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/FingerAirViewSettings$3;-><init>(Lcom/android/settings/FingerAirViewSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/FingerAirViewSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/FingerAirViewSettings$2;-><init>(Lcom/android/settings/FingerAirViewSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 316
    return-void
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    .line 322
    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view_magnifier"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 323
    .local v2, magnifier:I
    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view_show_up_indicator"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 324
    .local v5, showUpIndicator:I
    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view_information_preview"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 325
    .local v1, informationPreview:I
    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view_full_text"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 326
    .local v0, fullText:I
    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view_pointer"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 327
    .local v3, pointer:I
    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view_pregress_bar_preview"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 328
    .local v4, progressBarPreview:I
    iget-object v9, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view_speed_dial_tip"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 329
    .local v6, speedDialTip:I
    or-int v9, v2, v5

    or-int/2addr v9, v1

    or-int/2addr v9, v0

    or-int/2addr v9, v3

    or-int/2addr v9, v4

    or-int/2addr v9, v6

    if-ge v9, v7, :cond_0

    :goto_0
    return v7

    :cond_0
    move v7, v8

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 208
    if-eqz p2, :cond_2

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/FingerAirViewSettings;->makeTalkBackDisablePopup()V

    .line 233
    :goto_0
    return-void

    .line 212
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view_highlight"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 214
    invoke-direct {p0, p2}, Lcom/android/settings/FingerAirViewSettings;->broadcastFingerAirViewChanged(Z)V

    .line 215
    const-string v0, "FingerAirViewSettings"

    const-string v1, "switch is on"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 217
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 218
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 219
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 223
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view_highlight"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 225
    invoke-direct {p0, p2}, Lcom/android/settings/FingerAirViewSettings;->broadcastFingerAirViewChanged(Z)V

    .line 226
    const-string v0, "FingerAirViewSettings"

    const-string v1, "switch is off"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 231
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x10

    const/4 v10, -0x2

    const/4 v8, 0x0

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v6, 0x7f070043

    invoke-virtual {p0, v6}, Lcom/android/settings/FingerAirViewSettings;->addPreferencesFromResource(I)V

    .line 79
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/settings/FingerAirViewSettings;->setHasOptionsMenu(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    .line 83
    const-string v6, "setting_guide"

    invoke-virtual {p0, v6}, Lcom/android/settings/FingerAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/UnclickablePreference;

    .line 84
    .local v1, mSettingsGuide:Lcom/android/settings/UnclickablePreference;
    invoke-virtual {v1}, Lcom/android/settings/UnclickablePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, original_title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090e7e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, potrait_only_text:Ljava/lang/String;
    const-string v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, buildcarrier:Ljava/lang/String;
    const-string v6, "melius"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/settings/UnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 91
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v6

    if-nez v6, :cond_3

    .line 92
    new-instance v6, Landroid/widget/Switch;

    iget-object v7, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 94
    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    instance-of v6, v6, Landroid/preference/PreferenceActivity;

    if-eqz v6, :cond_2

    .line 95
    iget-object v5, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    check-cast v5, Landroid/preference/PreferenceActivity;

    .line 96
    .local v5, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v6

    if-nez v6, :cond_2

    .line 97
    :cond_1
    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f001b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 98
    .local v3, padding:I
    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v8, v8, v3, v8}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 99
    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 100
    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/16 v9, 0x15

    invoke-direct {v8, v10, v10, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v7, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 103
    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarLayout:Landroid/view/View;

    .line 107
    .end local v3           #padding:I
    .end local v5           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 110
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    .line 111
    const-string v6, "magnifier"

    invoke-virtual {p0, v6}, Lcom/android/settings/FingerAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    .line 112
    const-string v6, "information_preview"

    invoke-virtual {p0, v6}, Lcom/android/settings/FingerAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    .line 113
    const-string v6, "sound_and_haptic_feedback"

    invoke-virtual {p0, v6}, Lcom/android/settings/FingerAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 114
    const-string v6, "progress_bar_preview"

    invoke-virtual {p0, v6}, Lcom/android/settings/FingerAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    .line 115
    const-string v6, "speed_dial_tip"

    invoke-virtual {p0, v6}, Lcom/android/settings/FingerAirViewSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    .line 116
    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 119
    iget-object v6, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 121
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 183
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x1

    const v1, 0x7f090e92

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020196

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 188
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 193
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 201
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 195
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "air_view"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 198
    const/4 v1, 0x1

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 158
    iget-boolean v0, p0, Lcom/android/settings/FingerAirViewSettings;->isGoIntoMoreDepth:Z

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090e7c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view_highlight"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 164
    invoke-direct {p0, v2}, Lcom/android/settings/FingerAirViewSettings;->broadcastFingerAirViewChanged(Z)V

    .line 168
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 237
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 238
    .local v0, value:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_3

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_magnifier"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 249
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->isAllOptionDisabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    if-eqz v3, :cond_1

    .line 251
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 253
    :cond_1
    return v1

    .end local v0           #value:I
    :cond_2
    move v0, v2

    .line 237
    goto :goto_0

    .line 240
    .restart local v0       #value:I
    :cond_3
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_4

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_information_preview"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_full_text"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 243
    :cond_4
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_5

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_pregress_bar_preview"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 245
    :cond_5
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v3, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_speed_dial_tip"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 259
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view_sound_and_haptic_feedback"

    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 266
    :goto_1
    return v1

    .line 260
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 263
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/FingerAirViewSettings;->isGoIntoMoreDepth:Z

    .line 266
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 128
    const-string v3, "FingerAirViewSettings"

    const-string v4, "onResume()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iput-boolean v2, p0, Lcom/android/settings/FingerAirViewSettings;->isGoIntoMoreDepth:Z

    .line 130
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 131
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    .line 136
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "finger_air_view"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 138
    .local v0, fingerAirViewState:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    if-eqz v3, :cond_1

    .line 139
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 141
    :cond_1
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 142
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 143
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 144
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 145
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 146
    iget-object v4, p0, Lcom/android/settings/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view_magnifier"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 147
    iget-object v4, p0, Lcom/android/settings/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view_information_preview"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 148
    iget-object v4, p0, Lcom/android/settings/FingerAirViewSettings;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view_sound_and_haptic_feedback"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 149
    iget-object v4, p0, Lcom/android/settings/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view_pregress_bar_preview"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    move v3, v1

    :goto_4
    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 150
    iget-object v3, p0, Lcom/android/settings/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view_speed_dial_tip"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 151
    iget-object v2, p0, Lcom/android/settings/FingerAirViewSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "finger_air_view"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/FingerAirViewSettings;->mFingerAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 152
    return-void

    .end local v0           #fingerAirViewState:Z
    :cond_3
    move v0, v2

    .line 136
    goto/16 :goto_0

    .restart local v0       #fingerAirViewState:Z
    :cond_4
    move v3, v2

    .line 146
    goto :goto_1

    :cond_5
    move v3, v2

    .line 147
    goto :goto_2

    :cond_6
    move v3, v2

    .line 148
    goto :goto_3

    :cond_7
    move v3, v2

    .line 149
    goto :goto_4
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 174
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/settings/FingerAirViewSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/FingerAirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/FingerAirViewSettings;->mFingerAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 179
    return-void
.end method
