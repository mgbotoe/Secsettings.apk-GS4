.class public Lcom/android/settings/VoiceInputControlSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VoiceInputControlSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static voiceInputControlSettings:Lcom/android/settings/VoiceInputControlSettings;


# instance fields
.field private final KEY_EASY_MODE_SWITCH:Ljava/lang/String;

.field private final KEY_VOICE_INPUT_CONTROL:Ljava/lang/String;

.field private foundVoiceControlView:Landroid/view/View;

.field private headerView:Landroid/view/View;

.field private isTablet:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAlarm:Landroid/preference/CheckBoxPreference;

.field mAutoHapticDialog:Landroid/app/AlertDialog$Builder;

.field private mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

.field private mCamera:Landroid/preference/CheckBoxPreference;

.field private mChatonV:Landroid/preference/CheckBoxPreference;

.field mHelpHandler:Landroid/os/Handler;

.field private mHelpState:I

.field private mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

.field private mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mIncommingCalls:Landroid/preference/CheckBoxPreference;

.field private mIndex:I

.field private mIsAutoHapticDialogShowing:Z

.field private mIsFromHelp:Z

.field private mMusic:Landroid/preference/CheckBoxPreference;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mRotation:I

.field private mVoiceInputCategory:Landroid/preference/PreferenceCategory;

.field private mVoiceInputControlObserver:Landroid/database/ContentObserver;

.field private r:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/VoiceInputControlSettings;->voiceInputControlSettings:Lcom/android/settings/VoiceInputControlSettings;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 67
    const-string v0, "voice_input_control"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->KEY_VOICE_INPUT_CONTROL:Ljava/lang/String;

    .line 69
    const-string v0, "easy_mode_switch"

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->KEY_EASY_MODE_SWITCH:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsAutoHapticDialogShowing:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/settings/VoiceInputControlSettings;->isTablet:Z

    .line 93
    iput-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 94
    iput-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 95
    iput-boolean v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsFromHelp:Z

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    .line 106
    iput v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpState:I

    .line 107
    iput v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIndex:I

    .line 109
    new-instance v0, Lcom/android/settings/VoiceInputControlSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/VoiceInputControlSettings$1;-><init>(Lcom/android/settings/VoiceInputControlSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mVoiceInputControlObserver:Landroid/database/ContentObserver;

    .line 210
    new-instance v0, Lcom/android/settings/VoiceInputControlSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/VoiceInputControlSettings$2;-><init>(Lcom/android/settings/VoiceInputControlSettings;)V

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/VoiceInputControlSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->updateUIVoiceInputControl()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/VoiceInputControlSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/VoiceInputControlSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->showHelpStep1Dialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/VoiceInputControlSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsFromHelp:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/VoiceInputControlSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->showHelpStep2Dialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/VoiceInputControlSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->setTabletView()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/VoiceInputControlSettings;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/VoiceInputControlSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/VoiceInputControlSettings;Lcom/android/settings/helpdialog/TwHelpDialog;)Lcom/android/settings/helpdialog/TwHelpDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/settings/VoiceInputControlSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsAutoHapticDialogShowing:Z

    return p1
.end method

.method public static getInstance()Lcom/android/settings/VoiceInputControlSettings;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/android/settings/VoiceInputControlSettings;->voiceInputControlSettings:Lcom/android/settings/VoiceInputControlSettings;

    return-object v0
.end method

.method public static getSalesCodeProperty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isChatONVPhone()Z
    .locals 3

    .prologue
    .line 536
    const/4 v0, 0x1

    .line 537
    .local v0, isChatONV:Z
    invoke-static {}, Lcom/android/settings/VoiceInputControlSettings;->getSalesCodeProperty()Ljava/lang/String;

    move-result-object v1

    .line 538
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 539
    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SPR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CTC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "KTT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "LGT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SKT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 544
    :cond_0
    const/4 v0, 0x0

    .line 547
    :cond_1
    return v0
.end method

