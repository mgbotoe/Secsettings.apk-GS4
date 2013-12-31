.class public Lcom/android/settings/DateTimeSettingsSetupWizard;
.super Landroid/app/Activity;
.source "DateTimeSettingsSetupWizard.java"

# interfaces
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoDateTimeButton:Landroid/widget/CompoundButton;

.field private mDatePicker:Landroid/widget/DatePicker;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedTimeZone:Ljava/util/TimeZone;

.field private mTimePicker:Landroid/widget/TimePicker;

.field private mTimeZoneAdapter:Landroid/widget/SimpleAdapter;

.field private mTimeZoneButton:Landroid/widget/Button;

.field private mTimeZonePopup:Landroid/widget/ListPopupWindow;

.field private mUsingXLargeLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/android/settings/DateTimeSettingsSetupWizard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 497
    new-instance v0, Lcom/android/settings/DateTimeSettingsSetupWizard$2;

    invoke-direct {v0, p0}, Lcom/android/settings/DateTimeSettingsSetupWizard$2;-><init>(Lcom/android/settings/DateTimeSettingsSetupWizard;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DateTimeSettingsSetupWizard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->updateTimeAndDateDisplay()V

    return-void
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 506
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isAutoDateTimeEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 465
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 467
    :goto_0
    return v1

    .line 465
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private showTimezonePicker(I)V
    .locals 5
    .parameter "anchorViewId"

    .prologue
    const/4 v4, 0x0

    .line 440
    invoke-virtual {p0, p1}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 441
    .local v0, anchorView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 442
    sget-object v2, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find zone picker anchor view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :goto_0
    return-void

    .line 445
    :cond_0
    new-instance v2, Landroid/widget/ListPopupWindow;

    invoke-direct {v2, p0, v4}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    .line 446
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 447
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 448
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 449
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 450
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 452
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 455
    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 456
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0204e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 457
    .local v1, bg_drawable:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 460
    .end local v1           #bg_drawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method private updateTimeAndDateDisplay()V
    .locals 6

    .prologue
    .line 482
    iget-boolean v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-nez v2, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 486
    .local v0, now:Ljava/util/Calendar;
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 489
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 490
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 491
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 492
    .local v1, systemTimeZone:Ljava/util/TimeZone;
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 493
    iput-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    goto :goto_0
.end method


# virtual methods
.method public initUiForXl()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 225
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    .line 226
    .local v5, tz:Ljava/util/TimeZone;
    iput-object v5, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    .line 227
    const v6, 0x7f0b011f

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    .line 228
    iget-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    invoke-virtual {v5}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 234
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "VNZ"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 235
    const/4 v0, 0x0

    .line 246
    .local v0, autoDateTimeEnabled:Z
    :goto_0
    const v6, 0x7f0b0121

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CompoundButton;

    iput-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    .line 247
    iget-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 248
    iget-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 250
    const v6, 0x7f0b0125

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TimePicker;

    iput-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    .line 252
    iget-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->is24Hour()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 253
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 254
    .local v3, now:Ljava/util/Calendar;
    iget-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v9, 0xb

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 255
    iget-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v9, 0xc

    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 257
    iget-object v9, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    if-nez v0, :cond_4

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 258
    const v6, 0x7f0b0123

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/DatePicker;

    iput-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    .line 259
    iget-object v9, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    if-nez v0, :cond_5

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/widget/DatePicker;->setEnabled(Z)V

    .line 260
    iget-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v6, v8}, Landroid/widget/DatePicker;->setCalendarViewShown(Z)V

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 264
    const v6, 0x7f0b0120

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 265
    .local v2, layout:Landroid/widget/LinearLayout;
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    iget-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v6, v7}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 267
    iget-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v6, v7}, Landroid/widget/DatePicker;->setEnabled(Z)V

    .line 268
    iget-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_time"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_time_zone"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 271
    sget-object v6, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    const-string v7, "isWifiOnly is true, remove Automatic date and time layout and set AUTO_TIME and AUTO_TIME_ZONE to false"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .end local v2           #layout:Landroid/widget/LinearLayout;
    :cond_0
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    iput-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 276
    const v6, 0x7f0b007f

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    const v6, 0x7f0b009f

    invoke-virtual {p0, v6}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 278
    .local v4, skipButton:Landroid/widget/Button;
    if-eqz v4, :cond_1

    .line 279
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    :cond_1
    return-void

    .line 237
    .end local v0           #autoDateTimeEnabled:Z
    .end local v3           #now:Ljava/util/Calendar;
    .end local v4           #skipButton:Landroid/widget/Button;
    :cond_2
    const-string v6, "extra_initial_auto_datetime_value"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 238
    const-string v6, "extra_initial_auto_datetime_value"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 239
    .restart local v0       #autoDateTimeEnabled:Z
    sget-object v6, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initUiForXl(), has EXTRA_INITIAL_AUTO_DATETIME_VALUE and autoDateTimeEnabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 241
    .end local v0           #autoDateTimeEnabled:Z
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->isAutoDateTimeEnabled()Z

    move-result v0

    .line 242
    .restart local v0       #autoDateTimeEnabled:Z
    sget-object v6, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initUiForXl(), has not EXTRA_INITIAL_AUTO_DATETIME_VALUE and autoDateTimeEnabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v3       #now:Ljava/util/Calendar;
    :cond_4
    move v6, v8

    .line 257
    goto/16 :goto_1

    :cond_5
    move v6, v8

    .line 259
    goto/16 :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 365
    move v0, p2

    .line 379
    .local v0, autoEnabled:Z
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    if-ne p1, v2, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_time"

    if-eqz p2, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 383
    iget-object v5, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    if-nez v0, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 384
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    if-nez v0, :cond_4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/DatePicker;->setEnabled(Z)V

    .line 386
    :cond_0
    if-eqz v0, :cond_1

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 388
    .local v1, focusedView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 389
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 390
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 393
    .end local v1           #focusedView:Landroid/view/View;
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 380
    goto :goto_0

    :cond_3
    move v2, v4

    .line 383
    goto :goto_1

    :cond_4
    move v3, v4

    .line 384
    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 348
    :goto_0
    return-void

    .line 307
    :sswitch_0
    iget-boolean v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-eqz v4, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 309
    .local v1, focusedView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 310
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 311
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 315
    .end local v1           #focusedView:Landroid/view/View;
    :cond_0
    const v3, 0x7f0b011f

    invoke-direct {p0, v3}, Lcom/android/settings/DateTimeSettingsSetupWizard;->showTimezonePicker(I)V

    goto :goto_0

    .line 319
    :sswitch_1
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    if-eqz v4, :cond_1

    .line 320
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 321
    .local v2, systemTimeZone:Ljava/util/TimeZone;
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 322
    sget-object v4, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    const-string v5, "Another TimeZone is selected by a user. Changing system TimeZone."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 325
    .local v0, alarm:Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 328
    .end local v0           #alarm:Landroid/app/AlarmManager;
    .end local v2           #systemTimeZone:Ljava/util/TimeZone;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    if-eqz v4, :cond_3

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_time"

    iget-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 331
    iget-object v3, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    .line 332
    iget-object v3, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->clearFocus()V

    .line 333
    iget-object v3, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getYear()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getMonth()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v5}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v5

    invoke-static {p0, v3, v4, v5}, Lcom/android/settings/DateTimeSettings;->setDate(Landroid/content/Context;III)V

    .line 336
    iget-object v3, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3}, Landroid/widget/TimePicker;->clearFocus()V

    .line 337
    iget-object v3, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v4}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {p0, v3, v4}, Lcom/android/settings/DateTimeSettings;->setTime(Landroid/content/Context;II)V

    .line 343
    :cond_3
    :sswitch_2
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/DateTimeSettingsSetupWizard;->setResult(I)V

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->finish()V

    goto/16 :goto_0

    .line 304
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b007f -> :sswitch_1
        0x7f0b009f -> :sswitch_2
        0x7f0b011f -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 92
    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeSettingsSetupWizard;->requestWindowFeature(I)Z

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "auto_time"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 99
    .local v2, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    .line 100
    .local v1, forFullHD:Z
    const-string v9, "forFullHD"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v7, :cond_1

    .line 101
    const-string v9, "forFullHD"

    invoke-virtual {v2, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ActionBar;->hide()V

    .line 107
    :cond_2
    const v9, 0x7f040062

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeSettingsSetupWizard;->setContentView(I)V

    .line 126
    const v9, 0x7f0b011f

    invoke-virtual {p0, v9}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_6

    :goto_0
    iput-boolean v7, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    .line 128
    if-eqz v1, :cond_3

    .line 129
    iput-boolean v8, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    .line 132
    :cond_3
    iget-boolean v7, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-eqz v7, :cond_7

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->initUiForXl()V

    .line 161
    :cond_4
    :goto_1
    const v7, 0x7f040063

    invoke-static {p0, v8, v7}, Lcom/android/settings/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneAdapter:Landroid/widget/SimpleAdapter;

    .line 169
    iget-boolean v7, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-nez v7, :cond_5

    .line 183
    const v7, 0x7f0b000d

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 184
    .local v3, layoutRoot:Landroid/view/View;
    const/high16 v7, 0x40

    invoke-virtual {v3, v7}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 187
    .end local v3           #layoutRoot:Landroid/view/View;
    :cond_5
    return-void

    :cond_6
    move v7, v8

    .line 126
    goto :goto_0

    .line 135
    :cond_7
    const v7, 0x7f0b007f

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 136
    .local v0, button_next:Landroid/view/View;
    if-eqz v0, :cond_8

    .line 137
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    :cond_8
    instance-of v7, v0, Landroid/widget/Button;

    if-eqz v7, :cond_9

    if-eqz v0, :cond_9

    .line 139
    sget-object v7, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    const-string v9, "Next is Button instance"

    invoke-static {v7, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v0

    .line 140
    check-cast v4, Landroid/widget/Button;

    .line 141
    .local v4, nextBtn:Landroid/widget/Button;
    const-string v7, ""

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f090705

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, original_str:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0203e5

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/16 v9, -0xa

    invoke-static {v6, v7, v9}, Lcom/android/settings/Utils;->makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Landroid/text/SpannableString;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 151
    .end local v4           #nextBtn:Landroid/widget/Button;
    .end local v6           #original_str:Ljava/lang/String;
    :cond_9
    const v7, 0x7f0b000e

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 156
    .local v5, nextTxtBtn:Landroid/widget/TextView;
    sget-object v7, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    const-string v9, "Next is LinearLayout instance"

    invoke-static {v7, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 397
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/ZonePicker;->obtainTimeZoneFromItem(Ljava/lang/Object;)Ljava/util/TimeZone;

    move-result-object v3

    .line 398
    .local v3, tz:Ljava/util/TimeZone;
    iget-boolean v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-eqz v4, :cond_1

    .line 399
    iput-object v3, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    .line 400
    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 401
    .local v1, now:Ljava/util/Calendar;
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 402
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 405
    :cond_0
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 407
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 408
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 418
    .end local v1           #now:Ljava/util/Calendar;
    :goto_0
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 419
    return-void

    .line 412
    :cond_1
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 413
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0b011b

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/DateTimeSettings;

    .line 416
    .local v2, settingsFragment:Lcom/android/settings/DateTimeSettings;
    invoke-virtual {v2, p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 298
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 299
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 300
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "caller"
    .parameter "pref"

    .prologue
    .line 435
    const v0, 0x7f0b011a

    invoke-direct {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->showTimezonePicker(I)V

    .line 436
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 285
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 286
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 287
    .local v0, filter:Landroid/content/IntentFilter;
    iget-boolean v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-nez v1, :cond_0

    .line 288
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    :cond_0
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/settings/DateTimeSettingsSetupWizard;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 294
    return-void
.end method
