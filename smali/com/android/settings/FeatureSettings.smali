.class public Lcom/android/settings/FeatureSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FeatureSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static mPackageName:[Ljava/lang/String;


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mAdapt:Landroid/preference/SwitchPreferenceScreen;

.field private mAirMotion:Landroid/preference/SwitchPreferenceScreen;

.field private mAirView:Landroid/preference/SwitchPreferenceScreen;

.field private mEasyMode:Landroid/preference/SwitchPreferenceScreen;

.field private mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mMulti:Landroid/preference/SwitchPreferenceScreen;

.field private mOPMode:Landroid/preference/SwitchPreferenceScreen;

.field private mPm:Landroid/content/pm/PackageManager;

.field mResolver:Landroid/content/ContentResolver;

.field private mSBeam:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartPause:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartStay:Landroid/preference/SwitchPreferenceScreen;

.field private mSupportFolderType:Z

.field protected mSwitchUncheckHandler:Landroid/os/Handler;

.field private mTalkbackDisableDialog:Landroid/app/AlertDialog;

.field private mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.sec.android.gallery3d"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.android.app.sbrowser"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.samsung.everglades.video"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "tv.peel.samsung.app"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.sec.readershub"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.google.android.apps.books"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/FeatureSettings;->mPackageName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 92
    iput-object v0, p0, Lcom/android/settings/FeatureSettings;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    .line 94
    iput-object v0, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 95
    iput-object v0, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 108
    new-instance v0, Lcom/android/settings/FeatureSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/FeatureSettings$1;-><init>(Lcom/android/settings/FeatureSettings;)V

    iput-object v0, p0, Lcom/android/settings/FeatureSettings;->mSwitchUncheckHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/FeatureSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/FeatureSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/FeatureSettings;->turnOnEasyMode(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/FeatureSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/FeatureSettings;->turnOnOPMode(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private initUI()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    .line 164
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 165
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "air_view_master_onoff"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_4

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 169
    :goto_1
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "air_motion_engine"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_7

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 170
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "voice_input_control"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_8

    move v6, v7

    :goto_3
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 171
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "intelligent_sleep_mode"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_9

    move v6, v7

    :goto_4
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 172
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "smart_pause"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_a

    move v6, v7

    :goto_5
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 173
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "smart_scroll"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_b

    move v6, v7

    :goto_6
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 174
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "easy_mode_switch"

    invoke-static {v6, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_c

    move v6, v7

    :goto_7
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 175
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "key_spam_smart"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_d

    move v6, v7

    :goto_8
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 176
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "screen_mode_automatic_setting"

    invoke-static {v6, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_e

    move v6, v7

    :goto_9
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 186
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "multi_window_enabled"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_f

    :goto_a
    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 188
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 190
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 191
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 192
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 193
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 194
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 195
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 196
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 197
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 198
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 199
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 200
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 201
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 202
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 203
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 204
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 205
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 206
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 207
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 208
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 209
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 228
    .local v5, ps:Landroid/preference/PreferenceScreen;
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 230
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    .line 231
    .local v1, cscFeature:Lcom/sec/android/app/CscFeature;
    const-string v6, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v1, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    .line 232
    .local v3, enableBlackListForCHN:Z
    if-nez v3, :cond_0

    .line 233
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 253
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.vlingo.midas"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_b
    new-instance v4, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v4}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    .line 259
    .local v4, mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v6, :cond_1

    if-eqz v4, :cond_1

    iget-boolean v6, v4, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isEnableBargeIn:Z

    if-nez v6, :cond_1

    .line 260
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.sec.feature.multiwindow"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 264
    .local v0, UseMultiWindow:Z
    if-eqz v0, :cond_2

    const-string v6, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 265
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 268
    :cond_3
    return-void

    .end local v0           #UseMultiWindow:Z
    .end local v1           #cscFeature:Lcom/sec/android/app/CscFeature;
    .end local v3           #enableBlackListForCHN:Z
    .end local v4           #mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;
    .end local v5           #ps:Landroid/preference/PreferenceScreen;
    :cond_4
    move v6, v8

    .line 165
    goto/16 :goto_0

    .line 167
    :cond_5
    iget-object v9, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v10, "finger_air_view"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_6

    move v6, v7

    :goto_c
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto/16 :goto_1

    :cond_6
    move v6, v8

    goto :goto_c

    :cond_7
    move v6, v8

    .line 169
    goto/16 :goto_2

    :cond_8
    move v6, v8

    .line 170
    goto/16 :goto_3

    :cond_9
    move v6, v8

    .line 171
    goto/16 :goto_4

    :cond_a
    move v6, v8

    .line 172
    goto/16 :goto_5

    :cond_b
    move v6, v8

    .line 173
    goto/16 :goto_6

    :cond_c
    move v6, v8

    .line 174
    goto/16 :goto_7

    :cond_d
    move v6, v8

    .line 175
    goto/16 :goto_8

    :cond_e
    move v6, v8

    .line 176
    goto/16 :goto_9

    :cond_f
    move v7, v8

    .line 186
    goto/16 :goto_a

    .line 254
    .restart local v1       #cscFeature:Lcom/sec/android/app/CscFeature;
    .restart local v3       #enableBlackListForCHN:Z
    .restart local v5       #ps:Landroid/preference/PreferenceScreen;
    :catch_0
    move-exception v2

    .line 255
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_b
.end method

.method private showTalkBackDisableDialog(IILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1156
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1158
    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 1161
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1162
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1163
    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 1167
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/FeatureSettings$10;

    invoke-direct {v2, p0, p3}, Lcom/android/settings/FeatureSettings$10;-><init>(Lcom/android/settings/FeatureSettings;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/FeatureSettings$9;

    invoke-direct {v2, p0, p3}, Lcom/android/settings/FeatureSettings$9;-><init>(Lcom/android/settings/FeatureSettings;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 1243
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1245
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/FeatureSettings$11;

    invoke-direct {v1, p0, p3}, Lcom/android/settings/FeatureSettings$11;-><init>(Lcom/android/settings/FeatureSettings;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1266
    return-void
.end method

.method private turnOnEasyMode(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1075
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1076
    iget-object v3, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "easy_mode_switch"

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1078
    if-ne p1, v2, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "smart_scroll"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1080
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1081
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1082
    const-string v2, "isEnable"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1083
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1085
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "smart_pause"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1086
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1087
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1088
    const-string v2, "isEnable"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1089
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1091
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1092
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "air_view_master_onoff"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1096
    :goto_1
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1098
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1099
    const-string v2, "isEnable"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1100
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1102
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "multi_window_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1113
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 1076
    goto :goto_0

    .line 1094
    :cond_2
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "finger_air_view"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private turnOnOPMode(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1116
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1117
    iget-object v3, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "op_mode_switch"

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1118
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "easy_mode_switch"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1120
    if-ne p1, v1, :cond_3

    .line 1121
    if-nez v0, :cond_0

    .line 1122
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0911c8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1124
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "easy_mode_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1125
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1126
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "smart_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1127
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1129
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1130
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1132
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "smart_pause"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1133
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1135
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1136
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1138
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1139
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "air_view_master_onoff"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1143
    :goto_1
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 1145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1146
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1147
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1149
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "multi_window_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1153
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 1117
    goto/16 :goto_0

    .line 1141
    :cond_2
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 1151
    :cond_3
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "easy_mode_switch"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method


# virtual methods
.method public makeAdaptDisplayLayout()Landroid/view/View;
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 807
    .line 808
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04008f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 809
    const v0, 0x7f0b01ad

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 811
    new-instance v2, Lcom/android/settings/HelpItem;

    iget-object v3, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v2, v3}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 812
    invoke-virtual {v2, v7}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 813
    const v3, 0x7f090b80

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeContentsString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/FeatureSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 814
    const v3, 0x7f020384

    invoke-virtual {v2, v3}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 815
    invoke-virtual {v2, v7}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 817
    invoke-virtual {v2}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 819
    return-object v1
.end method

.method public makeAirMotionLayout()Landroid/view/View;
    .locals 22

    .prologue
    .line 435
    const/16 v16, 0x0

    .line 436
    .local v16, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    const v18, 0x7f04008f

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 437
    const v17, 0x7f0b01ad

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 439
    .local v4, helpContent:Landroid/widget/LinearLayout;
    new-instance v2, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 440
    .local v2, first:Lcom/android/settings/HelpItem;
    const v17, 0x7f090dbc

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 442
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 443
    .local v12, res:Landroid/content/res/Resources;
    const v17, 0x7f090dd4

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 444
    .local v9, part1:Ljava/lang/String;
    const-string v17, "."

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 445
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 449
    :goto_0
    const v17, 0x7f0e0009

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 450
    .local v11, proper_distance:I
    const v17, 0x7f090dd6

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 451
    .local v10, part3:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    .line 452
    .local v13, salesCode:Ljava/lang/String;
    const-string v17, "ATT"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "SPR"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "VZW"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "TMB"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "USC"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "CRI"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "VMU"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "BST"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "XAS"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "TFN"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "XAR"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "CSP"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 455
    :cond_0
    const v17, 0x7f0e000a

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 456
    const v17, 0x7f090dd7

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 458
    :cond_1
    const-string v17, "."

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 459
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 463
    :goto_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090dd5

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 464
    .local v7, original_str:Ljava/lang/String;
    const-string v17, "ja"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 465
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f090dd4

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090dd6

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x7

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090dd5

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 469
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/FeatureSettings;->mSupportFolderType:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 470
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090dd5

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f0915cc

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 472
    :cond_3
    const v17, 0x7f02001d

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Lcom/android/settings/Utils;->makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;

    move-result-object v6

    .line 473
    .local v6, message_str:Landroid/text/SpannableString;
    if-eqz v6, :cond_b

    .line 474
    invoke-virtual {v2, v6}, Lcom/android/settings/HelpItem;->setContentText(Landroid/text/SpannableString;)V

    .line 478
    :goto_2
    const v17, 0x7f020456

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 480
    invoke-virtual {v2}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 482
    new-instance v15, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 483
    .local v15, third:Lcom/android/settings/HelpItem;
    const v17, 0x7f090dc3

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 484
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f090ddd

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090dcf

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090e15

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090e1e

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 488
    .local v5, mGuideContent:Ljava/lang/String;
    invoke-virtual {v15, v5}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 489
    const v17, 0x7f02001e

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 490
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 491
    invoke-virtual {v15}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 493
    new-instance v14, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 494
    .local v14, second:Lcom/android/settings/HelpItem;
    const v17, 0x7f090dc5

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 496
    const/4 v8, 0x0

    .line 497
    .local v8, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const-string v18, "com.samsung.android.snote"

    const/16 v19, 0x5

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 499
    if-eqz v8, :cond_c

    .line 500
    const-string v17, "FeatureSettings"

    const-string v18, "S note is Installed."

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f090ddf

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090dcf

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090e25

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090e28

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090e2b

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090e2d

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090e32

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 521
    :goto_3
    invoke-virtual {v14, v5}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 522
    const v17, 0x7f02001f

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 523
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 524
    invoke-virtual {v14}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 527
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v17

    if-nez v17, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_5

    :cond_4
    const-string v17, "jflterefreshspr"

    const-string v18, "ro.product.name"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 528
    :cond_5
    new-instance v3, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 529
    .local v3, fourth:Lcom/android/settings/HelpItem;
    const v17, 0x7f090de2

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 530
    const-string v17, "ATT"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string v17, "SPR"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string v17, "VZW"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string v17, "TMB"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string v17, "USC"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 531
    :cond_6
    const v17, 0x7f090de4

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 534
    :cond_7
    const v17, 0x7f090dc7

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 535
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 536
    const v17, 0x7f02001a

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 537
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 538
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 541
    .end local v3           #fourth:Lcom/android/settings/HelpItem;
    :cond_8
    return-object v16

    .line 447
    .end local v5           #mGuideContent:Ljava/lang/String;
    .end local v6           #message_str:Landroid/text/SpannableString;
    .end local v7           #original_str:Ljava/lang/String;
    .end local v8           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v10           #part3:Ljava/lang/String;
    .end local v11           #proper_distance:I
    .end local v13           #salesCode:Ljava/lang/String;
    .end local v14           #second:Lcom/android/settings/HelpItem;
    .end local v15           #third:Lcom/android/settings/HelpItem;
    :cond_9
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ". "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0

    .line 461
    .restart local v10       #part3:Ljava/lang/String;
    .restart local v11       #proper_distance:I
    .restart local v13       #salesCode:Ljava/lang/String;
    :cond_a
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 476
    .restart local v6       #message_str:Landroid/text/SpannableString;
    .restart local v7       #original_str:Ljava/lang/String;
    :cond_b
    const v17, 0x7f090dd3

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/settings/HelpItem;->setContentText(I)V

    goto/16 :goto_2

    .line 509
    .restart local v5       #mGuideContent:Ljava/lang/String;
    .restart local v8       #packageInfo:Landroid/content/pm/PackageInfo;
    .restart local v14       #second:Lcom/android/settings/HelpItem;
    .restart local v15       #third:Lcom/android/settings/HelpItem;
    :cond_c
    :try_start_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f090ddf

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090dcf

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090e25

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090e28

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090e2b

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090e2d

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\n- "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f090e30

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto/16 :goto_3

    .line 517
    :catch_0
    move-exception v1

    .line 518
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 519
    const-string v17, "FeatureSettings"

    const-string v18, "S note is NOT Installed"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public makeAirViewLayout()Landroid/view/View;
    .locals 10

    .prologue
    .line 369
    const/4 v6, 0x0

    .line 370
    .local v6, view:Landroid/view/View;
    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v8, 0x7f04008f

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 371
    const v7, 0x7f0b01ad

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 383
    .local v1, helpContent:Landroid/widget/LinearLayout;
    new-instance v2, Lcom/android/settings/HelpItem;

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v2, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 384
    .local v2, infoPreview:Lcom/android/settings/HelpItem;
    const v7, 0x7f090e85

    invoke-virtual {v2, v7}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 385
    const v7, 0x7f090e86

    invoke-virtual {v2, v7}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 386
    const v7, 0x7f0203e1

    invoke-virtual {v2, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 388
    invoke-virtual {v2}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 391
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 392
    .local v0, barPreview:Lcom/android/settings/HelpItem;
    const v7, 0x7f090e8e

    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 393
    const v7, 0x7f090e8f

    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 394
    const v7, 0x7f0203de

    invoke-virtual {v0, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 396
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 399
    new-instance v5, Lcom/android/settings/HelpItem;

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v5, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 400
    .local v5, speedPreview:Lcom/android/settings/HelpItem;
    const v7, 0x7f090e90

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 401
    const v7, 0x7f090e91

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 402
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, salesCode:Ljava/lang/String;
    const-string v7, "ATT"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "SPR"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "VZW"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "TMB"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "USC"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 405
    :cond_0
    const v7, 0x7f0203e0

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 410
    :goto_0
    invoke-virtual {v5}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 413
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v7, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v7}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 414
    .local v3, magniPreview:Lcom/android/settings/HelpItem;
    const v7, 0x7f090e81

    invoke-virtual {v3, v7}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 415
    const v7, 0x7f090e82

    invoke-virtual {v3, v7}, Lcom/android/settings/HelpItem;->setContentText(I)V

    .line 416
    const v7, 0x7f0203dd

    invoke-virtual {v3, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 418
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 430
    return-object v6

    .line 407
    .end local v3           #magniPreview:Lcom/android/settings/HelpItem;
    :cond_1
    const v7, 0x7f0203df

    invoke-virtual {v5, v7}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    goto :goto_0
.end method

.method public makeContentsString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 824
    sget-object v1, Lcom/android/settings/FeatureSettings;->mPackageName:[Ljava/lang/String;

    array-length v3, v1

    .line 825
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move v1, v0

    .line 829
    :goto_0
    if-ge v1, v3, :cond_1

    .line 831
    :try_start_0
    sget-object v5, Lcom/android/settings/FeatureSettings;->mPackageName:[Ljava/lang/String;

    aget-object v5, v5, v1

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 832
    if-lez v0, :cond_0

    .line 833
    const-string v6, "\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    add-int/lit8 v0, v0, 0x1

    .line 829
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 836
    :catch_0
    move-exception v5

    .line 837
    const-string v5, "FeatureSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package not found : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/settings/FeatureSettings;->mPackageName:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 840
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public makeEasyModeLayout()Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 760
    .line 761
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04008f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 762
    const v0, 0x7f0b01ad

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 764
    const v1, 0x7f09001f

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 766
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 769
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 770
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 771
    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 772
    const v1, 0x7f0203ec

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 774
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 776
    return-object v2
.end method

.method public makeMultiWindowLayout()Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 844
    .line 845
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04008f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 846
    const v0, 0x7f0b01ad

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 848
    const v1, 0x7f090587

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 850
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 851
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 852
    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 853
    const v1, 0x7f020302

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 854
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 856
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 858
    new-instance v1, Lcom/android/settings/HelpItem;

    iget-object v3, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v1, v3}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 859
    invoke-virtual {v1, v5}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 860
    invoke-virtual {v1, v5}, Lcom/android/settings/HelpItem;->setContentVisibility(I)V

    .line 861
    const v3, 0x7f020303

    invoke-virtual {v1, v3}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 862
    invoke-virtual {v1, v5}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 864
    invoke-virtual {v1}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 866
    return-object v2
.end method

.method public makeOPModeLayout()Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 781
    .line 782
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04008f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 783
    const v0, 0x7f0b01ad

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 785
    const v1, 0x7f0911d9

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 787
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 790
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 791
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 792
    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 793
    const v1, 0x7f0203ed

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 794
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 796
    return-object v2
.end method

.method public makeSBeamLayout()Landroid/view/View;
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 344
    const/4 v4, 0x0

    .line 345
    .local v4, view:Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f04008f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 346
    const v5, 0x7f0b01ad

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 348
    .local v1, helpContent:Landroid/widget/LinearLayout;
    const v5, 0x7f0902b6

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 350
    .local v3, s:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.android.app.snotebook"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 351
    .local v2, i:Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 352
    const v5, 0x7f0902b7

    invoke-virtual {p0, v5}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .end local v3           #s:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 355
    .restart local v3       #s:Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/android/settings/HelpItem;

    iget-object v5, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v5}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 356
    .local v0, first:Lcom/android/settings/HelpItem;
    invoke-virtual {v0, v9}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 357
    invoke-virtual {v0, v9}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 358
    invoke-virtual {v0, v8}, Lcom/android/settings/HelpItem;->setImageMarginTop(I)V

    .line 359
    invoke-virtual {v0, v3}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 360
    const v5, 0x7f050009

    invoke-virtual {v0, v5}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 361
    invoke-virtual {v0, v8}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 362
    invoke-virtual {v0}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 364
    return-object v4
.end method

.method public makeSmartBlockLayout()Landroid/view/View;
    .locals 3

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400a5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 802
    return-object v0
.end method

.method public makeSmartPauseLayout()Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 680
    .line 681
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04008f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 682
    const v0, 0x7f0b01ad

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 684
    const v1, 0x7f090fd9

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 686
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 687
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 688
    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 689
    const v1, 0x7f020418

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 690
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 691
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 693
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f090fda

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 694
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f090fdb

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 695
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f090fdc

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 696
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f090fdd

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 697
    iget-boolean v3, p0, Lcom/android/settings/FeatureSettings;->mSupportFolderType:Z

    if-eqz v3, :cond_0

    .line 698
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f0915cc

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 700
    :cond_0
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 701
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 702
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 703
    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 704
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 706
    return-object v2
.end method

.method public makeSmartScrollLayout()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 711
    .line 712
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04008f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 713
    const v0, 0x7f0b01ad

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 715
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f090fe1

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 716
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f090fe2

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 717
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f090fe3

    invoke-virtual {p0, v3}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 718
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f090fe4

    invoke-virtual {p0, v3}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 719
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f090fe5

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 720
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f090fe6

    invoke-virtual {p0, v3}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 722
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 723
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 724
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 725
    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 726
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 729
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v1}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 730
    const v1, 0x7f090ff0

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 731
    const v1, 0x7f090fe7

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 732
    const v1, 0x7f02041a

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 733
    invoke-virtual {v3, v6}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 734
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 736
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v1}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 737
    const v1, 0x7f090fef

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 738
    const v1, 0x7f090fe8

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 739
    const v1, 0x7f020419

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 740
    invoke-virtual {v3, v6}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 741
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 743
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f090fe9

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 744
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f090fea

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 745
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f090feb

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 746
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f090fec

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 747
    iget-boolean v3, p0, Lcom/android/settings/FeatureSettings;->mSupportFolderType:Z

    if-eqz v3, :cond_0

    .line 748
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v1, 0x7f0915cc

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 750
    :cond_0
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 751
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 752
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 753
    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 754
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 756
    return-object v2
.end method

.method public makeSmartStayLayout()Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 649
    .line 650
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04008f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 651
    const v0, 0x7f0b01ad

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 653
    const v1, 0x7f090fb6

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 655
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 656
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 657
    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 658
    const v1, 0x7f020411

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 659
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 660
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090fb7

    invoke-virtual {p0, v3}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 663
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f090fb8

    invoke-virtual {p0, v3}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 664
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f090fb9

    invoke-virtual {p0, v3}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 665
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f090fba

    invoke-virtual {p0, v3}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 666
    iget-boolean v3, p0, Lcom/android/settings/FeatureSettings;->mSupportFolderType:Z

    if-eqz v3, :cond_0

    .line 667
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f0915cc

    invoke-virtual {p0, v3}, Lcom/android/settings/FeatureSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 669
    :cond_0
    new-instance v3, Lcom/android/settings/HelpItem;

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v4}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 670
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 671
    invoke-virtual {v3, v5}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 672
    invoke-virtual {v3, v1}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v3}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 675
    return-object v2
.end method

.method public makeVoiceCmdLayout()Landroid/view/View;
    .locals 18

    .prologue
    .line 558
    const/4 v14, 0x0

    .line 559
    .local v14, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    const v16, 0x7f04008f

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 560
    const v15, 0x7f0b01ad

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 561
    .local v9, helpContent:Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .line 563
    .local v1, c:Landroid/content/Context;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string v16, "com.vlingo.midas"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 569
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a000a

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 570
    .local v2, cmds:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0910e0

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 571
    .local v13, title:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0910eb

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 572
    .local v11, templ:Ljava/lang/String;
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 574
    .local v3, contents:Ljava/lang/String;
    new-instance v7, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v7, v15}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 575
    .local v7, first:Lcom/android/settings/HelpItem;
    invoke-virtual {v7, v13}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v7, v3}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 577
    const/16 v15, 0x8

    invoke-virtual {v7, v15}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 578
    const-string v15, ""

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, ""

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 579
    invoke-virtual {v7}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 582
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string v16, "com.coolots.chaton"

    invoke-static/range {v15 .. v16}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v15

    if-nez v15, :cond_1

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a000a

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0910e1

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 585
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0910ec

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 586
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 588
    new-instance v5, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v5, v15}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 589
    .local v5, extra:Lcom/android/settings/HelpItem;
    invoke-virtual {v5, v13}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 590
    invoke-virtual {v5, v3}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 591
    const/16 v15, 0x8

    invoke-virtual {v5, v15}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 592
    const-string v15, ""

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    const-string v15, ""

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 593
    invoke-virtual {v5}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 598
    .end local v5           #extra:Lcom/android/settings/HelpItem;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a000b

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 599
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0910e3

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0910ed

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 601
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 603
    new-instance v10, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v10, v15}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 604
    .local v10, second:Lcom/android/settings/HelpItem;
    invoke-virtual {v10, v13}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 605
    invoke-virtual {v10, v3}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 606
    const/16 v15, 0x8

    invoke-virtual {v10, v15}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 607
    const-string v15, ""

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, ""

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 608
    invoke-virtual {v10}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 611
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a000c

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 612
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0910e5

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 613
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0910ee

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 614
    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x2

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x3

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 616
    new-instance v12, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v12, v15}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 617
    .local v12, third:Lcom/android/settings/HelpItem;
    invoke-virtual {v12, v13}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v12, v3}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 619
    const/16 v15, 0x8

    invoke-virtual {v12, v15}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 620
    const-string v15, ""

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string v15, ""

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 621
    invoke-virtual {v12}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 624
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a000d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0910e7

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 626
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0910f0

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 627
    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x2

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x3

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const/16 v17, 0x4

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    const/16 v16, 0x5

    const/16 v17, 0x5

    aget-object v17, v2, v17

    aput-object v17, v15, v16

    invoke-static {v11, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 629
    new-instance v8, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v8, v15}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 630
    .local v8, fourth:Lcom/android/settings/HelpItem;
    invoke-virtual {v8, v13}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v8, v3}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 632
    const/16 v15, 0x8

    invoke-virtual {v8, v15}, Lcom/android/settings/HelpItem;->setImageVisibility(I)V

    .line 633
    const-string v15, ""

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    const-string v15, ""

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 634
    invoke-virtual {v8}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 637
    :cond_4
    new-instance v6, Lcom/android/settings/HelpItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {v6, v15}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 638
    .local v6, fifth:Lcom/android/settings/HelpItem;
    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Lcom/android/settings/HelpItem;->setTitleVisibility(I)V

    .line 639
    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Lcom/android/settings/HelpItem;->setTitle2Visibility(I)V

    .line 640
    const/16 v15, 0x8

    invoke-virtual {v6, v15}, Lcom/android/settings/HelpItem;->setContentVisibility(I)V

    .line 641
    const v15, 0x7f020533

    invoke-virtual {v6, v15}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 642
    invoke-virtual {v6}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 644
    return-object v14

    .line 564
    .end local v2           #cmds:[Ljava/lang/String;
    .end local v3           #contents:Ljava/lang/String;
    .end local v6           #fifth:Lcom/android/settings/HelpItem;
    .end local v7           #first:Lcom/android/settings/HelpItem;
    .end local v8           #fourth:Lcom/android/settings/HelpItem;
    .end local v10           #second:Lcom/android/settings/HelpItem;
    .end local v11           #templ:Ljava/lang/String;
    .end local v12           #third:Lcom/android/settings/HelpItem;
    .end local v13           #title:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 566
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 289
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/FeatureSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/FeatureSettings$2;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 313
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    const-string v1, "FeatureSettings"

    const-string v3, "talkback is enabled, so samsung features are off"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "option_flag"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 137
    .local v0, mDisableExclusiveOptionsFlag:I
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    .line 140
    .end local v0           #mDisableExclusiveOptionsFlag:I
    :cond_0
    const v1, 0x7f070042

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->addPreferencesFromResource(I)V

    .line 142
    const-string v1, "sbeam"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    .line 143
    const-string v1, "air_view"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    .line 144
    const-string v1, "air_motion"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    .line 145
    const-string v1, "voice_cmd"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    .line 146
    const-string v1, "smart_stay"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    .line 147
    const-string v1, "smart_pause"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    .line 148
    const-string v1, "smart_scroll"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    .line 149
    const-string v1, "easy_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    .line 150
    const-string v1, "op_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    .line 151
    const-string v1, "smart_block"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    .line 152
    const-string v1, "adapt_display"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    .line 153
    const-string v1, "multi_window"

    invoke-virtual {p0, v1}, Lcom/android/settings/FeatureSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->inflater:Landroid/view/LayoutInflater;

    .line 157
    new-instance v1, Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-direct {v1, v3, v4}, Lcom/android/settings/nfc/SBeamEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreferenceScreen;)V

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/FeatureSettings;->mSupportFolderType:Z

    .line 159
    return-void

    :cond_1
    move v1, v2

    .line 158
    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 281
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 283
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnPause()V

    .line 285
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const v6, 0x104000a

    const/high16 v5, 0x104

    const v4, 0x7f091005

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 919
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 920
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 921
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "sbeam_mode"

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1071
    :cond_1
    :goto_0
    return v1

    .line 922
    :cond_2
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 923
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 924
    const v0, 0x7f090e7b

    const v2, 0x7f090cbd

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto :goto_0

    .line 926
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 927
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_view_master_onoff"

    if-eqz v3, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 932
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 933
    const-string v2, "isEnable"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 934
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 929
    :cond_5
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "finger_air_view"

    if-eqz v3, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 936
    :cond_7
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 937
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 938
    const v0, 0x7f090db7

    const v2, 0x7f090dbb

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto :goto_0

    .line 940
    :cond_8
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_engine"

    if-eqz v3, :cond_a

    move v2, v1

    :goto_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 941
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.gesture.AIR_MOTION_SETTINGS_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 942
    const-string v4, "isEnable"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 943
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 945
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_scroll"

    if-eqz v3, :cond_b

    move v2, v1

    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 946
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 947
    const-string v4, "isEnable"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 948
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 950
    iget-object v4, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn"

    if-eqz v3, :cond_c

    move v2, v1

    :goto_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 951
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 952
    const-string v4, "isEnable"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 953
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 955
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_item_move"

    if-eqz v3, :cond_9

    move v0, v1

    :cond_9
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 956
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.gesture.AIR_MOVE_SETTINGS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 957
    const-string v2, "isEnable"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 958
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_a
    move v2, v0

    .line 940
    goto :goto_2

    :cond_b
    move v2, v0

    .line 945
    goto :goto_3

    :cond_c
    move v2, v0

    .line 950
    goto :goto_4

    .line 967
    :cond_d
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 968
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "voice_input_control"

    if-eqz v3, :cond_e

    move v0, v1

    :cond_e
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 969
    :cond_f
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 970
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 971
    const v0, 0x7f090fb2

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v4, v2}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 973
    :cond_10
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "intelligent_sleep_mode"

    if-eqz v3, :cond_11

    move v0, v1

    :cond_11
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 975
    :cond_12
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 976
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 977
    const v0, 0x7f090fbf

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v4, v2}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 979
    :cond_13
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_pause"

    if-eqz v3, :cond_14

    move v0, v1

    :cond_14
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 981
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 982
    const-string v2, "isEnable"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 983
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 985
    :cond_15
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 986
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 987
    const v0, 0x7f090fc1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v4, v2}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 989
    :cond_16
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_scroll"

    if-eqz v3, :cond_17

    move v0, v1

    :cond_17
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 991
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 992
    const-string v2, "isEnable"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 993
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 995
    :cond_18
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 996
    if-eqz v3, :cond_19

    .line 998
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 999
    const v2, 0x7f0911ce

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1000
    const v2, 0x7f09001f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1001
    new-instance v2, Lcom/android/settings/FeatureSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/FeatureSettings$4;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v0, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1007
    new-instance v2, Lcom/android/settings/FeatureSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/FeatureSettings$5;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1013
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1015
    :cond_19
    invoke-direct {p0, v0}, Lcom/android/settings/FeatureSettings;->turnOnEasyMode(Z)V

    goto/16 :goto_0

    .line 1018
    :cond_1a
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1019
    if-eqz v3, :cond_1b

    .line 1021
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1022
    const v2, 0x7f0911d6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1023
    const v2, 0x7f0911d9

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1024
    new-instance v2, Lcom/android/settings/FeatureSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/FeatureSettings$6;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v0, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1030
    new-instance v2, Lcom/android/settings/FeatureSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/FeatureSettings$7;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1036
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1038
    :cond_1b
    invoke-direct {p0, v0}, Lcom/android/settings/FeatureSettings;->turnOnOPMode(Z)V

    goto/16 :goto_0

    .line 1041
    :cond_1c
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1042
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "key_spam_smart"

    if-eqz v3, :cond_1d

    move v0, v1

    :cond_1d
    invoke-static {v2, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1044
    :cond_1e
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1045
    if-eqz v3, :cond_1f

    .line 1047
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 1051
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_mode_automatic_setting"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1053
    :cond_1f
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_mode_setting"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUserMode(I)Z

    .line 1054
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_mode_automatic_setting"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1057
    :cond_20
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1058
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1059
    const v0, 0x7f090cba

    const v2, 0x7f090cbb

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 1061
    :cond_21
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "multi_window_enabled"

    if-eqz v3, :cond_22

    move v2, v1

    :goto_5
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1062
    iget-object v2, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 1063
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1064
    new-instance v2, Lcom/android/settings/FeatureSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/FeatureSettings$8;-><init>(Lcom/android/settings/FeatureSettings;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_22
    move v2, v0

    .line 1061
    goto :goto_5
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSBeam:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 873
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeSBeamLayout()Landroid/view/View;

    move-result-object v0

    .line 874
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    .line 913
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 875
    :cond_1
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 876
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeAirViewLayout()Landroid/view/View;

    move-result-object v0

    .line 877
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090cbe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 878
    :cond_2
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 879
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeAirMotionLayout()Landroid/view/View;

    move-result-object v0

    .line 880
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090db7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 881
    :cond_3
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mVoiceCmd:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 882
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeVoiceCmdLayout()Landroid/view/View;

    move-result-object v0

    .line 883
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0910d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 884
    :cond_4
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 885
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeSmartStayLayout()Landroid/view/View;

    move-result-object v0

    .line 886
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090fb2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 887
    :cond_5
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 888
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeSmartPauseLayout()Landroid/view/View;

    move-result-object v0

    .line 889
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090fbf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 890
    :cond_6
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 891
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeSmartScrollLayout()Landroid/view/View;

    move-result-object v0

    .line 892
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090fc1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 893
    :cond_7
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mEasyMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 894
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeEasyModeLayout()Landroid/view/View;

    move-result-object v0

    .line 895
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0911bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 897
    :cond_8
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mSmartBlock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 898
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeSmartBlockLayout()Landroid/view/View;

    move-result-object v0

    .line 899
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090fc3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 901
    :cond_9
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mAdapt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 902
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeAdaptDisplayLayout()Landroid/view/View;

    move-result-object v0

    .line 903
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090b7d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 905
    :cond_a
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mOPMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 906
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeOPModeLayout()Landroid/view/View;

    move-result-object v0

    .line 907
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0911d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 909
    :cond_b
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mMulti:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->makeMultiWindowLayout()Landroid/view/View;

    move-result-object v0

    .line 911
    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090585

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/FeatureSettings;->showGuideDialog(Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 274
    iget-object v0, p0, Lcom/android/settings/FeatureSettings;->mEnabler:Lcom/android/settings/nfc/SBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/SBeamEnabler;->procOnResume()V

    .line 276
    invoke-direct {p0}, Lcom/android/settings/FeatureSettings;->initUI()V

    .line 277
    return-void
.end method

.method public showGuideDialog(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .parameter "layout"
    .parameter "title"

    .prologue
    const/4 v2, 0x0

    .line 317
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/FeatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 319
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 321
    iput-object v2, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 326
    iput-object v2, p0, Lcom/android/settings/FeatureSettings;->mTalkbackDisableDialog:Landroid/app/AlertDialog;

    .line 329
    :cond_1
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 330
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 332
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/FeatureSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/FeatureSettings$3;-><init>(Lcom/android/settings/FeatureSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 338
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 339
    iget-object v1, p0, Lcom/android/settings/FeatureSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 340
    return-void
.end method