.method private isChatOnVInstalled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 235
    .local v0, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v2, "com.coolots.chaton"

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    return v1

    .line 238
    :catch_0
    move-exception v2

    .line 246
    :try_start_1
    const-string v2, "com.coolots.chatonforcanada"

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 249
    :catch_1
    move-exception v1

    .line 255
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isEasyModeOn()I
    .locals 3

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setPreferenceStatusBasedOnEasyMode(Landroid/preference/CheckBoxPreference;)V
    .locals 1
    .parameter "mPref"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    if-ne v0, p1, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->isEasyModeOn()I

    move-result v0

    if-nez v0, :cond_1

    .line 383
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setTabletView()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const v9, 0x7f0b05b1

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 816
    iget v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpState:I

    if-ne v0, v7, :cond_0

    .line 819
    :cond_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 820
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 822
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 824
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 825
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f0104

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 828
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/app/ListActivity;

    .line 829
    invoke-virtual {v0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 830
    invoke-virtual {v4, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->headerView:Landroid/view/View;

    .line 831
    invoke-virtual {v4, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->foundVoiceControlView:Landroid/view/View;

    .line 833
    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    move v0, v1

    .line 835
    :goto_0
    if-ge v0, v5, :cond_1

    .line 836
    invoke-virtual {v4, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    if-ne v6, v9, :cond_3

    .line 837
    invoke-virtual {v4, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->headerView:Landroid/view/View;

    .line 842
    :cond_1
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->headerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v9, :cond_5

    .line 843
    iget v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mIndex:I

    if-eqz v0, :cond_4

    .line 844
    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    .line 845
    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    .line 847
    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mIndex:I

    if-ge v0, v2, :cond_2

    .line 848
    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {v4, v0, v1}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    .line 850
    :cond_2
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 873
    :goto_1
    return-void

    .line 835
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 853
    :cond_4
    iput-object v10, p0, Lcom/android/settings/VoiceInputControlSettings;->foundVoiceControlView:Landroid/view/View;

    .line 854
    iput-object v10, p0, Lcom/android/settings/VoiceInputControlSettings;->headerView:Landroid/view/View;

    .line 855
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 859
    :cond_5
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->headerView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->foundVoiceControlView:Landroid/view/View;

    .line 860
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->foundVoiceControlView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 861
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->headerView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 862
    iput v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mIndex:I

    .line 864
    invoke-virtual {v4}, Landroid/widget/ListView;->getFocusedChild()Landroid/view/View;

    .line 865
    invoke-virtual {v4}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    .line 866
    iget v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpState:I

    if-ne v1, v7, :cond_7

    .line 867
    div-int/lit8 v1, v2, 0x2

    invoke-virtual {v4, v0, v1}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    .line 871
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 872
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 868
    :cond_7
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v1

    mul-int/lit8 v3, v3, 0x3

    if-gt v1, v3, :cond_6

    .line 869
    div-int/lit8 v1, v2, 0x2

    invoke-virtual {v4, v0, v1}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    goto :goto_2
.end method

.method private showHelpStep1Dialog()V
    .locals 10

    .prologue
    const v9, 0x7f0f0112

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 659
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_input_control"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 661
    if-ne v0, v8, :cond_1

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_2

    .line 665
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 666
    iput-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 669
    :cond_2
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v0, :cond_0

    .line 670
    iget-boolean v0, p0, Lcom/android/settings/VoiceInputControlSettings;->isTablet:Z

    if-nez v0, :cond_3

    .line 671
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400a6

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 673
    new-instance v1, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 674
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 676
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v1, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 677
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, v8}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 678
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 679
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    goto :goto_0

    .line 681
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400a7

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 683
    new-instance v0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 684
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, v3}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 686
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 687
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 689
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 690
    iget v4, v1, Landroid/graphics/Point;->x:I

    .line 691
    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 693
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->foundVoiceControlView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->foundVoiceControlView:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    .line 697
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 698
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 699
    iget v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mRotation:I

    if-ne v5, v8, :cond_7

    .line 701
    instance-of v0, v1, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_4

    .line 702
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 703
    iput-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    .line 706
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 707
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    .line 708
    :goto_1
    if-ge v2, v1, :cond_5

    .line 709
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/Switch;

    if-eqz v5, :cond_6

    .line 710
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->headerView:Landroid/view/View;

    .line 728
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->headerView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 731
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 732
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 734
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0f0104

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 736
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f010c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 738
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 741
    iget-object v7, p0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v7

    .line 743
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int v0, v4, v0

    .line 744
    iget-object v4, p0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getStatusBarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 746
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v2, v0, v2

    .line 747
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->r:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 749
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 751
    iget v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mRotation:I

    if-ne v2, v8, :cond_a

    .line 752
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v2, v0, v1, v5}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setLayoutMarginDialogCenter(III)V

    .line 760
    :goto_3
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    sget-object v1, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 761
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, v8}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 762
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 763
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    goto/16 :goto_0

    .line 708
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_7
    move v1, v2

    .line 715
    :goto_4
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 716
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const v5, 0x1020018

    if-ne v2, v5, :cond_8

    .line 717
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->headerView:Landroid/view/View;

    goto/16 :goto_2

    .line 720
    :cond_8
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_9

    .line 721
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 722
    iput-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    goto/16 :goto_0

    .line 715
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 756
    :cond_a
    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0133

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v2, v0, v1, v5, v6}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setLayoutMarginDialogRight(IIII)V

    goto :goto_3
