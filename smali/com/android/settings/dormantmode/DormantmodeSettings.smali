.class public Lcom/android/settings/dormantmode/DormantmodeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DormantmodeSettings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field static final ALLOWEDLIST:[Ljava/lang/String;

.field private static DIALOG_CURRENT_TIMEPICKER:I


# instance fields
.field private builder:Landroid/net/Uri$Builder;

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

.field private mAllowedContactsPref:Landroid/preference/ListPreference;

.field private mAllowedListPref:Landroid/preference/Preference;

.field private mAlwaysPref:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field private mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

.field private final mDormantModeObserver:Landroid/database/ContentObserver;

.field private mEndhour:I

.field private mEndmin:I

.field private mFilter:Landroid/content/IntentFilter;

.field private mHelpPref:Landroid/preference/Preference;

.field private mIncomingCallPref:Landroid/preference/CheckBoxPreference;

.field private mIsGoingIntoAllowedList:Z

.field private mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

.field private mNotificationsPref:Landroid/preference/CheckBoxPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSetTimPref:Landroid/preference/PreferenceCategory;

.field private mSetTimeDialogPref:Landroid/preference/Preference;

.field private mStarthour:I

.field private mStartmin:I

.field private mTimeFromBtn:Landroid/widget/Button;

.field private mTimePickerDlg:Landroid/app/Dialog;

.field private mTimeToBtn:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    sput v2, Lcom/android/settings/dormantmode/DormantmodeSettings;->DIALOG_CURRENT_TIMEPICKER:I

    .line 106
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/dormantmode/DormantmodeSettings;->ALLOWEDLIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIsGoingIntoAllowedList:Z

    .line 104
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "dormant"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "custom_list"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->builder:Landroid/net/Uri$Builder;

    .line 110
    new-instance v0, Lcom/android/settings/dormantmode/DormantmodeSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings$1;-><init>(Lcom/android/settings/dormantmode/DormantmodeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mDormantModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dormantmode/DormantmodeSettings;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeFromBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/dormantmode/DormantmodeSettings;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeFromBtn:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/dormantmode/DormantmodeSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/dormantmode/DormantmodeSettings;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setEndTime(II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/dormantmode/DormantmodeSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/dormantmode/DormantmodeSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStarthour:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/dormantmode/DormantmodeSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStartmin:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/dormantmode/DormantmodeSettings;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setStartTime(II)V

    return-void
.end method

.method static synthetic access$502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    sput p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->DIALOG_CURRENT_TIMEPICKER:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/settings/dormantmode/DormantmodeSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/dormantmode/DormantmodeSettings;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeToBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/dormantmode/DormantmodeSettings;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeToBtn:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/dormantmode/DormantmodeSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/dormantmode/DormantmodeSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    return v0
.end method

.method private setAllowListsummery(Ljava/lang/String;)V
    .locals 6
    .parameter "value"

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00a5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 520
    .local v3, values:[Ljava/lang/String;
    const v2, 0x7f0a00a4

    .line 521
    .local v2, summaryArrayResId:I
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00a4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, summaries:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 524
    aget-object v4, v3, v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 525
    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 522
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 528
    :cond_1
    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 529
    return-void
.end method

.method private setEndTime(II)V
    .locals 3
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_end_hour"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 509
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_end_min"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/settings/dormantmode/DormantModeUtils;->TimeFormat(Landroid/content/Context;II)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 513
    .local v0, EndTime:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeToBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 514
    return-void
.end method

.method private setStartTime(II)V
    .locals 3
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_start_hour"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 500
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_start_min"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 502
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/settings/dormantmode/DormantModeUtils;->TimeFormat(Landroid/content/Context;II)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 504
    .local v0, StartTime:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeFromBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 505
    return-void
.end method


# virtual methods
.method initDromantswitchBtn()V
    .locals 9

    .prologue
    const/16 v5, 0x10

    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 327
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 329
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 330
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 331
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 332
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 334
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v7, v7, v1, v7}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 335
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 337
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v8, v8, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 342
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarLayout:Landroid/view/View;

    .line 345
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    new-instance v3, Lcom/android/settings/dormantmode/DormantModeEnabler;

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v3, v0, v4, v7}, Lcom/android/settings/dormantmode/DormantModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Z)V

    iput-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    .line 347
    return-void
.end method

.method public initPref()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 213
    const-string v1, "dormant_mode_help"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mHelpPref:Landroid/preference/Preference;

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 216
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mHelpPref:Landroid/preference/Preference;

    const v4, 0x7f04007b

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 220
    :goto_0
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mHelpPref:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 222
    const-string v1, "disable_incoming_calls"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    .line 223
    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "dormant_disable_incoming_calls"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 225
    const-string v1, "disable_notifications"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    .line 226
    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "dormant_disable_notifications"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 228
    const-string v1, "disable_alarm_and_timer"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    .line 229
    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "dormant_disable_alarm_and_timer"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 231
    const-string v1, "disable_led_indicator"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    .line 232
    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "dormant_disable_led_indicator"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 234
    const-string v1, "always"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    .line 235
    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "dormant_always"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 237
    const-string v1, "allowed_contacts"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    .line 238
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dormant_allow_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "dormant_allow_list"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setAllowListsummery(Ljava/lang/String;)V

    .line 243
    const-string v1, "allowed_list"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    .line 244
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Custom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 247
    const-string v1, "set_time_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimPref:Landroid/preference/PreferenceCategory;

    .line 249
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    if-nez v1, :cond_0

    .line 250
    new-instance v1, Lcom/android/settings/dormantmode/DormantmodeSettings$3;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/android/settings/dormantmode/DormantmodeSettings$3;-><init>(Lcom/android/settings/dormantmode/DormantmodeSettings;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    .line 278
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_a

    :goto_6
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 279
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    const v2, 0x7f04007f

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 280
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimPref:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 283
    :cond_0
    const-string v1, "feature_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 284
    .local v0, featureCategory:Landroid/preference/PreferenceCategory;
    if-eqz v0, :cond_3

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_2

    .line 287
    :cond_1
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v1, "allowed_contacts_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 293
    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 294
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 297
    :cond_3
    return-void

    .line 218
    .end local v0           #featureCategory:Landroid/preference/PreferenceCategory;
    :cond_4
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mHelpPref:Landroid/preference/Preference;

    const v4, 0x7f04007a

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto/16 :goto_0

    :cond_5
    move v1, v3

    .line 223
    goto/16 :goto_1

    :cond_6
    move v1, v3

    .line 226
    goto/16 :goto_2

    :cond_7
    move v1, v3

    .line 229
    goto/16 :goto_3

    :cond_8
    move v1, v3

    .line 232
    goto/16 :goto_4

    :cond_9
    move v1, v3

    .line 235
    goto/16 :goto_5

    :cond_a
    move v2, v3

    .line 278
    goto/16 :goto_6
.end method

.method loadDormantTime()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_start_hour"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStarthour:I

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_end_hour"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_start_min"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStartmin:I

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_end_min"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    .line 354
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearFocus()V

    .line 146
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 123
    const v0, 0x7f070039

    invoke-virtual {p0, v0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->addPreferencesFromResource(I)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.DORMANTMODE_ACTIVITY_LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mFilter:Landroid/content/IntentFilter;

    .line 127
    new-instance v0, Lcom/android/settings/dormantmode/DormantmodeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/dormantmode/DormantmodeSettings$2;-><init>(Lcom/android/settings/dormantmode/DormantmodeSettings;)V

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->initDromantswitchBtn()V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->initPref()V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->updateDormantmodepage()V

    .line 139
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 416
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 418
    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    .line 420
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 433
    iput-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    .line 437
    :goto_0
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    return-object v0

    .line 422
    :pswitch_0
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStarthour:I

    iget v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStartmin:I

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    goto :goto_0

    .line 427
    :pswitch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 428
    .local v6, calendar:Ljava/util/Calendar;
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    iget v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    goto :goto_0

    .line 420
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 177
    const-string v1, "DormantModeSettings"

    const-string v2, "onPause() "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 179
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 181
    iget-boolean v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIsGoingIntoAllowedList:Z

    if-nez v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dormant_switch_onoff"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 183
    .local v0, state:I
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/dormantmode/DormantModeUtils;->isAllOptionDisabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    if-ne v4, v0, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09129d

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 192
    .end local v0           #state:I
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    invoke-virtual {v1}, Lcom/android/settings/dormantmode/DormantModeEnabler;->pause()V

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mDormantModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 195
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 470
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 471
    const-string v1, "allowed_contacts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    check-cast p2, Ljava/lang/String;

    .line 474
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_allow_list"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 475
    invoke-direct {p0, p2}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setAllowListsummery(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Custom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :goto_0
    const-string v0, "Custom"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->builder:Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/settings/dormantmode/DormantmodeSettings;->ALLOWEDLIST:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 482
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 483
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 495
    :cond_0
    :goto_1
    return v10

    .line 477
    :catch_0
    move-exception v0

    .line 478
    const-string v1, "DormantModeSettings"

    const-string v2, "could not set KEY_ALLOW_LIST"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 485
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 487
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity;

    .line 488
    const-class v0, Lcom/android/settings/dormantmode/DormantModeCustomList;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const v7, 0x7f091296

    move-object v8, v3

    move-object v9, v3

    invoke-virtual/range {v4 .. v10}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIsGoingIntoAllowedList:Z

    .line 491
    const-string v0, "DormantModeSettings"

    const-string v1, "display custom contact list for tablet"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 359
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 360
    iget-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v5, :cond_0

    .line 361
    sget v5, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSettingValue:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 362
    sget v5, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSettingValue:I

    if-ne v5, v3, :cond_3

    move v2, v3

    .local v2, value:Z
    :goto_0
    move-object v0, p2

    .line 363
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 364
    .local v0, checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 365
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 371
    .end local v0           #checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    .end local v2           #value:Z
    :cond_0
    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 372
    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 373
    .restart local v2       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dormant_disable_incoming_calls"

    if-eqz v2, :cond_4

    move v5, v3

    :goto_1
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 399
    .end local v2           #value:Z
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/dormantmode/DormantModeUtils;->isAllOptionDisabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 401
    :cond_2
    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 408
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    :cond_3
    move v2, v4

    .line 362
    goto :goto_0

    .restart local v2       #value:Z
    :cond_4
    move v5, v4

    .line 373
    goto :goto_1

    .line 375
    .end local v2           #value:Z
    :cond_5
    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 376
    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 377
    .restart local v2       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dormant_disable_notifications"

    if-eqz v2, :cond_6

    move v5, v3

    :goto_4
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_6
    move v5, v4

    goto :goto_4

    .line 379
    .end local v2           #value:Z
    :cond_7
    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 380
    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 381
    .restart local v2       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dormant_disable_alarm_and_timer"

    if-eqz v2, :cond_8

    move v5, v3

    :goto_5
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_8
    move v5, v4

    goto :goto_5

    .line 383
    .end local v2           #value:Z
    :cond_9
    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 384
    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 385
    .restart local v2       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dormant_disable_led_indicator"

    if-eqz v2, :cond_a

    move v5, v3

    :goto_6
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_a
    move v5, v4

    goto :goto_6

    .line 387
    .end local v2           #value:Z
    :cond_b
    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 388
    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 389
    .restart local v2       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dormant_always"

    if-eqz v2, :cond_c

    move v5, v3

    :goto_7
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 390
    iget-object v6, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_d

    move v5, v3

    :goto_8
    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 392
    const-string v5, "DormantModeSettings"

    const-string v6, "Broadcast intent : android.settings.DORMANTMODE_CHANGED"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.settings.DORMANTMODE_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .end local v1           #intent:Landroid/content/Intent;
    :cond_c
    move v5, v4

    .line 389
    goto :goto_7

    :cond_d
    move v5, v4

    .line 390
    goto :goto_8

    .line 395
    .end local v2           #value:Z
    :cond_e
    iget-object v5, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 396
    iput-boolean v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIsGoingIntoAllowedList:Z

    goto/16 :goto_2

    .line 404
    :cond_f
    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 405
    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.DORMANTMODE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 150
    const-string v0, "DormantModeSettings"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 152
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/dormantmode/DormantModeEnabler;->resume()V

    .line 158
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dormant_switch_onoff"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mDormantModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->updateDormantmodepage()V

    .line 164
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeFromBtn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 168
    iget v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStarthour:I

    iget v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStartmin:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setStartTime(II)V

    .line 169
    iget v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    iget v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setEndTime(II)V

    .line 172
    :cond_2
    iput-boolean v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIsGoingIntoAllowedList:Z

    .line 173
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 199
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 200
    const-string v0, "DormantModeSettings"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimePickerDlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 209
    :cond_1
    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 4
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/4 v3, 0x1

    .line 442
    sget v1, Lcom/android/settings/dormantmode/DormantmodeSettings;->DIALOG_CURRENT_TIMEPICKER:I

    if-ne v1, v3, :cond_2

    .line 443
    iput p2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStarthour:I

    .line 444
    iput p3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStartmin:I

    .line 445
    invoke-direct {p0, p2, p3}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setStartTime(II)V

    .line 452
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStarthour:I

    iget v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mStartmin:I

    iget v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    if-ne v1, v2, :cond_1

    .line 453
    iget v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_3

    .line 454
    iget v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x18

    iput v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    .line 455
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    .line 456
    iget v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    iget v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    invoke-direct {p0, v1, v2}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setEndTime(II)V

    .line 461
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f091291

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 463
    :cond_1
    const-string v1, "DormantModeSettings"

    const-string v2, "Broadcast intent : android.settings.DORMANTMODE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DORMANTMODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 465
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 466
    return-void

    .line 446
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    sget v1, Lcom/android/settings/dormantmode/DormantmodeSettings;->DIALOG_CURRENT_TIMEPICKER:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 447
    iput p2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    .line 448
    iput p3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    .line 449
    invoke-direct {p0, p2, p3}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setEndTime(II)V

    .line 450
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeToBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_0

    .line 458
    :cond_3
    iget v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    .line 459
    iget v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I

    iget v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I

    invoke-direct {p0, v1, v2}, Lcom/android/settings/dormantmode/DormantmodeSettings;->setEndTime(II)V

    goto :goto_1
.end method

.method updateDormantmodepage()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dormant_switch_onoff"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 303
    .local v0, State:I
    if-nez v0, :cond_0

    .line 304
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 305
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 306
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 307
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 308
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 309
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 310
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 311
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 323
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 314
    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mIncomingCallPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 315
    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mNotificationsPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 316
    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlarmandTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 317
    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mLedIndicatorPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 318
    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 319
    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mSetTimeDialogPref:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAlwaysPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 320
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 321
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedListPref:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings;->mAllowedContactsPref:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Custom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
