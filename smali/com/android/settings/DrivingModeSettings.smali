.class public Lcom/android/settings/DrivingModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DrivingModeSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DrivingModeSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static sSettingsObserver:Lcom/android/settings/DrivingModeSettings$SettingsObserver;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAirCallAccept:Landroid/preference/CheckBoxPreference;

.field private mAlarmNotification:Landroid/preference/CheckBoxPreference;

.field private mChatonNotification:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field private mDrivingModeOnDialog:Landroid/app/AlertDialog;

.field private mEmailNotification:Landroid/preference/CheckBoxPreference;

.field private mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

.field private mMessageNotification:Landroid/preference/CheckBoxPreference;

.field private mScheduleNotification:Landroid/preference/CheckBoxPreference;

.field private mTouchEvent:Z

.field private mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

.field private mVoiceMailNotification:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DrivingModeSettings;->mTouchEvent:Z

    .line 533
    return-void
.end method

.method private EnablingAirCallAccept(Z)V
    .locals 11
    .parameter "state"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 417
    if-eqz p1, :cond_3

    .line 418
    iget-object v7, p0, Lcom/android/settings/DrivingModeSettings;->mContext:Landroid/content/Context;

    const-string v8, "DrivingmodeAirCallAccept"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 419
    .local v6, pref:Landroid/content/SharedPreferences;
    const-string v7, "Entering"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, Enterinput:Ljava/lang/String;
    const-string v7, "0"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 421
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "air_motion_call_accept"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 422
    .local v0, AirGestureCallAccept:I
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "air_motion_engine"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 424
    .local v1, AirGestureMaster:I
    const-string v4, "0"

    .line 425
    .local v4, flagCall:Ljava/lang/String;
    const-string v5, "0"

    .line 427
    .local v5, flagMaster:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "air_motion_call_accept"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 429
    const-string v4, "1"

    .line 432
    :cond_0
    if-nez v1, :cond_1

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "air_motion_engine"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 434
    const-string v5, "1"

    .line 437
    :cond_1
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 438
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "Entering"

    const-string v8, "1"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 439
    const-string v7, "AIRCALL"

    invoke-interface {v3, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 440
    const-string v7, "MASTER"

    invoke-interface {v3, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 441
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 474
    .end local v0           #AirGestureCallAccept:I
    .end local v1           #AirGestureMaster:I
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #flagCall:Ljava/lang/String;
    .end local v5           #flagMaster:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 444
    .end local v2           #Enterinput:Ljava/lang/String;
    .end local v6           #pref:Landroid/content/SharedPreferences;
    :cond_3
    iget-object v7, p0, Lcom/android/settings/DrivingModeSettings;->mContext:Landroid/content/Context;

    const-string v8, "DrivingmodeAirCallAccept"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 445
    .restart local v6       #pref:Landroid/content/SharedPreferences;
    const-string v7, "Entering"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 446
    .restart local v2       #Enterinput:Ljava/lang/String;
    const-string v7, "1"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 447
    const-string v7, "AIRCALL"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 448
    .restart local v4       #flagCall:Ljava/lang/String;
    const-string v7, "MASTER"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 450
    .restart local v5       #flagMaster:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "air_motion_call_accept"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 451
    .restart local v0       #AirGestureCallAccept:I
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "air_motion_engine"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 453
    .restart local v1       #AirGestureMaster:I
    if-ne v0, v10, :cond_4

    const-string v7, "1"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 454
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "air_motion_call_accept"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 457
    :cond_4
    if-ne v1, v10, :cond_5

    const-string v7, "1"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 458
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "air_motion_engine"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 461
    :cond_5
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 462
    .restart local v3       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "Entering"

    const-string v8, "0"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 463
    const-string v7, "AIRCALL"

    const-string v8, "0"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 464
    const-string v7, "MASTER"

    const-string v8, "0"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 465
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 467
    .end local v0           #AirGestureCallAccept:I
    .end local v1           #AirGestureMaster:I
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #flagCall:Ljava/lang/String;
    .end local v5           #flagMaster:Ljava/lang/String;
    :cond_6
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 468
    .restart local v3       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "Entering"

    const-string v8, "0"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 469
    const-string v7, "AIRCALL"

    const-string v8, "0"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 470
    const-string v7, "MASTER"

    const-string v8, "0"

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 471
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method static synthetic access$002(Lcom/android/settings/DrivingModeSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/settings/DrivingModeSettings;->mTouchEvent:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/DrivingModeSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DrivingModeSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings/DrivingModeSettings;->updateState()V

    return-void
.end method

.method public static areAllDrivingModeOptionsDisabled(Landroid/content/ContentResolver;)Z
    .locals 3
    .parameter "cr"

    .prologue
    const/4 v0, 0x0

    .line 484
    const-string v1, "driving_mode_on"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 488
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "driving_mode_incoming_call_notification"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "driving_mode_chaton_call_notification"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v1, v2

    const-string v2, "driving_mode_air_call_accept"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v1, v2

    const-string v2, "driving_mode_message_notification"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v1, v2

    const-string v2, "driving_mode_email_notification"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v1, v2

    const-string v2, "driving_mode_voice_mail_notification"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v1, v2

    const-string v2, "driving_mode_alarm_notification"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v1, v2

    const-string v2, "driving_mode_schedule_notification"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v1, v2

    const-string v2, "driving_mode_unlock_screen_contents"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isVoiceControlEnabled(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 246
    const/4 v1, 0x1

    .line 249
    .local v1, isSVoiceInstalled:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.vlingo.midas"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 250
    const-string v2, "DrivingModeSettings"

    const-string v3, "SVoice is installed."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    return v1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "DrivingModeSettings"

    const-string v3, "SVoice is not installed."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateState()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 333
    .local v0, savedValue:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 335
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 191
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 193
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 194
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 195
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 196
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 198
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 199
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 201
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 206
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarLayout:Landroid/view/View;

    .line 210
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 211
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/android/settings/DrivingModeSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/DrivingModeSettings$1;-><init>(Lcom/android/settings/DrivingModeSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 218
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 219
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 223
    const-string v3, "DrivingModeSettings"

    const-string v4, "onCheckChanged : Driving mode changed broadcast"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.DRIVING_MODE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v1, intent:Landroid/content/Intent;
    if-eqz p2, :cond_2

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 228
    const-string v3, "DrivingMode"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    iget-boolean v3, p0, Lcom/android/settings/DrivingModeSettings;->mTouchEvent:Z

    if-eqz v3, :cond_1

    .line 230
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 231
    .local v2, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v3, "pref_driving_mode_on_noti"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 232
    .local v0, bShowDialog:Z
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/settings/DrivingModeSettings;->isVoiceControlEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->showDrivingModeOnDialog()V

    .line 235
    :cond_0
    iput-boolean v5, p0, Lcom/android/settings/DrivingModeSettings;->mTouchEvent:Z

    .line 242
    .end local v0           #bShowDialog:Z
    .end local v2           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 243
    return-void

    .line 238
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 240
    const-string v3, "DrivingMode"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mContext:Landroid/content/Context;

    .line 101
    const v3, 0x7f07003a

    invoke-virtual {p0, v3}, Lcom/android/settings/DrivingModeSettings;->addPreferencesFromResource(I)V

    .line 103
    const-string v3, "incoming_call_notification"

    invoke-virtual {p0, v3}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    .line 104
    const-string v3, "chaton_mode_notification"

    invoke-virtual {p0, v3}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mChatonNotification:Landroid/preference/CheckBoxPreference;

    .line 105
    const-string v3, "air_call_accept_hands_free"

    invoke-virtual {p0, v3}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    .line 106
    const-string v3, "message_notification"

    invoke-virtual {p0, v3}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    .line 107
    const-string v3, "email_notification"

    invoke-virtual {p0, v3}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mEmailNotification:Landroid/preference/CheckBoxPreference;

    .line 108
    const-string v3, "voice_mail_notification"

    invoke-virtual {p0, v3}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    .line 109
    const-string v3, "alarm_notification"

    invoke-virtual {p0, v3}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    .line 110
    const-string v3, "schedule_notification"

    invoke-virtual {p0, v3}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mScheduleNotification:Landroid/preference/CheckBoxPreference;

    .line 111
    const-string v3, "unlock_screen_contents"

    invoke-virtual {p0, v3}, Lcom/android/settings/DrivingModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_incoming_call_notification"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mChatonNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_chaton_call_notification"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_message_notification"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_voice_mail_notification"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f090acd

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090a8b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0915cc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 142
    :cond_2
    const-string v3, "KDI"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_message_notification"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 148
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_4

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_voice_mail_notification"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.coolots.chaton"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 158
    .local v2, info:Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_5

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mChatonNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    :cond_5
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.app.clockpackage"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_voice_mail_notification"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mEmailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_email_notification"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_unlock_screen_contents"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    return-void

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mChatonNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_chaton_call_notification"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    const-string v3, "DrivingModeSettings"

    const-string v4, "Chaton voice is not found. remove chaton in driving mode."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    .end local v1           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 172
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "DrivingModeSettings"

    const-string v4, "Samsung Alarm Clock is not found"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_alarm_notification"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/DrivingModeSettings;->areAllDrivingModeOptionsDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090a8c

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 346
    :goto_0
    sget-object v0, Lcom/android/settings/DrivingModeSettings;->sSettingsObserver:Lcom/android/settings/DrivingModeSettings$SettingsObserver;

    if-eqz v0, :cond_0

    .line 347
    sget-object v0, Lcom/android/settings/DrivingModeSettings;->sSettingsObserver:Lcom/android/settings/DrivingModeSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/DrivingModeSettings$SettingsObserver;->stopObserving()V

    .line 348
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/DrivingModeSettings;->sSettingsObserver:Lcom/android/settings/DrivingModeSettings$SettingsObserver;

    .line 351
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 352
    return-void

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 357
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 358
    iget-boolean v5, p0, Lcom/android/settings/DrivingModeSettings;->mOpenDetailMenu:Z

    if-eqz v5, :cond_0

    .line 359
    sget v5, Lcom/android/settings/DrivingModeSettings;->mSettingValue:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 360
    sget v5, Lcom/android/settings/DrivingModeSettings;->mSettingValue:I

    if-ne v5, v3, :cond_2

    move v2, v3

    .local v2, value:Z
    :goto_0
    move-object v0, p2

    .line 361
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 362
    .local v0, checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "driving_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    .line 364
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 373
    .end local v0           #checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    .end local v2           #value:Z
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 375
    .local v1, cr:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 376
    const-string v6, "driving_mode_incoming_call_notification"

    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v3

    :goto_2
    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 405
    :cond_1
    :goto_3
    invoke-static {v1}, Lcom/android/settings/DrivingModeSettings;->areAllDrivingModeOptionsDisabled(Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 406
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v5, 0x7f090a8c

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 412
    :goto_4
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .end local v1           #cr:Landroid/content/ContentResolver;
    :cond_2
    move v2, v4

    .line 360
    goto :goto_0

    .line 366
    .restart local v0       #checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    .restart local v2       #value:Z
    :cond_3
    if-nez v2, :cond_4

    move v5, v3

    :goto_5
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_4
    move v5, v4

    goto :goto_5

    .end local v0           #checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    .end local v2           #value:Z
    .restart local v1       #cr:Landroid/content/ContentResolver;
    :cond_5
    move v5, v4

    .line 376
    goto :goto_2

    .line 378
    :cond_6
    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mChatonNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 379
    const-string v6, "driving_mode_chaton_call_notification"

    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mChatonNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v3

    :goto_6
    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_7
    move v5, v4

    goto :goto_6

    .line 381
    :cond_8
    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 382
    const-string v6, "driving_mode_air_call_accept"

    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_9

    move v5, v3

    :goto_7
    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 384
    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/settings/DrivingModeSettings;->EnablingAirCallAccept(Z)V

    goto :goto_3

    :cond_9
    move v5, v4

    .line 382
    goto :goto_7

    .line 385
    :cond_a
    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 386
    const-string v6, "driving_mode_message_notification"

    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_b

    move v5, v3

    :goto_8
    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_b
    move v5, v4

    goto :goto_8

    .line 388
    :cond_c
    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mEmailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 389
    const-string v6, "driving_mode_email_notification"

    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mEmailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_d

    move v5, v3

    :goto_9
    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_d
    move v5, v4

    goto :goto_9

    .line 391
    :cond_e
    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 392
    const-string v6, "driving_mode_voice_mail_notification"

    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_f

    move v5, v3

    :goto_a
    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_f
    move v5, v4

    goto :goto_a

    .line 394
    :cond_10
    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 395
    const-string v6, "driving_mode_alarm_notification"

    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_11

    move v5, v3

    :goto_b
    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_11
    move v5, v4

    goto :goto_b

    .line 397
    :cond_12
    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mScheduleNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 398
    const-string v6, "driving_mode_schedule_notification"

    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mScheduleNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_13

    move v5, v3

    :goto_c
    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_13
    move v5, v4

    goto :goto_c

    .line 400
    :cond_14
    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 401
    const-string v6, "driving_mode_unlock_screen_contents"

    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_15

    move v5, v3

    :goto_d
    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_15
    move v5, v4

    goto :goto_d

    .line 409
    :cond_16
    iget-object v4, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_4
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 265
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 267
    invoke-direct {p0}, Lcom/android/settings/DrivingModeSettings;->updateState()V

    .line 269
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 275
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mIncomingCallNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_incoming_call_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mChatonNotification:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 280
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mChatonNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_chaton_call_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 285
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_air_call_accept"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 290
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mMessageNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_message_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 294
    :cond_4
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mEmailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_email_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 297
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 298
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mVoiceMailNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_voice_mail_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 302
    :cond_5
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    .line 303
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mAlarmNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_alarm_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 307
    :cond_6
    iget-object v3, p0, Lcom/android/settings/DrivingModeSettings;->mScheduleNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_schedule_notification"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 310
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mUnlockScreenContents:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_unlock_screen_contents"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_10

    :goto_8
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 313
    sget-object v0, Lcom/android/settings/DrivingModeSettings;->sSettingsObserver:Lcom/android/settings/DrivingModeSettings$SettingsObserver;

    if-nez v0, :cond_7

    .line 314
    new-instance v0, Lcom/android/settings/DrivingModeSettings$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/DrivingModeSettings$SettingsObserver;-><init>(Lcom/android/settings/DrivingModeSettings;Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/DrivingModeSettings;->sSettingsObserver:Lcom/android/settings/DrivingModeSettings$SettingsObserver;

    .line 315
    sget-object v0, Lcom/android/settings/DrivingModeSettings;->sSettingsObserver:Lcom/android/settings/DrivingModeSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/DrivingModeSettings$SettingsObserver;->startObserving()V

    .line 318
    :cond_7
    return-void

    :cond_8
    move v0, v2

    .line 275
    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 280
    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 285
    goto/16 :goto_2

    :cond_b
    move v0, v2

    .line 290
    goto/16 :goto_3

    :cond_c
    move v0, v2

    .line 294
    goto :goto_4

    :cond_d
    move v0, v2

    .line 298
    goto :goto_5

    :cond_e
    move v0, v2

    .line 303
    goto :goto_6

    :cond_f
    move v0, v2

    .line 307
    goto :goto_7

    :cond_10
    move v1, v2

    .line 310
    goto :goto_8
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 322
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 324
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/settings/DrivingModeSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 328
    :cond_0
    return-void
.end method

.method public showDrivingModeOnDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 501
    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    .line 502
    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 503
    iput-object v8, p0, Lcom/android/settings/DrivingModeSettings;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    .line 506
    :cond_0
    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 508
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f04006c

    invoke-virtual {v1, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 509
    .local v2, layout:Landroid/view/View;
    const v5, 0x7f0b013e

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 510
    .local v0, checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    new-instance v5, Lcom/android/settings/DrivingModeSettings$2;

    invoke-direct {v5, p0}, Lcom/android/settings/DrivingModeSettings$2;-><init>(Lcom/android/settings/DrivingModeSettings;)V

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    const v5, 0x7f0b013d

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 515
    .local v3, message:Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/DrivingModeSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f090a8e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/DrivingModeSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f090a8f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 516
    .local v4, messageString:Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/DrivingModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f090a87

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    .line 521
    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 522
    iget-object v5, p0, Lcom/android/settings/DrivingModeSettings;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/settings/DrivingModeSettings$3;

    invoke-direct {v6, p0, v0}, Lcom/android/settings/DrivingModeSettings$3;-><init>(Lcom/android/settings/DrivingModeSettings;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 530
    return-void
.end method
