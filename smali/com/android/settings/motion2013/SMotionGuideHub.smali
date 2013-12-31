.class public Lcom/android/settings/motion2013/SMotionGuideHub;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SMotionGuideHub.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAdvancedBtnClickListener:Landroid/view/View$OnClickListener;

.field private mAdvancedCategory:Landroid/preference/PreferenceCategory;

.field private mAdvancedSetting:Landroid/preference/Preference;

.field mAdvancedSettingBtn:Landroid/widget/Button;

.field private mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

.field private mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

.field private mBattery:Landroid/preference/CheckBoxPreference;

.field private mCurrentMusic:Landroid/preference/CheckBoxPreference;

.field private mFlipCloseStatus:Z

.field private mFolderDialog:Landroid/app/AlertDialog;

.field private mGuideAniResID:I

.field private mGuideContent:Ljava/lang/String;

.field private mHasAdvancedSettings:Z

.field private mHasListView:Z

.field private mHasSensitivity:Z

.field private mImageView:Landroid/widget/ImageView;

.field private mInternetWindow:Landroid/preference/CheckBoxPreference;

.field private mLearnAboutTitleID:I

.field private mListView:Landroid/widget/ListView;

.field private mMessageView:Landroid/widget/TextView;

.field private mMissedCall:Landroid/preference/CheckBoxPreference;

.field private mMotionDBItem:Ljava/lang/String;

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mMotionType:Ljava/lang/String;

.field private mNotePageView:Landroid/preference/CheckBoxPreference;

.field private mNotification:Landroid/preference/CheckBoxPreference;

.field private mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSinglePhotoView:Landroid/preference/CheckBoxPreference;

.field private mSupportFolderType:Z

.field private mTimeAndDate:Landroid/preference/CheckBoxPreference;

.field private mTryBtnClickListener:Landroid/view/View$OnClickListener;

.field private mUnreadMessage:Landroid/preference/CheckBoxPreference;

