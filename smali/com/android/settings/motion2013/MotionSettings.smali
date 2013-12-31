.class public Lcom/android/settings/motion2013/MotionSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MotionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private isGoIntoQuideHub:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mArcMotionMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

.field private mArcMotionQuickGlance:Landroid/preference/SwitchPreferenceScreen;

.field private mArcMotionRippleEffect:Landroid/preference/SwitchPreferenceScreen;

.field private mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

.field private final mMotionObserver:Landroid/database/ContentObserver;

.field private mMotionUnlockDialog:Landroid/app/AlertDialog;

.field private mPan:Landroid/preference/SwitchPreferenceScreen;

.field private mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

.field private mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

.field private mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

.field private mPickUp:Landroid/preference/SwitchPreferenceScreen;

.field private mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;

.field private mShake:Landroid/preference/SwitchPreferenceScreen;

.field private mSupportBrowser:Z

.field private mTilt:Landroid/preference/SwitchPreferenceScreen;

.field private mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

.field private mTurnOver:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/motion2013/MotionSettings;->isGoIntoQuideHub:Z

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 99
    new-instance v0, Lcom/android/settings/motion2013/MotionSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2013/MotionSettings$1;-><init>(Lcom/android/settings/motion2013/MotionSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mMotionObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion2013/MotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion2013/MotionSettings;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private broadcastArcMotionQuickGlanceChanged(Z)V
    .locals 4
    .parameter "isEnable"

    .prologue
    .line 593
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.ARC_MOTION_QUICK_GLANCE_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 594
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 595
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 596
    const-string v1, "MotionsSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastArcMotionQuickGlanceChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    return-void
.end method

.method public static isAllOptionDisabled(Landroid/content/ContentResolver;Landroid/content/Context;)Z
    .locals 21
    .parameter "cr"
    .parameter "c"

    .prologue
    .line 518
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    .line 519
    .local v8, isTablet:Z
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v9

    .line 521
    .local v9, isVoiceCapable:Z
    const-string v19, "motion_zooming"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 523
    .local v17, tiltZoom:I
    const/16 v16, 0x0

    .line 525
    .local v16, tiltScroll:I
    const/4 v11, 0x0

    .line 527
    .local v11, panMove:I
    const-string v19, "motion_pan_to_browse_image"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 529
    .local v10, panBrowse:I
    const/4 v14, 0x0

    .line 531
    .local v14, shake:I
    const/4 v7, 0x0

    .line 533
    .local v7, doubleTap:I
    if-eqz v9, :cond_0

    const-string v19, "motion_pick_up"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 535
    .local v15, smartAlert:I
    :goto_0
    if-nez v8, :cond_1

    const-string v19, "motion_pick_up_to_call_out"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 537
    .local v6, directCall:I
    :goto_1
    if-nez v8, :cond_2

    const-string v19, "motion_overturn"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 539
    .local v18, turnover:I
    :goto_2
    const/4 v5, 0x0

    .line 541
    .local v5, ArcMotionRippleEffect:I
    const/4 v4, 0x0

    .line 543
    .local v4, ArcMotionQuickGlance:I
    const/4 v3, 0x0

    .line 545
    .local v3, ArcMotionMusicPlayback:I
    const/4 v13, 0x0

    .line 547
    .local v13, peekViewAlbumsList:I
    const/4 v12, 0x0

    .line 550
    .local v12, peekChapterPreview:I
    or-int v19, v17, v16

    or-int v19, v19, v11

    or-int v19, v19, v10

    or-int v19, v19, v14

    or-int v19, v19, v7

    or-int v19, v19, v15

    or-int v19, v19, v6

    or-int v19, v19, v18

    or-int v19, v19, v5

    or-int v19, v19, v4

    or-int v19, v19, v3

    or-int v19, v19, v13

    or-int v19, v19, v12

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    const/16 v19, 0x1

    :goto_3
    return v19

    .line 533
    .end local v3           #ArcMotionMusicPlayback:I
    .end local v4           #ArcMotionQuickGlance:I
    .end local v5           #ArcMotionRippleEffect:I
    .end local v6           #directCall:I
    .end local v12           #peekChapterPreview:I
    .end local v13           #peekViewAlbumsList:I
    .end local v15           #smartAlert:I
    .end local v18           #turnover:I
    :cond_0
    const/4 v15, 0x0

    goto :goto_0

    .line 535
    .restart local v15       #smartAlert:I
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 537
    .restart local v6       #directCall:I
    :cond_2
    const/16 v18, 0x0

    goto :goto_2

    .line 550
    .restart local v3       #ArcMotionMusicPlayback:I
    .restart local v4       #ArcMotionQuickGlance:I
    .restart local v5       #ArcMotionRippleEffect:I
    .restart local v12       #peekChapterPreview:I
    .restart local v13       #peekViewAlbumsList:I
    .restart local v18       #turnover:I
    :cond_3
    const/16 v19, 0x0

    goto :goto_3
.end method


# virtual methods
.method public isAllMotionDisabled()Z
    .locals 21

    .prologue
    .line 555
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 556
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    .line 557
    .local v7, isTablet:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v8

    .line 559
    .local v8, isVoiceCapable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "motion_zooming"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 561
    .local v16, tiltZoom:I
    const/4 v15, 0x0

    .line 563
    .local v15, tiltScroll:I
    const/4 v10, 0x0

    .line 565
    .local v10, panMove:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "motion_pan_to_browse_image"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 567
    .local v9, panBrowse:I
    const/4 v13, 0x0

    .line 569
    .local v13, shake:I
    const/4 v6, 0x0

    .line 571
    .local v6, doubleTap:I
    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "motion_pick_up"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 573
    .local v14, smartAlert:I
    :goto_0
    if-nez v7, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "motion_pick_up_to_call_out"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 575
    .local v5, directCall:I
    :goto_1
    if-nez v7, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "motion_overturn"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 577
    .local v17, turnover:I
    :goto_2
    const/4 v4, 0x0

    .line 579
    .local v4, ArcMotionRippleEffect:I
    const/4 v3, 0x0

    .line 581
    .local v3, ArcMotionQuickGlance:I
    const/4 v2, 0x0

    .line 583
    .local v2, ArcMotionMusicPlayback:I
    const/4 v12, 0x0

    .line 585
    .local v12, peekViewAlbumsList:I
    const/4 v11, 0x0

    .line 588
    .local v11, peekChapterPreview:I
    or-int v18, v16, v15

    or-int v18, v18, v10

    or-int v18, v18, v9

    or-int v18, v18, v13

    or-int v18, v18, v6

    or-int v18, v18, v14

    or-int v18, v18, v5

    or-int v18, v18, v17

    or-int v18, v18, v4

    or-int v18, v18, v3

    or-int v18, v18, v2

    or-int v18, v18, v12

    or-int v18, v18, v11

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    const/16 v18, 0x1

    :goto_3
    return v18

    .line 571
    .end local v2           #ArcMotionMusicPlayback:I
    .end local v3           #ArcMotionQuickGlance:I
    .end local v4           #ArcMotionRippleEffect:I
    .end local v5           #directCall:I
    .end local v11           #peekChapterPreview:I
    .end local v12           #peekViewAlbumsList:I
    .end local v14           #smartAlert:I
    .end local v17           #turnover:I
    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .line 573
    .restart local v14       #smartAlert:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 575
    .restart local v5       #directCall:I
    :cond_2
    const/16 v17, 0x0

    goto :goto_2

    .line 588
    .restart local v2       #ArcMotionMusicPlayback:I
    .restart local v3       #ArcMotionQuickGlance:I
    .restart local v4       #ArcMotionRippleEffect:I
    .restart local v11       #peekChapterPreview:I
    .restart local v12       #peekViewAlbumsList:I
    .restart local v17       #turnover:I
    :cond_3
    const/16 v18, 0x0

    goto :goto_3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 280
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/motion2013/MotionSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2013/MotionSettings$2;-><init>(Lcom/android/settings/motion2013/MotionSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 304
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 438
    if-eqz p2, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 446
    :goto_0
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 447
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 448
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 453
    :goto_1
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 454
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 455
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 456
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 457
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 458
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 459
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionRippleEffect:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 460
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 461
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 462
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 463
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 464
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/MotionSettings;->broadcastArcMotionQuickGlanceChanged(Z)V

    .line 465
    return-void

    .line 442
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    goto :goto_0

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .parameter "savedInstanceState"

    .prologue
    .line 109
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->setHasOptionsMenu(Z)V

    .line 112
    const v14, 0x7f07005b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->addPreferencesFromResource(I)V

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    .line 115
    new-instance v14, Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v14, v15}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 116
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 118
    const-string v14, "tilt"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    .line 119
    const-string v14, "tilt_to_scroll_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    .line 120
    const-string v14, "pan"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    .line 121
    const-string v14, "pan_to_browse_image"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    .line 122
    const-string v14, "shake"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    .line 123
    const-string v14, "double_tap"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    .line 124
    const-string v14, "pick_up"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    .line 125
    const-string v14, "pick_up_to_call_out"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    .line 126
    const-string v14, "turn_over"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    .line 127
    const-string v14, "arc_motion_ripple_effect"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionRippleEffect:Landroid/preference/SwitchPreferenceScreen;

    .line 128
    const-string v14, "arc_motion_quick_glance"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    .line 129
    const-string v14, "arc_motion_music_playback"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

    .line 130
    const-string v14, "peek_view_albums_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

    .line 131
    const-string v14, "peek_chapter_preview"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

    .line 134
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionRippleEffect:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/MotionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 151
    .local v5, ps:Landroid/preference/PreferenceScreen;
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    .line 153
    .local v2, isTablet:Z
    const/4 v8, 0x0

    .line 159
    .local v8, removeTiltCategory:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 160
    add-int/lit8 v8, v8, 0x1

    .line 162
    const/4 v14, 0x1

    if-le v8, v14, :cond_0

    .line 163
    const-string v14, "tilt_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceCategory;

    .line 164
    .local v11, tiltCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual {v5, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 167
    .end local v11           #tiltCategory:Landroid/preference/PreferenceCategory;
    :cond_0
    const/4 v6, 0x0

    .line 170
    .local v6, removePanCategory:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 171
    add-int/lit8 v6, v6, 0x1

    .line 177
    const/4 v14, 0x1

    if-le v6, v14, :cond_1

    .line 178
    const-string v14, "pan_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 179
    .local v3, panCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 183
    .end local v3           #panCategory:Landroid/preference/PreferenceCategory;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 184
    const-string v14, "shake_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    .line 185
    .local v9, shakeCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 192
    const/4 v7, 0x0

    .line 193
    .local v7, removePickupCategory:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 194
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 195
    add-int/lit8 v7, v7, 0x1

    .line 197
    :cond_2
    if-eqz v2, :cond_3

    .line 198
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 199
    add-int/lit8 v7, v7, 0x1

    .line 201
    :cond_3
    const/4 v14, 0x1

    if-le v7, v14, :cond_4

    .line 202
    const-string v14, "pick_up_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 203
    .local v4, pickupCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 206
    .end local v4           #pickupCategory:Landroid/preference/PreferenceCategory;
    :cond_4
    if-eqz v2, :cond_5

    .line 207
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 208
    const-string v14, "turn_over_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceCategory;

    .line 209
    .local v12, turnoverCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual {v5, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 213
    .end local v12           #turnoverCategory:Landroid/preference/PreferenceCategory;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionRippleEffect:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 214
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 215
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 219
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 222
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "com.android.browser"

    invoke-static {v14, v15}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mSupportBrowser:Z

    .line 233
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mSupportBrowser:Z

    if-nez v14, :cond_6

    .line 234
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    const v15, 0x7f090d3c

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 238
    :cond_6
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 239
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v14, :cond_7

    sget v14, Lcom/android/settings/motion2013/MotionSettings;->mSettingValue:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "master_motion"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_7

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/MotionSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 242
    .local v1, extra_bundle:Landroid/os/Bundle;
    const-string v14, "extra_parent_preference_key"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 243
    .local v10, targetKey:Ljava/lang/String;
    sget v14, Lcom/android/settings/motion2013/MotionSettings;->mSettingValue:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    const/4 v13, 0x1

    .line 244
    .local v13, value:Z
    :goto_0
    const-string v14, "tilt"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 245
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 246
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 276
    .end local v1           #extra_bundle:Landroid/os/Bundle;
    .end local v10           #targetKey:Ljava/lang/String;
    .end local v13           #value:Z
    :cond_7
    :goto_1
    return-void

    .line 243
    .restart local v1       #extra_bundle:Landroid/os/Bundle;
    .restart local v10       #targetKey:Ljava/lang/String;
    :cond_8
    const/4 v13, 0x0

    goto :goto_0

    .line 247
    .restart local v13       #value:Z
    :cond_9
    const-string v14, "tilt_to_scroll_list"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 248
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 249
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 250
    :cond_a
    const-string v14, "pan"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 251
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 252
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 253
    :cond_b
    const-string v14, "pan_to_browse_image"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 254
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 255
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 256
    :cond_c
    const-string v14, "shake"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 257
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 258
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 259
    :cond_d
    const-string v14, "double_tap"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 260
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 261
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 262
    :cond_e
    const-string v14, "pick_up"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 263
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 264
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 265
    :cond_f
    const-string v14, "pick_up_to_call_out"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 266
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 267
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 268
    :cond_10
    const-string v14, "turn_over"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 269
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 270
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 414
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    const/4 v0, 0x1

    const v1, 0x7f090b11

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020196

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 421
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 425
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 432
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 427
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 428
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "motion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 430
    const/4 v1, 0x1

    goto :goto_0

    .line 425
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

    .line 388
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 390
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/MotionSettings;->mMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 392
    iget-boolean v0, p0, Lcom/android/settings/motion2013/MotionSettings;->isGoIntoQuideHub:Z

    if-nez v0, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->isAllMotionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090d29

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 395
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    .line 397
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 398
    invoke-direct {p0, v2}, Lcom/android/settings/motion2013/MotionSettings;->broadcastArcMotionQuickGlanceChanged(Z)V

    .line 401
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 474
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, key:Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 476
    .local v1, value:I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_3

    .line 477
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_zooming"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 507
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->isAllMotionDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    .line 508
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "master_motion"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 509
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    .line 510
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 511
    invoke-direct {p0, v3}, Lcom/android/settings/motion2013/MotionSettings;->broadcastArcMotionQuickGlanceChanged(Z)V

    .line 514
    :cond_1
    return v2

    .end local v1           #value:I
    :cond_2
    move v1, v3

    .line 475
    goto :goto_0

    .line 478
    .restart local v1       #value:I
    :cond_3
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_4

    .line 479
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_tilt_to_list_scrolling"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 480
    :cond_4
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_5

    .line 481
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_panning"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 482
    :cond_5
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_6

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_pan_to_browse_image"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 484
    :cond_6
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_7

    .line 485
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_shake"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 486
    :cond_7
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_8

    .line 487
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_double_tap"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 488
    :cond_8
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_9

    .line 489
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_pick_up"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 490
    :cond_9
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_a

    .line 491
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_pick_up_to_call_out"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 492
    :cond_a
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_b

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_overturn"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 494
    :cond_b
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionRippleEffect:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_c

    .line 495
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "arc_motion_ripple_effect"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 496
    :cond_c
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_e

    .line 497
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "arc_motion_quick_glance"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 498
    if-ne v1, v2, :cond_d

    move v4, v2

    :goto_2
    invoke-direct {p0, v4}, Lcom/android/settings/motion2013/MotionSettings;->broadcastArcMotionQuickGlanceChanged(Z)V

    goto/16 :goto_1

    :cond_d
    move v4, v3

    goto :goto_2

    .line 499
    :cond_e
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_f

    .line 500
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "arc_motion_music_playback"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 501
    :cond_f
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_10

    .line 502
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_peek_view_albums_list"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 503
    :cond_10
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_peek_chapter_preview"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/motion2013/MotionSettings;->isGoIntoQuideHub:Z

    .line 470
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/16 v9, 0x10

    const/4 v10, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 309
    iget-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 310
    .local v3, super_mOpenDetailMenu:Z
    iput-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 313
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 314
    iput-boolean v5, p0, Lcom/android/settings/motion2013/MotionSettings;->isGoIntoQuideHub:Z

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "master_motion"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/motion2013/MotionSettings;->mMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7, v4, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 319
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    instance-of v6, v6, Landroid/preference/PreferenceActivity;

    if-eqz v6, :cond_1

    .line 320
    iget-object v2, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 321
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v6

    if-nez v6, :cond_1

    .line 322
    :cond_0
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f001b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 324
    .local v1, padding:I
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 325
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 327
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/16 v9, 0x15

    invoke-direct {v8, v10, v10, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v7, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 331
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarLayout:Landroid/view/View;

    .line 335
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v6, :cond_2

    .line 336
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 341
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 343
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "master_motion"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    move v0, v4

    .line 344
    .local v0, motionEngineState:Z
    :goto_0
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 346
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 347
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "easy_mode_switch"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_4

    .line 349
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v5}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 353
    :goto_1
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 354
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 355
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 356
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 357
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 358
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 359
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionRippleEffect:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 360
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 361
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 362
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 363
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 365
    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_zooming"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v6, v4

    :goto_2
    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 366
    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_tilt_to_list_scrolling"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_6

    move v6, v4

    :goto_3
    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 367
    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_panning"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_7

    move v6, v4

    :goto_4
    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 368
    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_pan_to_browse_image"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_8

    move v6, v4

    :goto_5
    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 369
    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_shake"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_9

    move v6, v4

    :goto_6
    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 370
    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_double_tap"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_a

    move v6, v4

    :goto_7
    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 371
    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_pick_up"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_b

    move v6, v4

    :goto_8
    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 372
    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_pick_up_to_call_out"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_c

    move v6, v4

    :goto_9
    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 373
    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_overturn"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_d

    move v6, v4

    :goto_a
    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 374
    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionRippleEffect:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "arc_motion_ripple_effect"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_e

    move v6, v4

    :goto_b
    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 375
    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "arc_motion_quick_glance"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_f

    move v6, v4

    :goto_c
    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 376
    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "arc_motion_music_playback"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_10

    move v6, v4

    :goto_d
    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 377
    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_peek_view_albums_list"

    invoke-static {v6, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_11

    move v6, v4

    :goto_e
    invoke-virtual {v7, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 378
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "motion_peek_chapter_preview"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_12

    :goto_f
    invoke-virtual {v6, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 381
    iput-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 382
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 384
    return-void

    .end local v0           #motionEngineState:Z
    :cond_3
    move v0, v5

    .line 343
    goto/16 :goto_0

    .line 351
    .restart local v0       #motionEngineState:Z
    :cond_4
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_5
    move v6, v5

    .line 365
    goto/16 :goto_2

    :cond_6
    move v6, v5

    .line 366
    goto/16 :goto_3

    :cond_7
    move v6, v5

    .line 367
    goto/16 :goto_4

    :cond_8
    move v6, v5

    .line 368
    goto/16 :goto_5

    :cond_9
    move v6, v5

    .line 369
    goto/16 :goto_6

    :cond_a
    move v6, v5

    .line 370
    goto/16 :goto_7

    :cond_b
    move v6, v5

    .line 371
    goto/16 :goto_8

    :cond_c
    move v6, v5

    .line 372
    goto/16 :goto_9

    :cond_d
    move v6, v5

    .line 373
    goto :goto_a

    :cond_e
    move v6, v5

    .line 374
    goto :goto_b

    :cond_f
    move v6, v5

    .line 375
    goto :goto_c

    :cond_10
    move v6, v5

    .line 376
    goto :goto_d

    :cond_11
    move v6, v5

    .line 377
    goto :goto_e

    :cond_12
    move v4, v5

    .line 378
    goto :goto_f
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 405
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 406
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 410
    :cond_0
    return-void
.end method
