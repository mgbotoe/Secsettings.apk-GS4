.class public Lcom/android/settings/motion/MotionTutorialSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MotionTutorialSettings.java"


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationImage:[I

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mCurrentDB:Ljava/lang/String;

.field private mDoubleTap:Landroid/preference/Preference;

.field private mDoubleTapToGoTopAnimationImage:[I

.field private mGlanceView:Landroid/preference/Preference;

.field private mGlanceViewTutorialAnimationImage:[I

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mIsQuickAnimation:Z

.field private mIsTablet:Z

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mPalmSwipe:Landroid/preference/Preference;

.field private mPalmTouch:Landroid/preference/Preference;

.field private mPan:Landroid/preference/Preference;

.field private mPanToBrowseImage:Landroid/preference/Preference;

.field private mPanToBrowseImageAnimationImage:[I

.field private mPanToMoveIconAnimationImage:[I

.field private mPickUp:Landroid/preference/Preference;

.field private mPickUpToBeNotifiedAnimationImage:[I

.field private mPickUpToCallOut:Landroid/preference/Preference;

.field private mPickUpToCallOutAnimationImage:[I

.field private mShake:Landroid/preference/Preference;

.field private mShakeToUpdateAnimationImage:[I

.field private mSupportBrowser:Z

.field private mSurfacePalmSwipeAnimationImage:[I

.field private mSurfacePalmTouchAnimationImage:[I

.field private mSurfaceTapAndTwistAnimationImage:[I

.field private mTabletPanToBrowseImageAnimationImage:[I

.field private mTabletPanToMoveIconAnimationImage:[I

.field private mTapAndTwist:Landroid/preference/Preference;

.field private mTilt:Landroid/preference/Preference;

.field private mTiltToScrollList:Landroid/preference/Preference;

.field private mTiltToScrollListAnimationImage:[I

.field private mTiltToZoomAnimationImage:[I

.field private mTurnOver:Landroid/preference/Preference;

.field private mTurnOverToMuteAnimationImage:[I

.field private mTutorialContent:Ljava/lang/String;

.field private mTutorialTitle:Ljava/lang/String;

.field private mUnlockCameraShortCut:[I

.field private mUseRingDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 87
    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 91
    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 92
    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 93
    iput v2, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    .line 94
    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 95
    iput-boolean v2, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsTablet:Z

    .line 96
    iput-boolean v2, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 99
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGlanceViewTutorialAnimationImage:[I

    .line 100
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTiltToZoomAnimationImage:[I

    .line 101
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTiltToScrollListAnimationImage:[I

    .line 102
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPanToMoveIconAnimationImage:[I

    .line 103
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPanToBrowseImageAnimationImage:[I

    .line 104
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mShakeToUpdateAnimationImage:[I

    .line 105
    new-array v0, v3, [I

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mDoubleTapToGoTopAnimationImage:[I

    .line 106
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUpToBeNotifiedAnimationImage:[I

    .line 107
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTurnOverToMuteAnimationImage:[I

    .line 108
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUpToCallOutAnimationImage:[I

    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mUnlockCameraShortCut:[I

    .line 110
    new-array v0, v3, [I

    fill-array-data v0, :array_b

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTabletPanToMoveIconAnimationImage:[I

    .line 111
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTabletPanToBrowseImageAnimationImage:[I

    .line 114
    new-array v0, v4, [I

    fill-array-data v0, :array_d

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mSurfacePalmSwipeAnimationImage:[I

    .line 115
    new-array v0, v1, [I

    fill-array-data v0, :array_e

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mSurfacePalmTouchAnimationImage:[I

    .line 116
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f020569

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mSurfaceTapAndTwistAnimationImage:[I

    .line 123
    new-instance v0, Lcom/android/settings/motion/MotionTutorialSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/motion/MotionTutorialSettings$1;-><init>(Lcom/android/settings/motion/MotionTutorialSettings;)V

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    return-void

    .line 99
    :array_0
    .array-data 0x4
        0x4et 0x4t 0x2t 0x7ft
        0x4ft 0x4t 0x2t 0x7ft
        0x50t 0x4t 0x2t 0x7ft
        0x51t 0x4t 0x2t 0x7ft
        0x52t 0x4t 0x2t 0x7ft
        0x53t 0x4t 0x2t 0x7ft
    .end array-data

    .line 100
    :array_1
    .array-data 0x4
        0xd4t 0x2t 0x2t 0x7ft
        0xd5t 0x2t 0x2t 0x7ft
        0xd6t 0x2t 0x2t 0x7ft
    .end array-data

    .line 101
    :array_2
    .array-data 0x4
        0xf4t 0x2t 0x2t 0x7ft
        0xf5t 0x2t 0x2t 0x7ft
        0xf6t 0x2t 0x2t 0x7ft
        0xf7t 0x2t 0x2t 0x7ft
        0xf8t 0x2t 0x2t 0x7ft
    .end array-data

    .line 102
    :array_3
    .array-data 0x4
        0xd0t 0x2t 0x2t 0x7ft
        0xd1t 0x2t 0x2t 0x7ft
        0xd2t 0x2t 0x2t 0x7ft
        0xd3t 0x2t 0x2t 0x7ft
    .end array-data

    .line 103
    :array_4
    .array-data 0x4
        0xc0t 0x2t 0x2t 0x7ft
        0xc1t 0x2t 0x2t 0x7ft
        0xc2t 0x2t 0x2t 0x7ft
        0xc3t 0x2t 0x2t 0x7ft
        0xc4t 0x2t 0x2t 0x7ft
        0xc5t 0x2t 0x2t 0x7ft
        0xc6t 0x2t 0x2t 0x7ft
    .end array-data

    .line 104
    :array_5
    .array-data 0x4
        0xe1t 0x2t 0x2t 0x7ft
        0xe2t 0x2t 0x2t 0x7ft
        0xe1t 0x2t 0x2t 0x7ft
        0xe2t 0x2t 0x2t 0x7ft
    .end array-data

    .line 105
    :array_6
    .array-data 0x4
        0xc9t 0x2t 0x2t 0x7ft
        0xcat 0x2t 0x2t 0x7ft
        0xc9t 0x2t 0x2t 0x7ft
        0xcat 0x2t 0x2t 0x7ft
    .end array-data

    .line 106
    :array_7
    .array-data 0x4
        0xdat 0x2t 0x2t 0x7ft
        0xdbt 0x2t 0x2t 0x7ft
        0xdct 0x2t 0x2t 0x7ft
    .end array-data

    .line 107
    :array_8
    .array-data 0x4
        0xfdt 0x2t 0x2t 0x7ft
        0xfet 0x2t 0x2t 0x7ft
        0xfft 0x2t 0x2t 0x7ft
    .end array-data

    .line 108
    :array_9
    .array-data 0x4
        0xcdt 0x2t 0x2t 0x7ft
        0xcet 0x2t 0x2t 0x7ft
        0xcft 0x2t 0x2t 0x7ft
    .end array-data

    .line 109
    :array_a
    .array-data 0x4
        0xdft 0x2t 0x2t 0x7ft
        0xe0t 0x2t 0x2t 0x7ft
    .end array-data

    .line 110
    :array_b
    .array-data 0x4
        0xeft 0x2t 0x2t 0x7ft
        0xf0t 0x2t 0x2t 0x7ft
        0xf1t 0x2t 0x2t 0x7ft
        0xf2t 0x2t 0x2t 0x7ft
    .end array-data

    .line 111
    :array_c
    .array-data 0x4
        0xe7t 0x2t 0x2t 0x7ft
        0xe8t 0x2t 0x2t 0x7ft
        0xe9t 0x2t 0x2t 0x7ft
        0xeat 0x2t 0x2t 0x7ft
        0xebt 0x2t 0x2t 0x7ft
        0xect 0x2t 0x2t 0x7ft
        0xedt 0x2t 0x2t 0x7ft
        0xeet 0x2t 0x2t 0x7ft
    .end array-data

    .line 114
    :array_d
    .array-data 0x4
        0x40t 0x3t 0x2t 0x7ft
        0x42t 0x3t 0x2t 0x7ft
        0x44t 0x3t 0x2t 0x7ft
        0x46t 0x3t 0x2t 0x7ft
        0x48t 0x3t 0x2t 0x7ft
    .end array-data

    .line 115
    :array_e
    .array-data 0x4
        0x49t 0x3t 0x2t 0x7ft
        0x4at 0x3t 0x2t 0x7ft
        0x4bt 0x3t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/motion/MotionTutorialSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/motion/MotionTutorialSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/motion/MotionTutorialSettings;->startTryActually(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/motion/MotionTutorialSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/motion/MotionTutorialSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->startTryActually()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/motion/MotionTutorialSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showMotionDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/motion/MotionTutorialSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/motion/MotionTutorialSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->stopAnimation()V

    return-void
.end method

.method private showMotionDialog()V
    .locals 4

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->allDialogDismiss()V

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090d6f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, message:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090d6e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090d6d

    new-instance v3, Lcom/android/settings/motion/MotionTutorialSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/motion/MotionTutorialSettings$2;-><init>(Lcom/android/settings/motion/MotionTutorialSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090173

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 389
    iget-object v1, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/motion/MotionTutorialSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionTutorialSettings$3;-><init>(Lcom/android/settings/motion/MotionTutorialSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 395
    return-void
.end method

.method private showUseRingDialog()V
    .locals 3

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->allDialogDismiss()V

    .line 450
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090d6b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090d6a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09074d

    new-instance v2, Lcom/android/settings/motion/MotionTutorialSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionTutorialSettings$7;-><init>(Lcom/android/settings/motion/MotionTutorialSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090d6c

    new-instance v2, Lcom/android/settings/motion/MotionTutorialSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionTutorialSettings$6;-><init>(Lcom/android/settings/motion/MotionTutorialSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 465
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    const-string v0, "MotionTutorialSettings"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 606
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    .line 607
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->updateAnimation()V

    goto :goto_0
.end method

.method private startTryActually()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/16 v3, 0xa

    .line 469
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_zooming"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 471
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    const-string v1, "MotionTest"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 474
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_tilt_to_list_scrolling"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 476
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 477
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 478
    const-string v1, "com.android.jcontacts"

    const-string v2, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    :goto_1
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 480
    :cond_2
    const-string v1, "com.android.contacts"

    const-string v2, "com.sec.android.app.contacts.activities.TiltToScrollListTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 483
    :cond_3
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_panning"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 484
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 485
    const-string v1, "com.sec.android.motions.settings.panningtutorial"

    const-string v2, "com.sec.android.motions.settings.panningtutorial.PanningTryActually"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 487
    :cond_4
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_pan_to_browse_image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 488
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    const-string v1, "MotionTest"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 492
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 493
    :cond_5
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_zooming"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 501
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 502
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.motion.ShakeTutorial"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 504
    :cond_6
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_shake"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 512
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 513
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.motion.ShakeTutorial"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 515
    :cond_7
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_double_tap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 516
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 517
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 518
    const-string v1, "com.android.jcontacts"

    const-string v2, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    :goto_2
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 520
    :cond_8
    const-string v1, "com.android.contacts"

    const-string v2, "com.sec.android.app.contacts.activities.DoubleTapTutorialActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 523
    :cond_9
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_pick_up"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 524
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 525
    const-string v1, "android.pickuptutorial.PICKUPTUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 527
    :cond_a
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_pick_up_to_call_out"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 528
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 529
    const-string v1, "com.android.mms.ui.DirectCallTutorial"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 531
    :cond_b
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_overturn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 532
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/settings/motion/MotionTutorialSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 533
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v2, :cond_c

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_c

    .line 534
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showUseRingDialog()V

    goto/16 :goto_0

    .line 536
    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/motion/MotionTutorialSettings;->startTryActually(Z)V

    goto/16 :goto_0

    .line 538
    :cond_d
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "air_motion_glance_view"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 539
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 540
    const-string v1, "samsung.pickuptutorial.GLANCEVIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 541
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 542
    const-string v0, "MotionTutorialSettings"

    const-string v1, "AIR_MOTION_GLANCE_VIEW"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 543
    :cond_e
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "surface_palm_swipe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 545
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 546
    const-string v1, "com.samsung.pickuptutorial.PALMSWIPETUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 548
    const-string v0, "MotionTutorialSettings"

    const-string v1, "MotionTutorialSettings Tutorial Palm swipe to capture"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 549
    :cond_f
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "surface_palm_touch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 551
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 552
    const-string v1, "android.intent.action.PALM_TOUCH_TUTORIAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 554
    const-string v0, "MotionTutorialSettings"

    const-string v1, "MotionTutorialSettings Tutorial Palm touch to mute/pause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 555
    :cond_10
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "surface_tap_and_twist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0
.end method

.method private startTryActually(Z)V
    .locals 3
    .parameter

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    const-string v1, "motion_overturn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 563
    const-string v1, "UseRing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 564
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 565
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.callsettings.OverturnTutorialIncallScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/motion/MotionTutorialSettings;->startActivity(Landroid/content/Intent;)V

    .line 571
    :cond_0
    return-void

    .line 567
    :cond_1
    const-string v1, "com.sec.android.app.clockpackage"

    const-string v2, "com.sec.android.app.clockpackage.alarm.OverturnTutorialAlarmScreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    const-string v0, "MotionTutorialSettings"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private updateAnimation()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    const/16 v3, 0x66

    .line 574
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    const-string v0, "MotionTutorialSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 577
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    iget v2, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 578
    iget v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    .line 581
    :cond_2
    iget v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    .line 583
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 584
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->stopAnimation()V

    .line 585
    iget v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    if-nez v0, :cond_3

    .line 586
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 588
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    if-eqz v0, :cond_5

    .line 589
    iget v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationIndex:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 590
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 592
    :cond_4
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 595
    :cond_5
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public allDialogDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 621
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 623
    iput-object v1, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 627
    iput-object v1, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 630
    iget-object v0, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 631
    iput-object v1, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mUseRingDialog:Landroid/app/AlertDialog;

    .line 633
    :cond_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 221
    const-string v0, "MotionTutorialSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    packed-switch p1, :pswitch_data_0

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 224
    :pswitch_0
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 135
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.android.browser"

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mSupportBrowser:Z

    .line 139
    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsTablet:Z

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 141
    .local v0, arguments:Landroid/os/Bundle;
    const-string v4, "type"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    const/4 v1, 0x1

    .line 143
    .local v1, isMotionTutorial:Z
    :cond_0
    const v4, 0x7f07005c

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->addPreferencesFromResource(I)V

    .line 145
    const-string v4, "glance_view"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGlanceView:Landroid/preference/Preference;

    .line 146
    const-string v4, "tilt"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTilt:Landroid/preference/Preference;

    .line 147
    const-string v4, "tilt_to_scroll_list"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTiltToScrollList:Landroid/preference/Preference;

    .line 148
    const-string v4, "pan"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPan:Landroid/preference/Preference;

    .line 149
    const-string v4, "pan_to_browse_image"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPanToBrowseImage:Landroid/preference/Preference;

    .line 150
    const-string v4, "shake"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mShake:Landroid/preference/Preference;

    .line 151
    const-string v4, "double_tap"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mDoubleTap:Landroid/preference/Preference;

    .line 152
    const-string v4, "pick_up"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUp:Landroid/preference/Preference;

    .line 153
    const-string v4, "pick_up_to_call_out"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUpToCallOut:Landroid/preference/Preference;

    .line 154
    const-string v4, "turn_over"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTurnOver:Landroid/preference/Preference;

    .line 155
    const-string v4, "palm_swipe"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPalmSwipe:Landroid/preference/Preference;

    .line 156
    const-string v4, "palm_touch"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPalmTouch:Landroid/preference/Preference;

    .line 157
    const-string v4, "tap_and_twist"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionTutorialSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTapAndTwist:Landroid/preference/Preference;

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 161
    .local v3, ps:Landroid/preference/PreferenceScreen;
    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    .line 163
    .local v2, isTablet:Z
    if-nez v1, :cond_1

    .line 164
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGlanceView:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 166
    :cond_1
    if-nez v1, :cond_2

    .line 167
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTilt:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 170
    :cond_2
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTiltToScrollList:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 172
    if-nez v1, :cond_3

    .line 173
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPan:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 175
    :cond_3
    if-nez v1, :cond_4

    .line 176
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPanToBrowseImage:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    :cond_4
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mShake:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 181
    if-eqz v1, :cond_5

    if-eqz v2, :cond_6

    .line 182
    :cond_5
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mDoubleTap:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 184
    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 185
    :cond_7
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUp:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    :cond_8
    if-eqz v1, :cond_9

    if-eqz v2, :cond_a

    .line 188
    :cond_9
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUpToCallOut:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 190
    :cond_a
    if-eqz v1, :cond_b

    if-eqz v2, :cond_c

    .line 191
    :cond_b
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTurnOver:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 193
    :cond_c
    if-eqz v1, :cond_d

    .line 194
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPalmSwipe:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 196
    :cond_d
    if-eqz v1, :cond_e

    .line 197
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPalmTouch:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 200
    :cond_e
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTapAndTwist:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 202
    iget-boolean v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mSupportBrowser:Z

    if-nez v4, :cond_f

    .line 203
    iget-object v4, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTilt:Landroid/preference/Preference;

    const v5, 0x7f090d3c

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 205
    :cond_f
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 215
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 216
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->stopAnimation()V

    .line 217
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const v7, 0x7f090d5b

    const v5, 0x7f090d4f

    const v4, 0x7f090d4e

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 233
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGlanceView:Landroid/preference/Preference;

    if-ne p2, v3, :cond_0

    .line 234
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGlanceViewTutorialAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 235
    const-string v3, "air_motion_glance_view"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090e0c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090e0d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 238
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    .line 361
    :goto_0
    return v2

    .line 240
    :cond_0
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTilt:Landroid/preference/Preference;

    if-ne p2, v3, :cond_1

    .line 241
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTiltToZoomAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 242
    const-string v3, "motion_zooming"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d55

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 245
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto :goto_0

    .line 247
    :cond_1
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTiltToScrollList:Landroid/preference/Preference;

    if-ne p2, v3, :cond_2

    .line 248
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTiltToScrollListAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 249
    const-string v3, "motion_tilt_to_list_scrolling"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d56

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 252
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto :goto_0

    .line 254
    :cond_2
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPan:Landroid/preference/Preference;

    if-ne p2, v3, :cond_4

    .line 255
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPanToMoveIconAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 256
    iget-boolean v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsTablet:Z

    if-eqz v3, :cond_3

    .line 257
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTabletPanToMoveIconAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 259
    :cond_3
    const-string v3, "motion_panning"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d57

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 262
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 264
    :cond_4
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPanToBrowseImage:Landroid/preference/Preference;

    if-ne p2, v3, :cond_6

    .line 265
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPanToBrowseImageAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 266
    iget-boolean v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsTablet:Z

    if-eqz v3, :cond_5

    .line 267
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTabletPanToBrowseImageAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 269
    :cond_5
    const-string v3, "motion_pan_to_browse_image"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d58

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 272
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 274
    :cond_6
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mShake:Landroid/preference/Preference;

    if-ne p2, v3, :cond_c

    .line 275
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mShakeToUpdateAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 276
    const-string v3, "motion_shake"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d50

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d59

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 279
    const/4 v1, 0x1

    .line 281
    .local v1, isKiesAirInstalled:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.swift.app.kiesair"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_1
    if-nez v1, :cond_8

    .line 286
    const-string v3, "CMCC"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "CHM"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 288
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d5c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 299
    :cond_8
    :goto_2
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_1

    .line 290
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_9
    const-string v3, "CHN"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "CTC"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 292
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    goto :goto_2

    .line 295
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    goto :goto_2

    .line 301
    .end local v1           #isKiesAirInstalled:Z
    :cond_c
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mDoubleTap:Landroid/preference/Preference;

    if-ne p2, v3, :cond_d

    .line 302
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mDoubleTapToGoTopAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 303
    const-string v3, "motion_double_tap"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d51

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d5d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 306
    iput-boolean v2, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 308
    :cond_d
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUp:Landroid/preference/Preference;

    if-ne p2, v3, :cond_e

    .line 309
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUpToBeNotifiedAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 310
    const-string v3, "motion_pick_up"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d52

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d5e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 317
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 319
    :cond_e
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUpToCallOut:Landroid/preference/Preference;

    if-ne p2, v3, :cond_f

    .line 320
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPickUpToCallOutAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 321
    const-string v3, "motion_pick_up_to_call_out"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d53

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d72

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 324
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 326
    :cond_f
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTurnOver:Landroid/preference/Preference;

    if-ne p2, v3, :cond_10

    .line 327
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTurnOverToMuteAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 328
    const-string v3, "motion_overturn"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d54

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d61

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 331
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 333
    :cond_10
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPalmSwipe:Landroid/preference/Preference;

    if-ne p2, v3, :cond_11

    .line 334
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mSurfacePalmSwipeAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 335
    const-string v3, "surface_palm_swipe"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d7e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d7f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 338
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 340
    :cond_11
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mPalmTouch:Landroid/preference/Preference;

    if-ne p2, v3, :cond_13

    .line 341
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mSurfacePalmTouchAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 342
    const-string v3, "surface_palm_touch"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d80

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d82

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 349
    :goto_3
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 347
    :cond_12
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d81

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    goto :goto_3

    .line 351
    :cond_13
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTapAndTwist:Landroid/preference/Preference;

    if-ne p2, v3, :cond_14

    .line 352
    iget-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mSurfaceTapAndTwistAnimationImage:[I

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    .line 353
    const-string v3, "surface_tap_and_twist"

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mCurrentDB:Ljava/lang/String;

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d83

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090d84

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    .line 356
    iput-boolean v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mIsQuickAnimation:Z

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->showGuideDialog()V

    goto/16 :goto_0

    .line 359
    :cond_14
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 209
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 210
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->updateAnimation()V

    .line 211
    return-void
.end method

.method public showGuideDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 399
    iget-object v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 446
    :goto_0
    return-void

    .line 403
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 404
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->allDialogDismiss()V

    .line 406
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 407
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f04006f

    invoke-virtual {v3, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 408
    .local v4, layout:Landroid/view/View;
    const v6, 0x7f0b0077

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 409
    .local v5, message:Landroid/widget/TextView;
    const v6, 0x7f0b0140

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 411
    iget-object v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v6, :cond_1

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationImage:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 413
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 414
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    .line 415
    .local v1, bitmapSize:I
    const/16 v6, 0x3e8

    if-ge v1, v6, :cond_1

    .line 416
    iput-object v9, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 420
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #bitmapSize:I
    :cond_1
    iget-object v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialContent:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 422
    iget-object v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mTutorialTitle:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 424
    const v6, 0x7f090d64

    new-instance v7, Lcom/android/settings/motion/MotionTutorialSettings$4;

    invoke-direct {v7, p0}, Lcom/android/settings/motion/MotionTutorialSettings$4;-><init>(Lcom/android/settings/motion/MotionTutorialSettings;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f090173

    invoke-virtual {v6, v7, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 438
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 439
    iget-object v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 440
    iget-object v6, p0, Lcom/android/settings/motion/MotionTutorialSettings;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/settings/motion/MotionTutorialSettings$5;

    invoke-direct {v7, p0}, Lcom/android/settings/motion/MotionTutorialSettings$5;-><init>(Lcom/android/settings/motion/MotionTutorialSettings;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 445
    invoke-direct {p0}, Lcom/android/settings/motion/MotionTutorialSettings;->startAnimation()V

    goto/16 :goto_0
.end method