.field private mUseRingDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 132
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    .line 133
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 134
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 135
    iput v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 136
    iput v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    .line 142
    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mListView:Landroid/widget/ListView;

    .line 149
    iput-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasSensitivity:Z

    .line 150
    iput-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasAdvancedSettings:Z

    .line 151
    iput-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    .line 153
    iput-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasListView:Z

    .line 179
    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 180
    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    .line 181
    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFolderDialog:Landroid/app/AlertDialog;

    .line 185
    new-instance v0, Lcom/android/settings/motion2013/SMotionGuideHub$1;

    invoke-direct {v0, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$1;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mTryBtnClickListener:Landroid/view/View$OnClickListener;

    .line 195
    new-instance v0, Lcom/android/settings/motion2013/SMotionGuideHub$2;

    invoke-direct {v0, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$2;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion2013/SMotionGuideHub;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->showMotionDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirCallAcceptChanged(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastArcMotionQuickGlanceChanged(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->startTurnOverTryActually(Z)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/settings/motion2013/SMotionGuideHub;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFolderDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion2013/SMotionGuideHub;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->startTryActually(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/motion2013/SMotionGuideHub;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->sendGlanceViewCheck(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirScrollChanged(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirBrowseChanged(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirMoveChanged(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/motion2013/SMotionGuideHub;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirPinChanged(Z)V

    return-void
.end method

.method private broadcastAirBrowseChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1314
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_BROWSE_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1315
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1316
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1317
    return-void
.end method

.method private broadcastAirCallAcceptChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1329
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_CALL_ACCEPT_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1330
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1331
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1332
    return-void
.end method

.method private broadcastAirMoveChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1319
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_MOVE_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1320
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1321
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1322
    return-void
.end method

.method private broadcastAirPinChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1324
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_PIN_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1325
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1326
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1327
    return-void
.end method

.method private broadcastAirScrollChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1309
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_SCROLL_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1310
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1311
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1312
    return-void
.end method

.method private broadcastArcMotionQuickGlanceChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1359
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.ARC_MOTION_QUICK_GLANCE_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1360
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1361
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1362
    return-void
.end method

.method private isAllAirScrollOptionDisabled()Z
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1279
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    .line 1280
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "air_motion_scroll_all_list"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1281
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_scroll_web_page"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1282
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_scroll_contact_list"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1283
    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "air_motion_scroll_email_list"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1284
    iget-object v6, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "air_motion_scroll_album_and_photo"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1285
    iget-object v7, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_scroll_email_body"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 1286
    or-int/2addr v2, v3

    or-int/2addr v2, v4

    or-int/2addr v2, v5

    or-int/2addr v2, v6

    or-int/2addr v2, v7

    if-ge v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isAllAirTurnOptionDisabled()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1289
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    .line 1290
    iget-object v7, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_single_photo_view"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1291
    .local v4, singlephotoview:I
    iget-object v7, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_internet_window"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1292
    .local v1, internetwindow:I
    iget-object v7, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_now_playing_on_music"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1293
    .local v3, nowplayingmusic:I
    iget-object v7, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_bgm_on_lock_screen"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1294
    .local v0, bgmonlockscreen:I
    iget-object v7, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "air_motion_turn_note_page_view"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1296
    .local v2, notepageview:I
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1297
    or-int v7, v4, v3

    or-int/2addr v7, v0

    or-int/2addr v7, v2

    if-ge v7, v5, :cond_1

    .line 1299
    :cond_0
    :goto_0
    return v5

    :cond_1
    move v5, v6

    .line 1297
    goto :goto_0

    .line 1299
    :cond_2
    or-int v7, v4, v1

    or-int/2addr v7, v3

    or-int/2addr v7, v0

    or-int/2addr v7, v2

    if-lt v7, v5, :cond_0

    move v5, v6

    goto :goto_0
.end method

.method private sendGlanceViewCheck(Z)V
    .locals 4
    .parameter

    .prologue
    .line 1303
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.GlanceViewChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1304
    const-string v1, "GlanceViewState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1305
    const-string v1, "SMotionGuideHub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GlanceViewState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1307
    return-void
.end method

.method private setArgument(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f090d4f

    const v4, 0x7f090d4e

    const/4 v1, 0x0

    const/4 v0, 0x1

    const v3, 0x7f0915cc

    .line 699
    const-string v2, "quick_glance"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 700
    iput-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasListView:Z

    .line 701
    const-string v0, "air_motion_glance_view"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 702
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 703
    const v1, 0x7f090dd9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 704
    iget-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v1, :cond_0

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 707
    :cond_0
    const v0, 0x7f090e0c

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 708
    const v0, 0x7f02001c

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    .line 885
    :goto_0
    return-void

    .line 709
    :cond_1
    const-string v2, "air_scroll"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 710
    const-string v0, "air_motion_scroll"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 711
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090ddd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090dcf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090e15

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090e1e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 716
    iget-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v1, :cond_2

    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090ddd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090dcf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090e15

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090e1e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 723
    :cond_2
    const v0, 0x7f090ddc

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 724
    const v0, 0x7f02001e

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 725
    :cond_3
    const-string v2, "air_turn"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 726
    iput-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasListView:Z

    .line 727
    const-string v0, "air_motion_turn"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 728
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 729
    const v1, 0x7f090ddf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 730
    iget-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v1, :cond_4

    .line 731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 733
    :cond_4
    const v0, 0x7f090dde

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 734
    const v0, 0x7f02001f

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 735
    :cond_5
    const-string v2, "air_move"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 736
    const-string v0, "air_motion_item_move"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 737
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 738
    const v1, 0x7f090de2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 739
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    .line 740
    const-string v2, "ATT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "SPR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "TMB"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "USC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 741
    :cond_6
    const v1, 0x7f090de4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 743
    :cond_7
    const v0, 0x7f090de1

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 744
    const v0, 0x7f02001a

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 745
    :cond_8
    const-string v2, "air_pin"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 746
    const-string v0, "air_motion_clip"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 747
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090ded

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 748
    const v0, 0x7f090dec

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 749
    const v0, 0x7f02001b

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 750
    :cond_9
    const-string v2, "air_call_accept"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 751
    iput-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasListView:Z

    .line 752
    const-string v0, "air_motion_call_accept"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 753
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090df0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 754
    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v0, :cond_a

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 757
    :cond_a
    const v0, 0x7f090def

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 758
    const v0, 0x7f020018

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 759
    :cond_b
    const-string v2, "tilt"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 760
    const-string v0, "motion_zooming"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 761
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d55

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 762
    iput v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 763
    const v0, 0x7f0202fb

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 764
    :cond_c
    const-string v2, "tilt_to_scroll_list"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 765
    const-string v0, "motion_tilt_to_list_scrolling"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 766
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d56

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 767
    iput v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 768
    const v0, 0x7f0202f3

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 769
    :cond_d
    const-string v2, "pan"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 770
    const-string v0, "motion_panning"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 771
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d57

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 772
    iput v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 773
    const v0, 0x7f0202d9

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 774
    :cond_e
    const-string v2, "pan_to_browse_image"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 775
    const-string v0, "motion_pan_to_browse_image"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 776
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d58

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 777
    iput v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 778
    const v0, 0x7f0202d8

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 779
    :cond_f
    const-string v2, "shake"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 780
    const-string v2, "motion_shake"

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 781
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090d59

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 784
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.swift.app.kiesair"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    :goto_1
    if-nez v0, :cond_11

    .line 789
    const-string v0, "CMCC"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "CHM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "CHC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 792
    :cond_10
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d5c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 802
    :cond_11
    :goto_2
    const v0, 0x7f090d50

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 803
    const v0, 0x7f0202e5

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 785
    :catch_0
    move-exception v0

    move v0, v1

    .line 786
    goto :goto_1

    .line 794
    :cond_12
    const-string v0, "CHN"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "CTC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 796
    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d5b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    goto :goto_2

    .line 799
    :cond_14
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d5b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    goto :goto_2

    .line 804
    :cond_15
    const-string v0, "double_tap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 805
    const-string v0, "motion_double_tap"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 806
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d5d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 807
    const v0, 0x7f090d51

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 808
    const v0, 0x7f0202cb

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 809
    :cond_16
    const-string v0, "pick_up"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 810
    const-string v0, "motion_pick_up"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 811
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d5e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 812
    const v0, 0x7f090d52

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 813
    const v0, 0x7f0202e6

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 814
    :cond_17
    const-string v0, "pick_up_to_call_out"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 815
    const-string v0, "motion_pick_up_to_call_out"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 816
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d72

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 817
    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v0, :cond_18

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 820
    :cond_18
    const v0, 0x7f090d53

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 821
    const v0, 0x7f0202c8

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 822
    :cond_19
    const-string v0, "turn_over"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 823
    const-string v0, "motion_overturn"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 824
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d61

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 825
    const v0, 0x7f090d54

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 826
    const v0, 0x7f0202fc

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 827
    :cond_1a
    const-string v0, "peek_view_albums_list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 828
    const-string v0, "motion_peek_view_albums_list"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 829
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d44

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 830
    const v0, 0x7f090d37

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 831
    const v0, 0x7f020300

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 832
    :cond_1b
    const-string v0, "peek_chapter_preview"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 833
    const-string v0, "motion_peek_chapter_preview"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 834
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 835
    const v0, 0x7f090d38

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 836
    const v0, 0x7f020301

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 837
    :cond_1c
    const-string v0, "palm_swipe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 838
    const-string v0, "surface_palm_swipe"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 839
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d7f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 840
    const v0, 0x7f090d7e

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 841
    const v0, 0x7f0200c4

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 842
    :cond_1d
    const-string v0, "palm_touch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 843
    const-string v0, "surface_palm_touch"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 844
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 845
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d82

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 848
    :goto_3
    const v0, 0x7f090d80

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 849
    const v0, 0x7f0200c5

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 847
    :cond_1e
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d81

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    goto :goto_3

    .line 850
    :cond_1f
    const-string v0, "tap_and_twist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 851
    const-string v0, "surface_tap_and_twist"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 852
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d84

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 853
    const v0, 0x7f090d83

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    goto/16 :goto_0

    .line 855
    :cond_20
    const-string v0, "camera_short_cut"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 856
    const-string v0, "motion_unlock_camera_short_cut"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 857
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090d90

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 858
    const v0, 0x7f090d8f

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 859
    const v0, 0x7f0202c7

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 860
    :cond_21
    const-string v0, "arc_motion_ripple_effect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 861
    const-string v0, "arc_motion_ripple_effect"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 862
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090da4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 863
    const v0, 0x7f090d9c

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 864
    const v0, 0x7f0202de

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 865
    :cond_22
    const-string v0, "arc_motion_quick_glance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 866
    const-string v0, "arc_motion_quick_glance"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 867
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090da5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 868
    const v0, 0x7f090d9d

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 869
    const v0, 0x7f0202dd

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 870
    :cond_23
    const-string v0, "arc_motion_music_playback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 871
    const-string v0, "arc_motion_music_playback"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 872
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090da6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 873
    const v0, 0x7f090d9e

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    .line 874
    const v0, 0x7f0202d7

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    goto/16 :goto_0

    .line 875
    :cond_24
    const-string v0, "arc_motion_messaging"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 876
    const-string v0, "arc_motion_messaging"

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    .line 877
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090da7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    .line 878
    const v0, 0x7f090d9f

    iput v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mLearnAboutTitleID:I

    goto/16 :goto_0

    .line 881
    :cond_25
    const-string v0, "SMotionGuideHub"

    const-string v1, "Cannot get correct motion information"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private showFolderDialog()V
    .locals 3

    .prologue
    .line 1246
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->allDialogDismiss()V

    .line 1247
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1248
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0915cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09074d

    new-instance v2, Lcom/android/settings/motion2013/SMotionGuideHub$10;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$10;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/motion2013/SMotionGuideHub$9;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$9;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFolderDialog:Landroid/app/AlertDialog;

    .line 1262
    return-void
.end method

.method private showMotionDialog()V
    .locals 6

    .prologue
    const v5, 0x7f090df3

    .line 1171
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->allDialogDismiss()V

    .line 1172
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1173
    const v0, 0x7f090d6e

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1174
    const v0, 0x7f090d6f

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1175
    const-string v3, "air_motion_glance_view"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1176
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1177
    const v0, 0x7f090df4

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1194
    :cond_0
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09074d

    new-instance v2, Lcom/android/settings/motion2013/SMotionGuideHub$5;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$5;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090173

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    .line 1220
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion2013/SMotionGuideHub$6;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$6;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1226
    return-void

    .line 1178
    :cond_1
    const-string v3, "air_motion_scroll"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1179
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1180
    const v0, 0x7f090df5

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1181
    :cond_2
    const-string v3, "air_motion_turn"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1182
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1183
    const v0, 0x7f090df6

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1184
    :cond_3
    const-string v3, "air_motion_item_move"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1185
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1186
    const v0, 0x7f090df7

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1187
    :cond_4
    const-string v3, "air_motion_clip"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1188
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1189
    const v0, 0x7f090df8

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1190
    :cond_5
    const-string v3, "air_motion_call_accept"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1191
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1192
    const v0, 0x7f090df9

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private showUseRingDialog()V
    .locals 3

    .prologue
    .line 1229
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->allDialogDismiss()V

    .line 1230
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090d6b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090d6a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09074d

    new-instance v2, Lcom/android/settings/motion2013/SMotionGuideHub$8;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$8;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090d6c

    new-instance v2, Lcom/android/settings/motion2013/SMotionGuideHub$7;

    invoke-direct {v2, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$7;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 1244
    return-void
.end method

.method private startTryActually(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/16 v3, 0xa

    .line 937
    const-string v0, "quick_glance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 938
    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    if-eqz v0, :cond_1

    .line 939
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->showFolderDialog()V

    .line 1159
    :cond_0
    :goto_0
    return-void

    .line 942
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 943
    const-string v1, "samsung.pickuptutorial.GLANCEVIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 944
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    .line 945
    const-string v0, "SMotionGuideHub"

    const-string v1, "AIR_MOTION_GLANCE_VIEW"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 947
    :cond_2
    const-string v0, "air_scroll"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 952
    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    if-eqz v0, :cond_3

    .line 953
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->showFolderDialog()V

    goto :goto_0

    .line 956
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AirScrollTry"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 957
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 958
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 960
    :cond_4
    const-string v0, "air_turn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 961
    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    if-eqz v0, :cond_5

    .line 962
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->showFolderDialog()V

    goto :goto_0

    .line 965
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 967
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 970
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 971
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 972
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 973
    const-string v1, "MotionTest"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 974
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 976
    :cond_7
    const-string v0, "air_move"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 977
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 978
    const-string v1, "com.sec.android.motions.settings.airmotiontutorial"

    const-string v2, "com.sec.android.motions.settings.airmotiontutorial.AirMotionTry"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 979
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 980
    :cond_8
    const-string v0, "air_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 981
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AirPinTry"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 982
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 983
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 984
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 985
    :cond_9
    const-string v0, "air_call_accept"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 986
    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    if-eqz v0, :cond_a

    .line 987
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->showFolderDialog()V

    goto/16 :goto_0

    .line 990
    :cond_a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 991
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.AirMotionTutorialIncallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 992
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 994
    :cond_b
    const-string v0, "tilt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 996
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 998
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1001
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1002
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1003
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1004
    const-string v1, "MotionTest"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1005
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1007
    :cond_d
    const-string v0, "tilt_to_scroll_list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1008
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1009
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1010
    const-string v1, "com.android.jcontacts"

    const-string v2, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1014
    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1012
    :cond_e
    const-string v1, "com.android.contacts"

    const-string v2, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1015
    :cond_f
    const-string v0, "pan"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1016
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1017
    const-string v1, "com.sec.android.motions.settings.panningtutorial"

    const-string v2, "com.sec.android.motions.settings.panningtutorial.PanningTryActually"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1018
    const-string v1, "isLaunchedFromHelp"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1019
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1021
    :cond_10
    const-string v0, "pan_to_browse_image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1022
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1024
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1027
    :cond_11
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1028
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1029
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1030
    const-string v1, "MotionTest"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1031
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1033
    :cond_12
    const-string v0, "shake"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1041
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1042
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.motion.ShakeTutorial"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1043
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1044
    :cond_13
    const-string v0, "double_tap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1045
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1046
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1047
    const-string v1, "com.android.jcontacts"

    const-string v2, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1051
    :goto_2
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1049
    :cond_14
    const-string v1, "com.android.contacts"

    const-string v2, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 1052
    :cond_15
    const-string v0, "pick_up"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1053
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1055
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1058
    :cond_16
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1059
    const-string v1, "android.pickuptutorial.PICKUPTUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1060
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1061
    :cond_17
    const-string v0, "pick_up_to_call_out"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1062
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1063
    const-string v1, "KDI"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1064
    const-string v1, "com.android.contacts.ui.DirectCallTutorial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1065
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1067
    :cond_18
    iget-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v1, :cond_19

    iget-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    if-eqz v1, :cond_19

    .line 1068
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->showFolderDialog()V

    goto/16 :goto_0

    .line 1071
    :cond_19
    const-string v1, "com.android.mms.ui.DirectCallTutorial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1072
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1075
    :cond_1a
    const-string v0, "turn_over"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1076
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1077
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v2, :cond_1b

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_1b

    .line 1078
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->showUseRingDialog()V

    goto/16 :goto_0

    .line 1080
    :cond_1b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->startTurnOverTryActually(Z)V

    goto/16 :goto_0

    .line 1082
    :cond_1c
    const-string v0, "palm_swipe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1083
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1085
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1088
    :cond_1d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1089
    const-string v1, "com.samsung.pickuptutorial.PALMSWIPETUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1090
    const-string v1, "PalmMotionTest"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1091
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1092
    const-string v0, "SMotionGuideHub"

    const-string v1, "MotionTutorialSettings Tutorial Palm swipe to capture"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1093
    :cond_1e
    const-string v0, "palm_touch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1094
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1096
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1099
    :cond_1f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1100
    const-string v1, "android.intent.action.PALM_TOUCH_TUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1101
    const-string v1, "PalmMotionTest"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1102
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1103
    const-string v0, "SMotionGuideHub"

    const-string v1, "MotionTutorialSettings Tutorial Palm touch to mute/pause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1104
    :cond_20
    const-string v0, "tap_and_twist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1106
    const-string v0, "camera_short_cut"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1108
    const-string v1, "android.camerashortcut.CAMERASHORTCUTTUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1109
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1110
    :cond_21
    const-string v0, "peek_view_albums_list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1111
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1113
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1116
    :cond_22
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1117
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1118
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1119
    const-string v1, "MotionTest"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1120
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1121
    :cond_23
    const-string v0, "peek_chapter_preview"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1122
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1123
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1124
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1126
    :cond_24
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "video_help"

    const-string v2, "raw"

    const-string v3, "com.samsung.helpplugin"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1127
    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    .line 1128
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.START_HELP_VIDEO_MOTION_PEEK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://com.samsung.helpplugin/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "video/mp4"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1130
    invoke-virtual {p0, v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1132
    :cond_25
    const-string v0, "SMotionGuideHub"

    const-string v1, "The Video resource not downloaded yet"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1136
    :cond_26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.START_HELP_VIDEO_MOTION_PEEK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1137
    const-string v1, "file:///system/media/video/video_help.mp4"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1138
    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1140
    :cond_27
    const-string v0, "arc_motion_quick_glance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1141
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1143
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1146
    :cond_28
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1147
    const-string v1, "samsung.pickuptutorial.MOTIONGLANCEVIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1148
    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1149
    :cond_29
    const-string v0, "arc_motion_music_playback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1150
    invoke-static {}, Lcom/android/settings/Utils;->isHelpHubDownloadableSupported()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.samsung.helpplugin"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1152
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->requestDownloadingResource(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1155
    :cond_2a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1156
    const-string v1, "android.intent.action.ROCKING_MOTION_TUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1157
    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private startTurnOverTryActually(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1161
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1162
    const-string v1, "UseRing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1163
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1164
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.callsettings.OverturnTutorialIncallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1168
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivity(Landroid/content/Intent;)V

    .line 1169
    return-void

    .line 1166
    :cond_0
    const-string v1, "com.sec.android.app.clockpackage"

    const-string v2, "com.sec.android.app.clockpackage.alarm.OverturnTutorialAlarmScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public allDialogDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1265
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1267
    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDialog:Landroid/app/AlertDialog;

    .line 1269
    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1270
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1271
    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 1273
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFolderDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1274
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFolderDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1275
    iput-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFolderDialog:Landroid/app/AlertDialog;

    .line 1277
    :cond_2
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 417
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion2013/SMotionGuideHub;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 418
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04015c

    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 419
    .local v1, guideView:Landroid/view/View;
    const v4, 0x7f0b03bb

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMessageView:Landroid/widget/TextView;

    .line 420
    const v4, 0x7f0b03ba

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mImageView:Landroid/widget/ImageView;

    .line 421
    const v4, 0x7f0b00b1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 422
    .local v3, tryBtn:Landroid/widget/Button;
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mTryBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    const-string v4, "arc_motion_ripple_effect"

    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 425
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 427
    :cond_0
    const-string v4, "arc_motion_music_playback"

    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 428
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 434
    :cond_1
    const v4, 0x7f0b03bc

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSettingBtn:Landroid/widget/Button;

    .line 435
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSettingBtn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    iget-boolean v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasSensitivity:Z

    if-eqz v4, :cond_2

    .line 437
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSettingBtn:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 439
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mListView:Landroid/widget/ListView;

    .line 440
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 442
    iget-boolean v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasListView:Z

    if-eqz v4, :cond_3

    .line 443
    new-instance v4, Lcom/android/settings/motion2013/SMotionGuideHub$3;

    invoke-direct {v4, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$3;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 467
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/android/settings/motion2013/SMotionGuideHub$4;

    invoke-direct {v5, p0}, Lcom/android/settings/motion2013/SMotionGuideHub$4;-><init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 478
    :cond_3
    const-string v4, "default"

    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 479
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMessageView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideContent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    :cond_4
    iget v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_5

    .line 482
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mImageView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mGuideAniResID:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 483
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 484
    .local v0, ani:Landroid/graphics/drawable/AnimationDrawable;
    if-eqz v0, :cond_5

    .line 485
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 488
    .end local v0           #ani:Landroid/graphics/drawable/AnimationDrawable;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1, v7, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 489
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 490
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 581
    const-string v0, "default"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 582
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    if-eqz p2, :cond_6

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 586
    const-string v0, "air_motion_glance_view"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/SMotionGuideHub;->sendGlanceViewCheck(Z)V

    .line 588
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 589
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 590
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 591
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 592
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 604
    :cond_0
    const-string v0, "air_motion_turn"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirBrowseChanged(Z)V

    .line 606
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 607
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 608
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 609
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 610
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 613
    :cond_1
    const-string v0, "air_motion_item_move"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 614
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirMoveChanged(Z)V

    .line 616
    :cond_2
    const-string v0, "air_motion_clip"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 617
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirPinChanged(Z)V

    .line 619
    :cond_3
    const-string v0, "air_motion_call_accept"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 620
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/SMotionGuideHub;->broadcastAirCallAcceptChanged(Z)V

    .line 622
    :cond_4
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 623
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSettingBtn:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 624
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 626
    :cond_5
    return-void

    .line 582
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "config"

    .prologue
    const/4 v2, 0x1

    .line 1336
    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    .line 1337
    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    if-eqz v0, :cond_1

    .line 1338
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v2, :cond_0

    .line 1340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    .line 1341
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFolderDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1342
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFolderDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFolderDialog:Landroid/app/AlertDialog;

    .line 1344
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->startTryActually(Ljava/lang/String;)V

    .line 1355
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1356
    return-void

    .line 1349
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1351
    iput-boolean v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/16 v5, 0x10

    const/4 v7, -0x2

    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 203
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    .line 207
    const-string v3, "type"

    const-string v4, "default"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    .line 208
    const-string v3, "hasSensitivity"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasSensitivity:Z

    .line 209
    const-string v3, "hasAdvancedSettings"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasAdvancedSettings:Z

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSupportFolderType:Z

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 213
    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 214
    iput-boolean v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    .line 218
    :goto_1
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->setArgument(Ljava/lang/String;)V

    .line 219
    const v0, 0x7f07007b

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->addPreferencesFromResource(I)V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    .line 222
    new-instance v0, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    .line 223
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f001b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 226
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2, v2, v0, v2}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v7, v7, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 233
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 249
    const-string v0, "advanced_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    .line 250
    const-string v0, "advanced_setting"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    .line 251
    const-string v0, "advanced_air_call_accept_auto_start_speaker"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    .line 252
    iget-boolean v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mHasAdvancedSettings:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 254
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 255
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 256
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 377
    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 378
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSettingValue:I

    if-eq v0, v6, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 381
    const-string v3, "extra_parent_preference_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    sget v3, Lcom/android/settings/motion2013/SMotionGuideHub;->mSettingValue:I

    if-ne v3, v1, :cond_16

    .line 383
    :goto_3
    const-string v2, "advanced_air_call_accept_auto_start_speaker"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 384
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 390
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 211
    goto/16 :goto_0

    .line 216
    :cond_5
    iput-boolean v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mFlipCloseStatus:Z

    goto/16 :goto_1

    .line 257
    :cond_6
    const-string v0, "air_call_accept"

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 260
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 261
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    const v3, 0x7f090e35

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto :goto_2

    .line 263
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 264
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 265
    const-string v3, "quick_glance"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 266
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    const v4, 0x7f090e0b

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 267
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 268
    const v0, 0x7f070078

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->addPreferencesFromResource(I)V

    .line 269
    const-string v0, "time_and_date"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mTimeAndDate:Landroid/preference/CheckBoxPreference;

    .line 270
    const-string v0, "battery"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    .line 271
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    .line 272
    const-string v0, "missed_call"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    .line 273
    const-string v0, "unread_message"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    .line 274
    const-string v0, "current_music"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    .line 275
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mTimeAndDate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 276
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mTimeAndDate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 278
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSettingValue:I

    if-eq v0, v6, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 282
    const-string v3, "extra_parent_preference_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 283
    sget v0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSettingValue:I

    if-ne v0, v1, :cond_8

    move v0, v1

    .line 284
    :goto_4
    const-string v4, "battery"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 285
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_8
    move v0, v2

    .line 283
    goto :goto_4

    .line 287
    :cond_9
    const-string v4, "notification"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 288
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 290
    :cond_a
    const-string v4, "missed_call"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 291
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 293
    :cond_b
    const-string v4, "unread_message"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 294
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 296
    :cond_c
    const-string v4, "current_music"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 297
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 316
    :cond_d
    const-string v3, "air_turn"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 317
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedCategory:Landroid/preference/PreferenceCategory;

    const v4, 0x7f090e22

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 318
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 319
    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->addPreferencesFromResource(I)V

    .line 320
    const-string v0, "single_photo_view"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    .line 321
    const-string v0, "internet_window"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    .line 322
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 325
    :cond_e
    const-string v0, "now_playing_on_music"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    .line 326
    const-string v0, "bgm_on_lock_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    .line 327
    const-string v0, "note_page_view"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    .line 328
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_f

    .line 329
    const-string v0, "com.samsung.android.snote"

    .line 332
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_10

    .line 335
    const-string v0, "SMotionGuideHub"

    const-string v3, "S note is Installed."

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f090e31

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :cond_f
    :goto_5
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 350
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSettingValue:I

    if-eq v0, v6, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 353
    const-string v3, "extra_parent_preference_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 354
    sget v0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSettingValue:I

    if-ne v0, v1, :cond_11

    move v0, v1

    .line 355
    :goto_6
    const-string v4, "single_photo_view"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 356
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 338
    :cond_10
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f090e2f

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 340
    :catch_0
    move-exception v0

    .line 341
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 342
    const-string v0, "SMotionGuideHub"

    const-string v3, "S note is NOT Installed"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f090e2f

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    goto :goto_5

    :cond_11
    move v0, v2

    .line 354
    goto :goto_6

    .line 358
    :cond_12
    const-string v4, "internet_window"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 359
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 361
    :cond_13
    const-string v4, "now_playing_on_music"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 362
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 363
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 364
    :cond_14
    const-string v4, "bgm_on_lock_screen"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 365
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 367
    :cond_15
    const-string v4, "note_page_view"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 368
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 369
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion2013/SMotionGuideHub;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_16
    move v1, v2

    .line 382
    goto/16 :goto_3
.end method

.method public onPause()V
    .locals 4

    .prologue
    const v3, 0x7f090d29

    const/4 v2, 0x0

    .line 555
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 556
    const-string v0, "air_scroll"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->isAllAirScrollOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 559
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 560
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    const-string v0, "air_turn"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->isAllAirTurnOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_turn"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 565
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_turn"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 566
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 635
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1

    .line 636
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->startAdvancedSettings(Ljava/lang/String;)V

    .line 696
    :cond_0
    :goto_0
    return v1

    .line 638
    :cond_1
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    .line 639
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_call_accept_auto_start_speaker"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 641
    :cond_3
    if-eqz p2, :cond_0

    .line 643
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    .line 644
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_battery_charging_info"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 646
    :cond_5
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    .line 647
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_notification"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 649
    :cond_7
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_9

    .line 650
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_missed_call"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v1

    :cond_8
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 652
    :cond_9
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_b

    .line 653
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_new_message"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    move v0, v1

    :cond_a
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 655
    :cond_b
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_d

    .line 656
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "glance_view_now_playing_music"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c

    move v0, v1

    :cond_c
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 672
    :cond_d
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_10

    .line 673
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_turn_single_photo_view"

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v1

    :goto_1
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 683
    :cond_e
    :goto_2
    const-string v2, "air_scroll"

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 684
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->isAllAirScrollOptionDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 685
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    :cond_f
    move v2, v0

    .line 673
    goto :goto_1

    .line 674
    :cond_10
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_12

    .line 675
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_turn_internet_window"

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v1

    :goto_3
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_11
    move v2, v0

    goto :goto_3

    .line 676
    :cond_12
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_14

    .line 677
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_turn_now_playing_on_music"

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v1

    :goto_4
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_13
    move v2, v0

    goto :goto_4

    .line 678
    :cond_14
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_16

    .line 679
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_turn_bgm_on_lock_screen"

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v1

    :goto_5
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_15
    move v2, v0

    goto :goto_5

    .line 680
    :cond_16
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_e

    .line 681
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_motion_turn_note_page_view"

    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_17

    move v2, v1

    :goto_6
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_17
    move v2, v0

    goto :goto_6

    .line 689
    :cond_18
    const-string v2, "air_turn"

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 690
    invoke-direct {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->isAllAirTurnOptionDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 691
    iget-object v2, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    .line 696
    :cond_19
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 493
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 495
    const-string v0, "default"

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 498
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 500
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 501
    :goto_0
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 502
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSetting:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 503
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAdvancedSettingBtn:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 504
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 506
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mAirCallAcceptAutoStartSpeaker:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "air_motion_call_accept_auto_start_speaker"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 507
    const-string v3, "quick_glance"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 508
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    .line 509
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "glance_view_battery_charging_info"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 510
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "glance_view_notification"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 511
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "glance_view_missed_call"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    :goto_4
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 512
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "glance_view_new_message"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    move v3, v1

    :goto_5
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 513
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "glance_view_now_playing_music"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_8

    :goto_6
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 514
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 515
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 516
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMissedCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 517
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mUnreadMessage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 518
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mCurrentMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 552
    :cond_1
    :goto_7
    return-void

    :cond_2
    move v0, v2

    .line 500
    goto/16 :goto_0

    :cond_3
    move v3, v2

    .line 506
    goto :goto_1

    :cond_4
    move v3, v2

    .line 509
    goto :goto_2

    :cond_5
    move v3, v2

    .line 510
    goto :goto_3

    :cond_6
    move v3, v2

    .line 511
    goto :goto_4

    :cond_7
    move v3, v2

    .line 512
    goto :goto_5

    :cond_8
    move v1, v2

    .line 513
    goto :goto_6

    .line 534
    :cond_9
    const-string v3, "air_turn"

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 535
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    .line 537
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_single_photo_view"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_a

    move v3, v1

    :goto_8
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 538
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_internet_window"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_b

    move v3, v1

    :goto_9
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 539
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_now_playing_on_music"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_c

    move v3, v1

    :goto_a
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 540
    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_bgm_on_lock_screen"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_d

    move v3, v1

    :goto_b
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 541
    iget-object v3, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "air_motion_turn_note_page_view"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_e

    :goto_c
    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 542
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mSinglePhotoView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 543
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mInternetWindow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 544
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNowPlayingOnMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 545
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mBGMOnLockScreen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 546
    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mNotePageView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_7

    :cond_a
    move v3, v2

    .line 537
    goto :goto_8

    :cond_b
    move v3, v2

    .line 538
    goto :goto_9

    :cond_c
    move v3, v2

    .line 539
    goto :goto_a

    :cond_d
    move v3, v2

    .line 540
    goto :goto_b

    :cond_e
    move v1, v2

    .line 541
    goto :goto_c
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 573
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 574
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 576
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 578
    :cond_0
    return-void
.end method

.method public startAdvancedSettings(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const v3, 0x7f090df2

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 887
    const-string v0, "quick_glance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 888
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 889
    const-class v1, Lcom/android/settings/motion2013/QuickGlanceAdvancedSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 904
    :cond_0
    :goto_0
    return-void

    .line 890
    :cond_1
    const-string v0, "air_scroll"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 891
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 892
    const-class v1, Lcom/android/settings/motion2013/AirScrollAdvancedSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 893
    :cond_2
    const-string v0, "air_turn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 894
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 895
    const-class v1, Lcom/android/settings/motion2013/AirTurnAdvancedSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 896
    :cond_3
    const-string v0, "pan"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 897
    invoke-virtual {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->startSensitivityTest(Ljava/lang/String;)V

    goto :goto_0

    .line 898
    :cond_4
    const-string v0, "pan_to_browse_image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 899
    invoke-virtual {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->startSensitivityTest(Ljava/lang/String;)V

    goto :goto_0

    .line 900
    :cond_5
    const-string v0, "tilt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    invoke-virtual {p0, p1}, Lcom/android/settings/motion2013/SMotionGuideHub;->startSensitivityTest(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startSensitivityTest(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0xc

    const/4 v2, 0x5

    .line 907
    const-string v0, "tilt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 908
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_zooming_sensitivity"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 909
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 910
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 911
    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 912
    const-string v2, "MotionTest"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 913
    const-string v2, "Sensitivity"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 914
    invoke-virtual {p0, v1, v4}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    .line 935
    :cond_0
    :goto_0
    return-void

    .line 915
    :cond_1
    const-string v0, "tilt_to_scroll_list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 917
    const-string v0, "SMotionGuideHub"

    const-string v1, "MOTION_TILT_TO_SCROLL_LIST"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 919
    :cond_2
    const-string v0, "pan"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 920
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_panning_sensitivity"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 921
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 922
    const-string v2, "com.sec.android.motions.settings.panningtutorial"

    const-string v3, "com.sec.android.motions.settings.panningtutorial.PanningTryActually"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 923
    const-string v2, "Preview"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 924
    const-string v2, "Sensitivity"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 925
    invoke-virtual {p0, v1, v4}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 926
    :cond_3
    const-string v0, "pan_to_browse_image"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    invoke-virtual {p0}, Lcom/android/settings/motion2013/SMotionGuideHub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_pan_to_browse_image_sensitivity"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 928
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 929
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 930
    const-string v2, "com.sec.android.gallery3d"

    const-string v3, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 931
    const-string v2, "MotionTest"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 932
    const-string v2, "Sensitivity"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 933
    invoke-virtual {p0, v1, v4}, Lcom/android/settings/motion2013/SMotionGuideHub;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