.end method

.method private showHelpStep2Dialog()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 770
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_input_control"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 772
    if-nez v0, :cond_1

    .line 803
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_2

    .line 777
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 778
    iput-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 781
    :cond_2
    iput v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpState:I

    .line 782
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400a8

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 784
    const v0, 0x7f0b010b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 786
    new-instance v2, Lcom/android/settings/VoiceInputControlSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/VoiceInputControlSettings$8;-><init>(Lcom/android/settings/VoiceInputControlSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 795
    new-instance v0, Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 796
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 797
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v1, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 798
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 799
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 800
    iget-boolean v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsAutoHapticDialogShowing:Z

    if-nez v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->show()V

    goto :goto_0
.end method

.method private updateUIVoiceInputControl()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 390
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 393
    .local v0, voiceInputControlState:I
    if-ne v0, v4, :cond_7

    .line 394
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 395
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 397
    :cond_0
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 398
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 399
    :cond_1
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    .line 400
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 402
    :cond_2
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    .line 403
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/VoiceInputControlSettings;->setPreferenceStatusBasedOnEasyMode(Landroid/preference/CheckBoxPreference;)V

    .line 404
    :cond_3
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    .line 405
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 407
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_5

    .line 408
    iget-boolean v1, p0, Lcom/android/settings/VoiceInputControlSettings;->isTablet:Z

    if-eqz v1, :cond_6

    .line 409
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_5

    .line 410
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 411
    iput-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 444
    :cond_5
    :goto_0
    return-void

    .line 414
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->showHelpStep2Dialog()V

    goto :goto_0

    .line 418
    :cond_7
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 419
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_8

    .line 420
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 421
    :cond_8
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_9

    .line 422
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 423
    :cond_9
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_a

    .line 424
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 425
    :cond_a
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_b

    .line 426
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 427
    :cond_b
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_c

    .line 428
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 430
    :cond_c
    iget-boolean v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsFromHelp:Z

    if-eqz v1, :cond_5

    .line 431
    iget-boolean v1, p0, Lcom/android/settings/VoiceInputControlSettings;->isTablet:Z

    if-eqz v1, :cond_d

    .line 432
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 433
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 435
    :cond_d
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_e

    .line 436
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 437
    iput-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 439
    :cond_e
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 440
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public getHelpHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getStatusBarHeight()I
    .locals 5

    .prologue
    .line 806
    const/4 v0, 0x0

    .line 807
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 808
    if-lez v1, :cond_0

    .line 809
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 811
    :cond_0
    return v0
.end method

.method public isAllOptionDisabled()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 521
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 522
    .local v4, cr:Landroid/content/ContentResolver;
    const-string v7, "voice_input_control_incomming_calls"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 523
    .local v1, call:I
    const-string v7, "voice_input_control_alarm"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 524
    .local v0, alarm:I
    const-string v7, "voice_input_control_camera"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 525
    .local v2, camera:I
    const-string v7, "voice_input_control_music"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 526
    .local v5, music:I
    const-string v7, "voice_input_control_chatonv"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 528
    .local v3, chatonv:I
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v5, :cond_0

    if-nez v3, :cond_0

    .line 529
    const/4 v6, 0x1

    .line 531
    :cond_0
    return v6
.end method

.method public isFromHelpApp()Z
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsFromHelp:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 10
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voiceinputcontrol_showNeverAgain"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 260
    .local v3, showNeverAgain:I
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voice_input_control"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 261
    .local v5, voiceState:I
    const-string v8, "vibrator"

    invoke-virtual {p0, v8}, Lcom/android/settings/VoiceInputControlSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 263
    .local v4, vibrator:Landroid/os/Vibrator;
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voice_input_control"

    if-eqz p2, :cond_0

    move v6, v7

    :cond_0
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 266
    if-eqz p2, :cond_1

    if-nez v5, :cond_1

    if-nez v3, :cond_1

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 267
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/settings/VoiceInputControlSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 268
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040053

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 269
    .local v2, layout:Landroid/view/View;
    const v6, 0x7f0b00ee

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 270
    .local v0, check:Landroid/widget/CheckBox;
    const v6, 0x7f0b00ed

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    const v8, 0x7f0910da

    :goto_0
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(I)V

    .line 271
    new-instance v6, Lcom/android/settings/VoiceInputControlSettings$3;

    invoke-direct {v6, p0}, Lcom/android/settings/VoiceInputControlSettings$3;-><init>(Lcom/android/settings/VoiceInputControlSettings;)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mAutoHapticDialog:Landroid/app/AlertDialog$Builder;

    .line 277
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mAutoHapticDialog:Landroid/app/AlertDialog$Builder;

    const v8, 0x7f0910d9

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 278
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mAutoHapticDialog:Landroid/app/AlertDialog$Builder;

    const v8, 0x7f0910dc

    new-instance v9, Lcom/android/settings/VoiceInputControlSettings$4;

    invoke-direct {v9, p0, v0}, Lcom/android/settings/VoiceInputControlSettings$4;-><init>(Lcom/android/settings/VoiceInputControlSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v6, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 285
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mAutoHapticDialog:Landroid/app/AlertDialog$Builder;

    const v8, 0x7f0910dd

    new-instance v9, Lcom/android/settings/VoiceInputControlSettings$5;

    invoke-direct {v9, p0}, Lcom/android/settings/VoiceInputControlSettings$5;-><init>(Lcom/android/settings/VoiceInputControlSettings;)V

    invoke-virtual {v6, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 292
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mAutoHapticDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 293
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mAutoHapticDialog:Landroid/app/AlertDialog$Builder;

    new-instance v8, Lcom/android/settings/VoiceInputControlSettings$6;

    invoke-direct {v8, p0}, Lcom/android/settings/VoiceInputControlSettings$6;-><init>(Lcom/android/settings/VoiceInputControlSettings;)V

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 301
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mAutoHapticDialog:Landroid/app/AlertDialog$Builder;

    new-instance v8, Lcom/android/settings/VoiceInputControlSettings$7;

    invoke-direct {v8, p0}, Lcom/android/settings/VoiceInputControlSettings$7;-><init>(Lcom/android/settings/VoiceInputControlSettings;)V

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 312
    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mAutoHapticDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 313
    iput-boolean v7, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsAutoHapticDialogShowing:Z

    .line 315
    .end local v0           #check:Landroid/widget/CheckBox;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #layout:Landroid/view/View;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->updateUIVoiceInputControl()V

    .line 316
    return-void

    .line 270
    .restart local v0       #check:Landroid/widget/CheckBox;
    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    .restart local v2       #layout:Landroid/view/View;
    :cond_2
    const v8, 0x7f0910db

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 630
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 631
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 633
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 635
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mRotation:I

    .line 636
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->updateUIVoiceInputControl()V

    .line 637
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstance"

    .prologue
    const/16 v9, 0x10

    const/4 v11, -0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 131
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    sput-object p0, Lcom/android/settings/VoiceInputControlSettings;->voiceInputControlSettings:Lcom/android/settings/VoiceInputControlSettings;

    .line 133
    new-instance v5, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v5}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    iput-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mRotation:I

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 138
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 139
    const-string v5, "fromHelp"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsFromHelp:Z

    .line 140
    if-eqz p1, :cond_0

    .line 142
    const-string v5, "isfromhelp"

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsFromHelp:Z

    .line 144
    :cond_0
    const-string v5, "fromHelp"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 149
    :cond_1
    const v5, 0x7f0700b3

    invoke-virtual {p0, v5}, Lcom/android/settings/VoiceInputControlSettings;->addPreferencesFromResource(I)V

    .line 151
    invoke-static {}, Lcom/android/settings/VoiceInputControlSettings;->isChatONVPhone()Z

    move-result v5

    if-nez v5, :cond_a

    move v1, v6

    .line 153
    .local v1, chatONVHide1:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 154
    .local v0, activity:Landroid/app/Activity;
    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 156
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 157
    iput-boolean v6, p0, Lcom/android/settings/VoiceInputControlSettings;->isTablet:Z

    .line 159
    :cond_2
    instance-of v5, v0, Landroid/preference/PreferenceActivity;

    if-eqz v5, :cond_4

    move-object v4, v0

    .line 160
    check-cast v4, Landroid/preference/PreferenceActivity;

    .line 161
    .local v4, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_4

    .line 162
    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0f001b

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 164
    .local v3, padding:I
    iget-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v7, v7, v3, v7}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 165
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 167
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v9, Landroid/app/ActionBar$LayoutParams;

    const/16 v10, 0x15

    invoke-direct {v9, v11, v11, v10}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v8, v9}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 172
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarLayout:Landroid/view/View;

    .line 175
    .end local v3           #padding:I
    .end local v4           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 177
    const-string v5, "voice_input_control"

    invoke-virtual {p0, v5}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mVoiceInputCategory:Landroid/preference/PreferenceCategory;

    .line 178
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlSettings;->mVoiceInputCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 182
    :cond_5
    const-string v5, "voice_input_control_incomming_calls"

    invoke-virtual {p0, v5}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    .line 183
    const-string v5, "voice_input_control_chatonv"

    invoke-virtual {p0, v5}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    .line 184
    const-string v5, "voice_input_control_alarm"

    invoke-virtual {p0, v5}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    .line 185
    const-string v5, "voice_input_control_camera"

    invoke-virtual {p0, v5}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    .line 186
    const-string v5, "voice_input_control_music"

    invoke-virtual {p0, v5}, Lcom/android/settings/VoiceInputControlSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 191
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "voice_input_control_incomming_calls"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 195
    :cond_7
    if-eq v1, v6, :cond_8

    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->isChatOnVInstalled()Z

    move-result v5

    if-nez v5, :cond_9

    .line 196
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voice_input_control_chatonv"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 200
    :cond_9
    return-void

    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #chatONVHide1:Z
    :cond_a
    move v1, v7

    .line 151
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 643
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 645
    iput-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_1

    .line 648
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 649
    iput-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 653
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 654
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 655
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 451
    .local v0, state:I
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v4, v0, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090d29

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 454
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 456
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mVoiceInputControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 458
    iput v3, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpState:I

    .line 460
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 461
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 462
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 463
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 485
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_input_control_incomming_calls"

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 503
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->isAllOptionDisabled()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 508
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 509
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090d29

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 510
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 514
    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.VOICECONTROL_SWITCH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 515
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 517
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    move v1, v3

    .line 486
    goto :goto_0

    .line 489
    :cond_3
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 490
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_input_control_chatonv"

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_4
    move v1, v3

    goto :goto_3

    .line 492
    :cond_5
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_input_control_alarm"

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_4
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_6
    move v1, v3

    goto :goto_4

    .line 495
    :cond_7
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 496
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_input_control_camera"

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_5
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_8
    move v1, v3

    goto :goto_5

    .line 498
    :cond_9
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_input_control_music"

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_6
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_a
    move v1, v3

    goto :goto_6

    .line 512
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "voice_input_control"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 320
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->setBargeInSummary()V

    .line 323
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v4, "enterprise_policy"

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 330
    .local v0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 332
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v1, v3}, Landroid/app/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->finish()V

    .line 371
    :cond_1
    :goto_0
    return-void

    .line 339
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/VoiceInputControlSettings;->updateUIVoiceInputControl()V

    .line 340
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "voice_input_control"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/VoiceInputControlSettings;->mVoiceInputControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 346
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    .line 347
    iget-object v4, p0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "voice_input_control_incomming_calls"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 352
    :cond_3
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    .line 353
    iget-object v4, p0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "voice_input_control_chatonv"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 357
    :cond_4
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    .line 358
    iget-object v4, p0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "voice_input_control_alarm"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 362
    :cond_5
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_6

    .line 363
    iget-object v4, p0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "voice_input_control_camera"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 367
    :cond_6
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/VoiceInputControlSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "voice_input_control_music"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_b

    :goto_5
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_7
    move v1, v3

    .line 347
    goto :goto_1

    :cond_8
    move v1, v3

    .line 353
    goto :goto_2

    :cond_9
    move v1, v3

    .line 358
    goto :goto_3

    :cond_a
    move v1, v3

    .line 363
    goto :goto_4

    :cond_b
    move v2, v3

    .line 368
    goto :goto_5
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    const/4 v1, 0x1

    .line 204
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 205
    iget-boolean v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mIsFromHelp:Z

    if-ne v0, v1, :cond_0

    .line 206
    const-string v0, "isfromhelp"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 208
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 467
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 469
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 474
    iput-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 478
    iput-object v2, p0, Lcom/android/settings/VoiceInputControlSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 480
    :cond_2
    return-void
