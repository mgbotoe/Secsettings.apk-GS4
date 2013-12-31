.class public final Lcom/android/settings/guide/GuideModeHelper;
.super Ljava/lang/Object;
.source "GuideModeHelper.java"


# static fields
.field private static mIsTablet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/guide/GuideModeHelper;->mIsTablet:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/android/settings/helpdialog/TwHelpDialog;)V
    .locals 17
    .parameter "activity"
    .parameter "helpDialog"

    .prologue
    .line 310
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v9

    .line 318
    .local v9, focus:Landroid/view/View;
    instance-of v1, v9, Landroid/widget/ListView;

    if-eqz v1, :cond_2

    .line 319
    check-cast v9, Landroid/widget/ListView;

    .end local v9           #focus:Landroid/view/View;
    invoke-virtual {v9}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v9

    .line 322
    .restart local v9       #focus:Landroid/view/View;
    :cond_2
    if-eqz v9, :cond_0

    .line 323
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 324
    .local v14, rect:Landroid/graphics/Rect;
    const/4 v1, 0x2

    new-array v10, v1, [I

    .line 326
    .local v10, location:[I
    invoke-virtual {v9, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 327
    const/4 v1, 0x0

    aget v1, v10, v1

    const/4 v2, 0x1

    aget v2, v10, v2

    const/4 v3, 0x0

    aget v3, v10, v3

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v10, v4

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v14, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 330
    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    iget v1, v14, Landroid/graphics/Rect;->left:I

    iget v2, v14, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    div-int/lit8 v15, v1, 0x2

    .line 332
    .local v15, x:I
    iget v1, v14, Landroid/graphics/Rect;->bottom:I

    iget v2, v14, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    div-int/lit8 v16, v1, 0x2

    .line 333
    .local v16, y:I
    const v1, 0x7f0b0004

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/settings/helpdialog/TwTouchPunchView;

    .line 334
    .local v12, punchView:Lcom/android/settings/helpdialog/TwTouchPunchView;
    const v1, 0x7f0b0005

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/settings/helpdialog/TwTouchPunchView;

    .line 337
    .local v13, punchView_land:Lcom/android/settings/helpdialog/TwTouchPunchView;
    const-wide/16 v1, 0x64

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    int-to-float v6, v15

    move/from16 v0, v16

    int-to-float v7, v0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 346
    .local v11, motionEvent:Landroid/view/MotionEvent;
    if-eqz v12, :cond_3

    .line 347
    invoke-virtual {v12, v11}, Lcom/android/settings/helpdialog/TwTouchPunchView;->processGlobalCoordinatesTouch(Landroid/view/MotionEvent;)V

    .line 349
    :cond_3
    if-eqz v13, :cond_4

    .line 350
    invoke-virtual {v13, v11}, Lcom/android/settings/helpdialog/TwTouchPunchView;->processGlobalCoordinatesTouch(Landroid/view/MotionEvent;)V

    .line 353
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/settings/helpdialog/TwHelpDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 354
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    .line 356
    const-wide/16 v1, 0x64

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    add-long/2addr v3, v5

    const/4 v5, 0x1

    int-to-float v6, v15

    move/from16 v0, v16

    int-to-float v7, v0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v11

    .line 365
    if-eqz v12, :cond_5

    .line 366
    invoke-virtual {v12, v11}, Lcom/android/settings/helpdialog/TwTouchPunchView;->processGlobalCoordinatesTouch(Landroid/view/MotionEvent;)V

    .line 368
    :cond_5
    if-eqz v13, :cond_6

    .line 369
    invoke-virtual {v13, v11}, Lcom/android/settings/helpdialog/TwTouchPunchView;->processGlobalCoordinatesTouch(Landroid/view/MotionEvent;)V

    .line 372
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/settings/helpdialog/TwHelpDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 373
    invoke-virtual {v11}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0
.end method

.method static getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .parameter "b"

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, result:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 95
    const-string v1, "settings:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const-string v1, "settings:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    const-string v1, "settings:guide_is_on"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    const-string v1, "settings:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 103
    :cond_0
    return-object v0
.end method

.method static getGuideModeFromIntent(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .parameter "savedInstanceState"
    .parameter "bundle"

    .prologue
    .line 74
    if-eqz p0, :cond_1

    const-string v1, "settings:guide_mode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, result:Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    .line 78
    invoke-static {p1}, Lcom/android/settings/guide/GuideModeHelper;->getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 81
    :cond_0
    return-object v0

    .line 74
    .end local v0           #result:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 467
    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/guide/GuideModeHelper;->mIsTablet:Z

    .line 468
    return-void
.end method

.method static isGuideCompleted(Landroid/os/Bundle;)Z
    .locals 2
    .parameter "b"

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, result:Z
    if-eqz p0, :cond_0

    .line 110
    const-string v1, "settings:guide_completed"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const-string v1, "settings:guide_completed"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 112
    const-string v1, "settings:guide_completed"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 116
    :cond_0
    return v0
.end method

.method static isGuideModeBluetooth(Ljava/lang/String;)Z
    .locals 2
    .parameter "mode"

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, result:Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    const-string v1, "bt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 160
    :cond_0
    return v0
.end method

.method static isGuideModeWiFi(Ljava/lang/String;)Z
    .locals 2
    .parameter "mode"

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, result:Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 147
    :cond_0
    return v0
.end method

.method static isInGuideMode(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 2
    .parameter "savedInstanceState"
    .parameter "b"

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, result:Z
    if-eqz p0, :cond_1

    const-string v1, "settings:guide_is_on"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    const-string v1, "settings:guide_is_on"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    if-eqz p1, :cond_0

    .line 127
    const-string v1, "settings:guide_is_on"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const-string v1, "settings:guide_is_on"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 129
    const-string v1, "settings:guide_is_on"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static isTablet()Z
    .locals 1

    .prologue
    .line 456
    sget-boolean v0, Lcom/android/settings/guide/GuideModeHelper;->mIsTablet:Z

    return v0
.end method

.method static setSettingsListEnabled(ZLandroid/app/Activity;)V
    .locals 2
    .parameter "enabled"
    .parameter "activity"

    .prologue
    .line 418
    instance-of v1, p1, Landroid/app/ListActivity;

    if-eqz v1, :cond_0

    .line 419
    check-cast p1, Landroid/app/ListActivity;

    .end local p1
    invoke-virtual {p1}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 421
    .local v0, list:Landroid/widget/ListView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->isEnabled()Z

    move-result v1

    if-eq v1, p0, :cond_0

    .line 422
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 425
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 430
    .end local v0           #list:Landroid/widget/ListView;
    :cond_0
    return-void
.end method

.method static setSettingsListFocusEnabled(ZLandroid/app/Activity;)V
    .locals 2
    .parameter "enabled"
    .parameter "activity"

    .prologue
    .line 433
    instance-of v1, p1, Landroid/app/ListActivity;

    if-eqz v1, :cond_1

    .line 434
    check-cast p1, Landroid/app/ListActivity;

    .end local p1
    invoke-virtual {p1}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 436
    .local v0, list:Landroid/widget/ListView;
    if-eqz v0, :cond_1

    .line 437
    invoke-virtual {v0}, Landroid/widget/ListView;->isEnabled()Z

    move-result v1

    if-eq v1, p0, :cond_0

    .line 438
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 442
    :cond_0
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 443
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 444
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClickable(Z)V

    .line 448
    .end local v0           #list:Landroid/widget/ListView;
    :cond_1
    return-void
.end method
