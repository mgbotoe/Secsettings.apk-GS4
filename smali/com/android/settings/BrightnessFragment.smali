.class public Lcom/android/settings/BrightnessFragment;
.super Landroid/app/DialogFragment;
.source "BrightnessFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;
.implements Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;


# static fields
.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

.field private static mContext:Landroid/content/Context;


# instance fields
.field brightnessModeLayout:Landroid/view/View;

.field private mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

.field private mAutomaticAvailable:Z

.field private mAutomaticMode:Z

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCheckBoxButton:Landroid/widget/TextView;

.field private mCurBrightness:I

.field private mMaxBrightness:I

.field private mOldAutoDetailLevel:I

.field private mOldAutomatic:I

.field private mOldBrightness:I

.field private mOldBrightness_DB:I

.field private mRestoredOldState:Z

.field private mScreenBrightnessDim:I

.field private mScreenBrightnessMaximum:I

.field private mScreenBrightnessMinimum:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mTextView:Landroid/widget/TextView;

.field private mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

.field private mTwSeekBarLayout:Landroid/widget/LinearLayout;

.field private mTwSeekBarText:Landroid/widget/TextView;

.field seekbar_layout:Landroid/widget/LinearLayout;

.field private supportAutoBrightnessDetail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Landroid/os/PowerManager;->useScreenAutoBrightnessAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/BrightnessFragment;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/BrightnessFragment;->mCurBrightness:I

    .line 97
    iput-boolean v1, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticAvailable:Z

    .line 99
    iput-boolean v1, p0, Lcom/android/settings/BrightnessFragment;->supportAutoBrightnessDetail:Z

    .line 103
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessDim:I

    .line 117
    new-instance v0, Lcom/android/settings/BrightnessFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/BrightnessFragment$1;-><init>(Lcom/android/settings/BrightnessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/BrightnessFragment;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 125
    new-instance v0, Lcom/android/settings/BrightnessFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/BrightnessFragment$2;-><init>(Lcom/android/settings/BrightnessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/BrightnessFragment;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 132
    new-instance v0, Lcom/android/settings/BrightnessFragment$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/BrightnessFragment$3;-><init>(Lcom/android/settings/BrightnessFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/BrightnessFragment;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private BtoR(I)I
    .locals 3
    .parameter "val"

    .prologue
    .line 570
    iget v1, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessDim:I

    sub-int v1, p1, v1

    mul-int/lit16 v1, v1, 0x2710

    iget v2, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessDim:I

    rsub-int v2, v2, 0xff

    div-int v0, v1, v2

    .line 572
    .local v0, progress:I
    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/BrightnessFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/settings/BrightnessFragment;->mCurBrightness:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/BrightnessFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->onBrightnessChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/BrightnessFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->onBrightnessModeChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/BrightnessFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->onAutoBrightnessDetailChanged()V

    return-void
.end method

.method static synthetic access$400()Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/android/settings/BrightnessFragment;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/android/settings/BrightnessFragment;->isFolderOpen(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/BrightnessFragment;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/BrightnessFragment;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/BrightnessFragment;->setBrightness(IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/BrightnessFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->restoreOldState()V

    return-void
.end method

.method private getBrightness()I
    .locals 5

    .prologue
    .line 435
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings/BrightnessFragment;->getBrightnessMode(I)I

    move-result v1

    .line 436
    .local v1, mode:I
    const/4 v0, 0x0

    .line 437
    .local v0, brightness:F
    sget-boolean v2, Lcom/android/settings/BrightnessFragment;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 439
    sget-object v2, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_auto_brightness_adj"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 441
    const/high16 v2, 0x3f80

    add-float/2addr v2, v0

    const/high16 v3, 0x4000

    div-float v0, v2, v3

    .line 452
    :goto_0
    const v2, 0x461c4000

    mul-float/2addr v2, v0

    float-to-int v2, v2

    return v2

    .line 443
    :cond_0
    iget v2, p0, Lcom/android/settings/BrightnessFragment;->mCurBrightness:I

    if-gez v2, :cond_1

    .line 444
    sget-object v2, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v0, v2

    .line 449
    :goto_1
    iget v2, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessMinimum:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessMinimum:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v0, v2, v3

    goto :goto_0

    .line 447
    :cond_1
    iget v2, p0, Lcom/android/settings/BrightnessFragment;->mCurBrightness:I

    int-to-float v0, v2

    goto :goto_1
.end method

.method private getBrightnessMode(I)I
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 456
    move v0, p1

    .line 458
    .local v0, brightnessMode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 462
    :goto_0
    return v0

    .line 460
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initializeView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 308
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->getBrightness()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 309
    const-string v0, "BrightnessFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "progress "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->getBrightness()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings/BrightnessFragment;->BtoR(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-boolean v0, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticAvailable:Z

    if-eqz v0, :cond_5

    .line 311
    invoke-direct {p0, v2}, Lcom/android/settings/BrightnessFragment;->getBrightnessMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/BrightnessFragment;->mOldAutomatic:I

    .line 312
    iget v0, p0, Lcom/android/settings/BrightnessFragment;->mOldAutomatic:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticMode:Z

    .line 313
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v3, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticMode:Z

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 314
    iget-object v3, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v0, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticMode:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/settings/BrightnessFragment;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v0, :cond_3

    :cond_0
    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 315
    sget-object v0, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/BrightnessFragment;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/BrightnessFragment;->isFolderOpen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 317
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 318
    invoke-direct {p0, v2}, Lcom/android/settings/BrightnessFragment;->getBrightnessMode(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    iget v0, p0, Lcom/android/settings/BrightnessFragment;->mOldAutomatic:I

    if-nez v0, :cond_4

    :goto_2
    iput-boolean v1, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticMode:Z

    .line 325
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v2

    .line 312
    goto :goto_0

    :cond_3
    move v0, v2

    .line 314
    goto :goto_1

    :cond_4
    move v1, v2

    .line 319
    goto :goto_2

    .line 322
    :cond_5
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_3
.end method

.method private static isDualFolderType(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 576
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.dual_lcd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFolderOpen(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 581
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 583
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v2, v1, :cond_0

    .line 586
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSupportAutoBrightnessDetail()Z
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method private onAutoBrightnessDetailChanged()V
    .locals 6

    .prologue
    .line 538
    sget-object v3, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_brightness_detail"

    const/16 v5, 0x64

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    div-int/lit8 v2, v3, 0x14

    .line 540
    .local v2, value:I
    iget-object v3, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    if-eqz v3, :cond_0

    .line 541
    iget-object v3, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v3, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setProgress(I)V

    .line 542
    move v1, v2

    .line 543
    .local v1, val:I
    const-string v0, ""

    .line 544
    .local v0, progressValue:Ljava/lang/String;
    add-int/lit8 v3, v1, -0x5

    if-lez v3, :cond_1

    .line 545
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, -0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 549
    :goto_0
    iget-object v3, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    .end local v0           #progressValue:Ljava/lang/String;
    .end local v1           #val:I
    :cond_0
    return-void

    .line 547
    .restart local v0       #progressValue:Ljava/lang/String;
    .restart local v1       #val:I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, -0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private onBrightnessChanged()V
    .locals 2

    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->getBrightness()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 514
    return-void
.end method

.method private onBrightnessModeChanged()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 517
    invoke-direct {p0, v2}, Lcom/android/settings/BrightnessFragment;->getBrightnessMode(I)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v0, v1

    .line 518
    .local v0, checked:Z
    :goto_0
    const-string v3, "BrightnessFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBrightnessModeChanged :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v3, p0, Lcom/android/settings/BrightnessFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 521
    iget-object v3, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->getBrightness()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 522
    iget-object v3, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    sget-boolean v4, Lcom/android/settings/BrightnessFragment;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v4, :cond_3

    :cond_0
    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 524
    if-eqz v0, :cond_4

    .line 525
    iget-boolean v1, p0, Lcom/android/settings/BrightnessFragment;->supportAutoBrightnessDetail:Z

    if-eqz v1, :cond_1

    .line 526
    iget-object v1, p0, Lcom/android/settings/BrightnessFragment;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 527
    iget-object v1, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 535
    :cond_1
    :goto_2
    return-void

    .end local v0           #checked:Z
    :cond_2
    move v0, v2

    .line 517
    goto :goto_0

    .restart local v0       #checked:Z
    :cond_3
    move v1, v2

    .line 522
    goto :goto_1

    .line 530
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/BrightnessFragment;->supportAutoBrightnessDetail:Z

    if-eqz v1, :cond_1

    .line 531
    iget-object v1, p0, Lcom/android/settings/BrightnessFragment;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 532
    iget-object v1, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private restoreOldState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 328
    iget-boolean v0, p0, Lcom/android/settings/BrightnessFragment;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 331
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    .line 332
    iget v0, p0, Lcom/android/settings/BrightnessFragment;->mOldAutomatic:I

    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessFragment;->setMode(I)V

    .line 334
    :cond_1
    iget v0, p0, Lcom/android/settings/BrightnessFragment;->mOldBrightness:I

    invoke-direct {p0, v0, v3}, Lcom/android/settings/BrightnessFragment;->setBrightness(IZ)V

    .line 335
    sget-object v0, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/android/settings/BrightnessFragment;->mOldBrightness_DB:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 338
    iget-boolean v0, p0, Lcom/android/settings/BrightnessFragment;->supportAutoBrightnessDetail:Z

    if-eqz v0, :cond_2

    .line 339
    sget-object v0, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_brightness_detail"

    iget v2, p0, Lcom/android/settings/BrightnessFragment;->mOldAutoDetailLevel:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 343
    :cond_2
    iput-boolean v3, p0, Lcom/android/settings/BrightnessFragment;->mRestoredOldState:Z

    .line 344
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/BrightnessFragment;->mCurBrightness:I

    goto :goto_0
.end method

.method private setBrightness(IZ)V
    .locals 8
    .parameter "brightness"
    .parameter "write"

    .prologue
    const v7, 0x461c4000

    .line 466
    const-string v4, "BrightnessFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set brightness passed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-boolean v4, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticMode:Z

    if-eqz v4, :cond_2

    .line 468
    sget-boolean v4, Lcom/android/settings/BrightnessFragment;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v4, :cond_1

    .line 469
    int-to-float v4, p1

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    const/high16 v5, 0x3f80

    sub-float v3, v4, v5

    .line 471
    .local v3, valf:F
    :try_start_0
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 473
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 474
    invoke-interface {v0, v3}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V

    .line 476
    :cond_0
    if-eqz p2, :cond_1

    .line 477
    sget-object v4, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 478
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v4, "screen_auto_brightness_adj"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 504
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    .end local v3           #valf:F
    :cond_1
    :goto_0
    return-void

    .line 485
    :cond_2
    iget v4, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessMaximum:I

    iget v5, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessMinimum:I

    sub-int v1, v4, v5

    .line 486
    .local v1, range:I
    mul-int v4, p1, v1

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessMinimum:I

    add-int p1, v4, v5

    .line 489
    :try_start_1
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 491
    .restart local v0       #power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_3

    .line 492
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 494
    :cond_3
    if-eqz p2, :cond_4

    .line 495
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/settings/BrightnessFragment;->mCurBrightness:I

    .line 496
    sget-object v4, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 497
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    const-string v4, "screen_brightness"

    invoke-static {v2, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 501
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 499
    .restart local v0       #power:Landroid/os/IPowerManager;
    :cond_4
    iput p1, p0, Lcom/android/settings/BrightnessFragment;->mCurBrightness:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 481
    .end local v0           #power:Landroid/os/IPowerManager;
    .end local v1           #range:I
    .restart local v3       #valf:F
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    .line 554
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticMode:Z

    .line 555
    const-string v0, "BrightnessFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set Mode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :goto_1
    return-void

    .line 554
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 559
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->restoreOldState()V

    .line 359
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 360
    return-void
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 375
    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessFragment;->setMode(I)V

    .line 378
    sget-object v0, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_brightness"

    const/16 v4, 0x64

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v3, p0, Lcom/android/settings/BrightnessFragment;->mMaxBrightness:I

    if-le v0, v3, :cond_2

    .line 380
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 384
    :goto_1
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticMode:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/settings/BrightnessFragment;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_3

    :cond_0
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 385
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/android/settings/BrightnessFragment;->setBrightness(IZ)V

    .line 386
    return-void

    :cond_1
    move v0, v2

    .line 375
    goto :goto_0

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->getBrightness()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 384
    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 349
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x64

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 153
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sput-object v6, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "sensor"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    .line 157
    .local v4, sensorMgr:Landroid/hardware/SensorManager;
    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    .line 158
    .local v3, sensorList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 159
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    .line 160
    .local v5, sensorType:I
    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    .line 161
    iput-boolean v9, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticAvailable:Z

    .line 158
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v5           #sensorType:I
    :cond_1
    :try_start_0
    sget-object v6, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 167
    .local v2, pm:Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v6

    iput v6, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessMinimum:I

    .line 168
    invoke-virtual {v2}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v6

    iput v6, p0, Lcom/android/settings/BrightnessFragment;->mScreenBrightnessMaximum:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v2           #pm:Landroid/os/PowerManager;
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/BrightnessFragment;->isSupportAutoBrightnessDetail()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/BrightnessFragment;->supportAutoBrightnessDetail:Z

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings/BrightnessFragment;->mOldBrightness:I

    .line 179
    iget v6, p0, Lcom/android/settings/BrightnessFragment;->mOldBrightness:I

    iput v6, p0, Lcom/android/settings/BrightnessFragment;->mCurBrightness:I

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings/BrightnessFragment;->mOldBrightness_DB:I

    .line 184
    const-string v6, "BrightnessFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "On create Brightness  :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/BrightnessFragment;->mCurBrightness:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/BrightnessFragment;->mOldBrightness:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0, v9}, Lcom/android/settings/BrightnessFragment;->setShowsDialog(Z)V

    .line 187
    invoke-virtual {p0, v9, v10}, Lcom/android/settings/BrightnessFragment;->setStyle(II)V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/BrightnessFragment;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7, v9, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness_mode"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/BrightnessFragment;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7, v9, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_brightness_detail"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/BrightnessFragment;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7, v9, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 199
    iput-boolean v10, p0, Lcom/android/settings/BrightnessFragment;->mRestoredOldState:Z

    .line 201
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 206
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 209
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f040032

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    .line 212
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    const v6, 0x7f0b008f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    .line 213
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v6, 0x2710

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 214
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 216
    iget-boolean v5, p0, Lcom/android/settings/BrightnessFragment;->supportAutoBrightnessDetail:Z

    if-eqz v5, :cond_0

    .line 217
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    const v6, 0x7f0b0090

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    .line 219
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    const v6, 0x7f0b008d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings/BrightnessFragment;->seekbar_layout:Landroid/widget/LinearLayout;

    .line 220
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    const v6, 0x7f0b0092

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarText:Landroid/widget/TextView;

    .line 221
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 223
    invoke-direct {p0, v8}, Lcom/android/settings/BrightnessFragment;->getBrightnessMode(I)I

    move-result v5

    if-eqz v5, :cond_5

    .line 224
    sget-object v5, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/BrightnessFragment;->isDualFolderType(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/BrightnessFragment;->isFolderOpen(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 225
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 226
    const-string v5, "BrightnessFragment"

    const-string v6, "isFolderClose "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    const v6, 0x7f0b0093

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    iput-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_brightness_detail"

    const/16 v7, 0x64

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/BrightnessFragment;->mOldAutoDetailLevel:I

    .line 240
    iget v5, p0, Lcom/android/settings/BrightnessFragment;->mOldAutoDetailLevel:I

    div-int/lit8 v5, v5, 0x14

    add-int/lit8 v1, v5, -0x5

    .line 241
    .local v1, defaultProgress:I
    const-string v4, ""

    .line 242
    .local v4, progressValue:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v5, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;)V

    .line 243
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setRange(I)V

    .line 244
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBar:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    add-int/lit8 v6, v1, 0x5

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setProgress(I)V

    .line 245
    if-lez v1, :cond_6

    .line 246
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 251
    :goto_1
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    .end local v1           #defaultProgress:I
    .end local v4           #progressValue:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    const v6, 0x7f0b008b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v5, p0, Lcom/android/settings/BrightnessFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 254
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    const v6, 0x7f0b008c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/BrightnessFragment;->mCheckBoxButton:Landroid/widget/TextView;

    .line 256
    sget-object v5, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/BrightnessFragment;->isDualFolderType(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/BrightnessFragment;->isFolderOpen(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 257
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mCheckBoxButton:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mCheckBoxButton:Landroid/widget/TextView;

    new-instance v6, Lcom/android/settings/BrightnessFragment$4;

    invoke-direct {v6, p0}, Lcom/android/settings/BrightnessFragment$4;-><init>(Lcom/android/settings/BrightnessFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 272
    :cond_1
    sget-object v5, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 274
    .local v3, mSharedPreference:Landroid/content/SharedPreferences;
    const-string v5, "pref_siop_brightness"

    const/4 v6, -0x1

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/BrightnessFragment;->mMaxBrightness:I

    .line 275
    iget v5, p0, Lcom/android/settings/BrightnessFragment;->mMaxBrightness:I

    invoke-virtual {p0, v5}, Lcom/android/settings/BrightnessFragment;->returnMaxBrightness(I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/BrightnessFragment;->mMaxBrightness:I

    .line 277
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    const v6, 0x7f0b0094

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTextView:Landroid/widget/TextView;

    .line 279
    iget v5, p0, Lcom/android/settings/BrightnessFragment;->mMaxBrightness:I

    const/16 v6, 0xff

    if-ne v5, v6, :cond_2

    .line 280
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    :cond_2
    iget-boolean v5, p0, Lcom/android/settings/BrightnessFragment;->mAutomaticAvailable:Z

    if-eqz v5, :cond_3

    .line 283
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 286
    :cond_3
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/android/settings/BrightnessFragment;->initializeView(Landroid/view/View;)V

    .line 287
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/BrightnessFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 288
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f09056f

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 289
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->brightnessModeLayout:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 290
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/BrightnessFragment$5;

    invoke-direct {v6, p0}, Lcom/android/settings/BrightnessFragment$5;-><init>(Lcom/android/settings/BrightnessFragment;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 296
    const/high16 v5, 0x104

    new-instance v6, Lcom/android/settings/BrightnessFragment$6;

    invoke-direct {v6, p0}, Lcom/android/settings/BrightnessFragment$6;-><init>(Lcom/android/settings/BrightnessFragment;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 303
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 228
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v3           #mSharedPreference:Landroid/content/SharedPreferences;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 229
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 232
    :cond_5
    iget-object v5, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 248
    .restart local v1       #defaultProgress:I
    .restart local v4       #progressValue:Ljava/lang/String;
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 353
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 354
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    const/4 v1, 0x0

    .line 398
    if-eqz p3, :cond_0

    .line 399
    sget-object v0, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/BrightnessFragment;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/BrightnessFragment;->isFolderOpen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/settings/BrightnessFragment;->mSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v0, :cond_1

    .line 404
    invoke-direct {p0, p2, v1}, Lcom/android/settings/BrightnessFragment;->setBrightness(IZ)V

    .line 406
    :cond_1
    return-void
.end method

.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;IZ)V
    .locals 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 410
    const-string v2, "BrightnessFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTwSeekBarSplitProgressChanged progress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const-string v0, ""

    .line 412
    .local v0, progressValue:Ljava/lang/String;
    add-int/lit8 v2, p2, -0x5

    if-lez v2, :cond_0

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p2, -0x5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 417
    :goto_0
    mul-int/lit8 v1, p2, 0x14

    .line 418
    .local v1, val:I
    new-instance v2, Lcom/android/settings/BrightnessFragment$7;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/BrightnessFragment$7;-><init>(Lcom/android/settings/BrightnessFragment;I)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 423
    iget-object v2, p0, Lcom/android/settings/BrightnessFragment;->mTwSeekBarText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    return-void

    .line 415
    .end local v1           #val:I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p2, -0x5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 428
    return-void
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 368
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 432
    return-void
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 371
    return-void
.end method

.method public returnMaxBrightness(I)I
    .locals 1
    .parameter "max"

    .prologue
    .line 389
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 392
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    const/16 p1, 0xff

    goto :goto_0
.end method