.end method

.method public setBargeInSummary()V
    .locals 28

    .prologue
    .line 556
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/VoiceInputControlSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 557
    .local v9, context:Landroid/content/Context;
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 558
    .local v16, resources:Landroid/content/res/Resources;
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 559
    .local v8, configuration:Landroid/content/res/Configuration;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    .line 561
    .local v15, previousLocale:Ljava/util/Locale;
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "voicetalk_language"

    invoke-static/range {v25 .. v26}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 563
    .local v23, voiceLocale:Ljava/lang/String;
    if-nez v23, :cond_a

    .line 564
    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v23

    .line 574
    :cond_0
    :goto_0
    const-string v25, "en-gb_GB"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 575
    const-string v23, "en_GB"

    .line 577
    :cond_1
    new-instance v24, Ljava/util/Locale;

    invoke-virtual {v15}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v15}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    .local v24, voicetalkLocale:Ljava/util/Locale;
    const-string v25, "pt-BR"

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 580
    const-string v25, "-"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 581
    .local v17, splitVoiceLocale:[Ljava/lang/String;
    new-instance v24, Ljava/util/Locale;

    .end local v24           #voicetalkLocale:Ljava/util/Locale;
    const/16 v25, 0x0

    aget-object v25, v17, v25

    const/16 v26, 0x1

    aget-object v26, v17, v26

    invoke-direct/range {v24 .. v26}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .end local v17           #splitVoiceLocale:[Ljava/lang/String;
    .restart local v24       #voicetalkLocale:Ljava/util/Locale;
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v25

    if-eqz v25, :cond_3

    const-string v25, "zh-CN"

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 585
    sget-object v24, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 587
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isUseChineseModel()Z

    move-result v25

    if-nez v25, :cond_4

    invoke-virtual/range {v24 .. v24}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v25

    const-string v26, "zh_CN"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 588
    sget-object v24, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 591
    :cond_4
    move-object/from16 v0, v24

    iput-object v0, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 592
    const/16 v25, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v8, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 594
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a000a

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 595
    .local v5, bargeInCallCommands:[Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a000b

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 596
    .local v4, bargeInAlarmCommands:[Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a000c

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 597
    .local v6, bargeInCameraCommands:[Ljava/lang/String;
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a000d

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 600
    .local v7, bargeInMusicCommands:[Ljava/lang/String;
    iput-object v15, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 601
    const/16 v25, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v8, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 603
    const v25, 0x7f0910eb

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 604
    .local v19, tempForCall:Ljava/lang/String;
    const v25, 0x7f0910ec

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 605
    .local v21, tempForChatOn:Ljava/lang/String;
    const v25, 0x7f0910ed

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 606
    .local v18, tempForAlarm:Ljava/lang/String;
    const v25, 0x7f0910ee

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 607
    .local v20, tempForCamera:Ljava/lang/String;
    const v25, 0x7f0910f0

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 610
    .local v22, tempForMusic:Ljava/lang/String;
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aget-object v27, v5, v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x1

    aget-object v27, v5, v27

    aput-object v27, v25, v26

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 611
    .local v11, guideCallString:Ljava/lang/String;
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aget-object v27, v5, v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x1

    aget-object v27, v5, v27

    aput-object v27, v25, v26

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 612
    .local v13, guideChatOnVString:Ljava/lang/String;
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aget-object v27, v4, v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x1

    aget-object v27, v4, v27

    aput-object v27, v25, v26

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 613
    .local v10, guideAlarmString:Ljava/lang/String;
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aget-object v27, v6, v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x1

    aget-object v27, v6, v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    const/16 v27, 0x2

    aget-object v27, v6, v27

    aput-object v27, v25, v26

    const/16 v26, 0x3

    const/16 v27, 0x3

    aget-object v27, v6, v27

    aput-object v27, v25, v26

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 614
    .local v12, guideCameraString:Ljava/lang/String;
    const/16 v25, 0x6

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    aget-object v27, v7, v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    const/16 v27, 0x1

    aget-object v27, v7, v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    const/16 v27, 0x2

    aget-object v27, v7, v27

    aput-object v27, v25, v26

    const/16 v26, 0x3

    const/16 v27, 0x3

    aget-object v27, v7, v27

    aput-object v27, v25, v26

    const/16 v26, 0x4

    const/16 v27, 0x4

    aget-object v27, v7, v27

    aput-object v27, v25, v26

    const/16 v26, 0x5

    const/16 v27, 0x5

    aget-object v27, v7, v27

    aput-object v27, v25, v26

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 616
    .local v14, guideMusicString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mIncommingCalls:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 618
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mChatonV:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 620
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mAlarm:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 622
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mCamera:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 624
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_9

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/VoiceInputControlSettings;->mMusic:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 626
    :cond_9
    return-void

    .line 565
    .end local v4           #bargeInAlarmCommands:[Ljava/lang/String;
    .end local v5           #bargeInCallCommands:[Ljava/lang/String;
    .end local v6           #bargeInCameraCommands:[Ljava/lang/String;
    .end local v7           #bargeInMusicCommands:[Ljava/lang/String;
    .end local v10           #guideAlarmString:Ljava/lang/String;
    .end local v11           #guideCallString:Ljava/lang/String;
    .end local v12           #guideCameraString:Ljava/lang/String;
    .end local v13           #guideChatOnVString:Ljava/lang/String;
    .end local v14           #guideMusicString:Ljava/lang/String;
    .end local v18           #tempForAlarm:Ljava/lang/String;
    .end local v19           #tempForCall:Ljava/lang/String;
    .end local v20           #tempForCamera:Ljava/lang/String;
    .end local v21           #tempForChatOn:Ljava/lang/String;
    .end local v22           #tempForMusic:Ljava/lang/String;
    .end local v24           #voicetalkLocale:Ljava/util/Locale;
    :cond_a
    const-string v25, "v-es-LA"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 566
    const-string v23, "es"

    goto/16 :goto_0
.end method
