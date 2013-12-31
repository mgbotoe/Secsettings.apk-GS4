.class public final Lcom/android/settings/guide/WifiSettingsGuider;
.super Lcom/android/settings/guide/GuiderBase;
.source "WifiSettingsGuider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Lcom/android/settings/guide/GuiderLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/guide/WifiSettingsGuider$8;,
        Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;,
        Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;
    }
.end annotation


# static fields
.field public static isWifiGuideOn:Z

.field private static mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;


# instance fields
.field private builderstartDialog:Landroid/app/AlertDialog;

.field private count:I

.field private mActivity:Landroid/app/Activity;

.field private mClosed:Z

.field private mConnectSuccess:Z

.field private mConnecting:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCreate:Z

.field private mEmptyScanResultAttempts:I

.field private mEnableScanMenuItem:Z

.field private mFirstCheck:Z

.field private mFirstStart:Z

.field public mHandler:Landroid/os/Handler;

.field private mHelpDialogC:Lcom/android/settings/helpdialog/TwHelpDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

.field private mScreenOnCheck:I

.field private mSecurityDialogRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mStateContainerRestored:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

.field private mStateContainerShowed:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

.field private final mWiFiIntentFilter:Landroid/content/IntentFilter;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sput-object v0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 123
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/guide/WifiSettingsGuider;->isWifiGuideOn:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0, p1}, Lcom/android/settings/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    .line 85
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 86
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 87
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mStateContainerRestored:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 89
    iput-boolean v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    .line 92
    iput-boolean v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 93
    iput-boolean v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectSuccess:Z

    .line 94
    iput-boolean v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnecting:Z

    .line 95
    iput v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 96
    iput-boolean v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mCreate:Z

    .line 99
    iput-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    .line 100
    iput-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 101
    iput-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 103
    iput-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    iput-boolean v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    .line 111
    iput-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    .line 117
    iput-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mSecurityDialogRef:Ljava/lang/ref/WeakReference;

    .line 120
    iput v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    .line 121
    iput v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->count:I

    .line 122
    iput-boolean v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstCheck:Z

    .line 125
    new-instance v0, Lcom/android/settings/guide/WifiSettingsGuider$1;

    invoke-direct {v0, p0}, Lcom/android/settings/guide/WifiSettingsGuider$1;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mHandler:Landroid/os/Handler;

    .line 148
    iput-object p1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    .line 152
    new-instance v0, Lcom/android/settings/guide/WifiSettingsGuider$2;

    invoke-direct {v0, p0}, Lcom/android/settings/guide/WifiSettingsGuider$2;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 160
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    .line 161
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 168
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWiFiIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/guide/WifiSettingsGuider;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/guide/WifiSettingsGuider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectSuccess:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/settings/guide/WifiSettingsGuider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/guide/WifiSettingsGuider;)Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    return-object v0
.end method

.method private initHelpDialogContent(II)V
    .locals 9
    .parameter "resID"
    .parameter "layout"

    .prologue
    const/4 v8, 0x0

    .line 595
    iget-object v5, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 600
    .local v1, bubbleView:Landroid/view/View;
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.samsung.helphub"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 601
    .local v3, info:Landroid/content/pm/PackageInfo;
    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 602
    const v5, 0x7f0400ab

    if-eq p2, v5, :cond_0

    .line 603
    const v5, 0x7f0b01b4

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 605
    .local v4, summary:Landroid/widget/TextView;
    if-eqz v4, :cond_0

    .line 606
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    .end local v4           #summary:Landroid/widget/TextView;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v5, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setContentView(Landroid/view/View;)V

    .line 627
    const v5, 0x7f0b0002

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 630
    .local v0, btnClose:Landroid/widget/ImageButton;
    if-eqz v0, :cond_1

    .line 631
    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    .line 632
    new-instance v5, Lcom/android/settings/guide/WifiSettingsGuider$7;

    invoke-direct {v5, p0}, Lcom/android/settings/guide/WifiSettingsGuider$7;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    :cond_1
    return-void

    .line 611
    .end local v0           #btnClose:Landroid/widget/ImageButton;
    .restart local v3       #info:Landroid/content/pm/PackageInfo;
    :cond_2
    const v5, 0x7f0b0007

    :try_start_1
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 613
    .restart local v4       #summary:Landroid/widget/TextView;
    if-nez v4, :cond_3

    .line 614
    const v5, 0x7f0b01b4

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #summary:Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 617
    .restart local v4       #summary:Landroid/widget/TextView;
    :cond_3
    if-eqz v4, :cond_0

    .line 618
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 621
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    .end local v4           #summary:Landroid/widget/TextView;
    :catch_0
    move-exception v2

    .line 622
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private invalidateHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 6
    .parameter "type"

    .prologue
    .line 523
    const/4 v0, -0x1

    .line 524
    .local v0, layout:I
    const/4 v1, -0x1

    .line 526
    .local v1, resID:I
    iget-object v2, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v2, :cond_0

    .line 586
    :goto_0
    return-void

    .line 530
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/guide/WifiSettingsGuider;->setFocus(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 532
    sget-object v2, Lcom/android/settings/guide/WifiSettingsGuider$8;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 585
    :cond_1
    :goto_1
    :pswitch_0
    invoke-direct {p0, v1, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->initHelpDialogContent(II)V

    goto :goto_0

    .line 538
    :pswitch_1
    const v1, 0x7f09121b

    .line 539
    const v0, 0x7f0400b0

    .line 540
    goto :goto_1

    .line 542
    :pswitch_2
    const v1, 0x7f09121a

    .line 543
    const v0, 0x7f0400b0

    .line 544
    goto :goto_1

    .line 546
    :pswitch_3
    const v1, 0x7f091219

    .line 547
    const v0, 0x7f0400b0

    .line 548
    goto :goto_1

    .line 550
    :pswitch_4
    const v1, 0x7f09121d

    .line 551
    const v0, 0x7f0400ad

    .line 552
    goto :goto_1

    .line 554
    :pswitch_5
    const v1, 0x7f09121c

    .line 555
    const v0, 0x7f0400b0

    .line 556
    goto :goto_1

    .line 558
    :pswitch_6
    const v1, 0x7f091215

    .line 559
    const v0, 0x7f0400ab

    .line 563
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 567
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/settings/guide/WifiSettingsGuider$6;

    invoke-direct {v3, p0}, Lcom/android/settings/guide/WifiSettingsGuider$6;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method private setFocus(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 1105
    sget-object v2, Lcom/android/settings/guide/WifiSettingsGuider$8;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1129
    :cond_0
    :goto_0
    return-void

    .line 1107
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 1108
    iget-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1110
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 1111
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    .line 1113
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1114
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 1105
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private setGuidedActionBarClickable(Z)V
    .locals 4
    .parameter "clickable"

    .prologue
    .line 799
    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    .line 800
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 802
    .local v0, ab:Landroid/app/ActionBar;
    :goto_0
    if-eqz v0, :cond_1

    .line 803
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 805
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 806
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eq v3, p1, :cond_0

    .line 807
    invoke-virtual {v2, p1}, Landroid/view/View;->setClickable(Z)V

    .line 808
    invoke-virtual {v2, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 811
    :cond_0
    if-eqz p1, :cond_1

    .line 812
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 816
    .end local v2           #v:Landroid/view/View;
    :cond_1
    return-void

    .line 800
    .end local v0           #ab:Landroid/app/ActionBar;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setScanOptionEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 826
    iput-boolean p1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    .line 828
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    .line 830
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 831
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 833
    :cond_0
    return-void
.end method

.method private showHelpDialog(IILcom/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V
    .locals 2
    .parameter "resID"
    .parameter "layout"
    .parameter "touchTransparency"
    .parameter "type"
    .parameter "needShowWrongToast"

    .prologue
    .line 511
    new-instance v0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 512
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, p3}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 513
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0, p5}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setShowWrongInputToast(Z)V

    .line 514
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 516
    invoke-direct {p0, p1, p2}, Lcom/android/settings/guide/WifiSettingsGuider;->initHelpDialogContent(II)V

    .line 518
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->show()V

    .line 519
    sput-object p4, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 520
    return-void
.end method


# virtual methods
.method public dismissCompleteDialog()V
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 779
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 781
    :cond_1
    return-void
.end method

.method public dismissHelpDialog()V
    .locals 4

    .prologue
    .line 428
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 430
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 432
    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$8;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    sget-object v2, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v2}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 449
    :goto_0
    :sswitch_0
    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sput-object v1, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 450
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    .line 455
    :cond_0
    :goto_1
    return-void

    .line 434
    :sswitch_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 435
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "WifiSettingsGuider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 438
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :sswitch_2
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 432
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method public dismissHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 463
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_0

    .line 464
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$8;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 481
    :goto_0
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sput-object v0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 482
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 484
    :cond_0
    return-void

    .line 466
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 467
    invoke-direct {p0, v2}, Lcom/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    goto :goto_0

    .line 470
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    goto :goto_0

    .line 464
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic finish()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcom/android/settings/guide/GuiderBase;->finish()V

    return-void
.end method

.method protected handleEvent(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 646
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 650
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 651
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v4, :cond_0

    .line 652
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 656
    :cond_0
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 659
    .local v2, network:Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_4

    .line 663
    iget v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    if-lt v4, v8, :cond_3

    .line 664
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NO_NETWORK:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 754
    .end local v2           #network:Landroid/net/NetworkInfo;
    :cond_2
    :goto_0
    return-void

    .line 666
    .restart local v2       #network:Landroid/net/NetworkInfo;
    :cond_3
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 669
    :cond_4
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-nez v4, :cond_5

    .line 670
    iput v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 671
    iget-boolean v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    if-nez v4, :cond_2

    .line 672
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 675
    :cond_5
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    if-eqz v4, :cond_6

    .line 676
    iput v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 677
    iput-boolean v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 678
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 680
    :cond_6
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 681
    iput v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    goto :goto_0

    .line 685
    .end local v2           #network:Landroid/net/NetworkInfo;
    :cond_7
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 686
    const-string v4, "networkInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 689
    .local v1, info:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnecting:Z

    if-eqz v4, :cond_8

    .line 690
    iput-boolean v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 691
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 692
    :cond_8
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectSuccess:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnecting:Z

    if-nez v4, :cond_9

    .line 693
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_SUCCESSFULLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto :goto_0

    .line 694
    :cond_9
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_2

    .line 695
    iput-boolean v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 696
    iput-boolean v6, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnecting:Z

    .line 697
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 699
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_2

    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v5, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v4, v5, :cond_a

    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v5, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_SUCCESSFULLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v4, v5, :cond_2

    .line 703
    :cond_a
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 705
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_0

    .line 706
    :cond_b
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 707
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_0

    .line 712
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_c
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 717
    iget v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->count:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_d

    iget v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->count:I

    .line 718
    :cond_d
    iget v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->count:I

    if-ne v4, v8, :cond_e

    .line 719
    iput-boolean v7, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstCheck:Z

    .line 721
    :cond_e
    const-string v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 724
    .local v3, state:I
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Fragment;->isResumed()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-boolean v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstCheck:Z

    if-eqz v4, :cond_10

    .line 726
    if-eq v3, v7, :cond_f

    if-nez v3, :cond_2

    .line 728
    :cond_f
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 729
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissCompleteDialog()V

    .line 730
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 731
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->onDestroy()V

    goto/16 :goto_0

    .line 735
    :cond_10
    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v4}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    goto/16 :goto_0

    .line 748
    .end local v3           #state:I
    :cond_11
    const-string v4, "android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 749
    const-string v4, "WifiSettingsGuider"

    const-string v5, "Hotspot is ON"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissCompleteDialog()V

    .line 751
    iget-object v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 752
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->onDestroy()V

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 268
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "which"

    .prologue
    .line 910
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 912
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->showCompleteDialog()V

    .line 914
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 300
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v0, v1, :cond_0

    .line 301
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-direct {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->invalidateHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 303
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 174
    const-string v0, "WifiSettingsGuider"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 179
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstCheck:Z

    .line 180
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 185
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mFirstStart:Z

    .line 186
    iput-boolean v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectSuccess:Z

    .line 187
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnecting:Z

    .line 189
    iput v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 190
    iput-boolean v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    .line 191
    iput-boolean v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mCreate:Z

    .line 192
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 197
    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->builderstartDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v1}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 204
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 205
    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 208
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->finish()V

    .line 215
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "WifiSettingsGuider"

    const-string v2, "IllegalArgumentException : mReceiver is not registered."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 906
    return-void
.end method

.method public onKey(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x6f

    const/16 v5, 0x42

    .line 1000
    const/4 v1, 0x0

    .line 1001
    .local v1, isHandled:Z
    const/4 v2, 0x1

    .line 1005
    .local v2, passToView:Z
    sget-object v3, Lcom/android/settings/guide/WifiSettingsGuider$8;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v4}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1082
    :cond_0
    :goto_0
    :pswitch_0
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 1083
    iget-object v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 1085
    .local v0, focus:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1086
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_5

    .line 1087
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 1094
    .end local v0           #focus:Landroid/view/View;
    :cond_1
    :goto_1
    return v1

    .line 1008
    :pswitch_1
    if-eq p1, v6, :cond_2

    if-eq p1, v5, :cond_2

    const/16 v3, 0x17

    if-eq p1, v3, :cond_2

    const/16 v3, 0x14

    if-eq p1, v3, :cond_2

    const/16 v3, 0x15

    if-eq p1, v3, :cond_2

    const/16 v3, 0x16

    if-eq p1, v3, :cond_2

    const/16 v3, 0x13

    if-eq p1, v3, :cond_2

    const/16 v3, 0x75

    if-eq p1, v3, :cond_2

    const/16 v3, 0x76

    if-eq p1, v3, :cond_2

    const/16 v3, 0x3d

    if-eq p1, v3, :cond_2

    const/16 v3, 0x5c

    if-eq p1, v3, :cond_2

    const/16 v3, 0x5d

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/16 v3, 0x7b

    if-eq p1, v3, :cond_2

    const/16 v3, 0x7a

    if-eq p1, v3, :cond_2

    .line 1023
    const/4 v1, 0x1

    goto :goto_0

    .line 1024
    :cond_2
    if-ne p1, v5, :cond_0

    .line 1025
    const/4 v2, 0x0

    .line 1026
    const/4 v1, 0x1

    .line 1028
    iget-object v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-static {v3, v4}, Lcom/android/settings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/android/settings/helpdialog/TwHelpDialog;)V

    goto :goto_0

    .line 1034
    :pswitch_2
    if-ne p1, v6, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 1036
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 1037
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->showCompleteDialog()V

    .line 1039
    :cond_3
    const/4 v2, 0x0

    .line 1040
    const/4 v1, 0x1

    .line 1041
    goto :goto_0

    .line 1051
    :pswitch_3
    if-ne p1, v6, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 1053
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 1054
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->showCompleteDialog()V

    .line 1055
    const/4 v2, 0x0

    .line 1056
    const/4 v1, 0x1

    goto :goto_0

    .line 1058
    :cond_4
    if-ne p1, v5, :cond_0

    .line 1059
    const/4 v2, 0x0

    .line 1060
    const/4 v1, 0x1

    .line 1062
    iget-object v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-static {v3, v4}, Lcom/android/settings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/android/settings/helpdialog/TwHelpDialog;)V

    goto/16 :goto_0

    .line 1069
    :pswitch_4
    if-ne p1, v5, :cond_0

    .line 1070
    const/4 v2, 0x0

    .line 1071
    const/4 v1, 0x1

    .line 1073
    iget-object v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    invoke-static {v3, v4}, Lcom/android/settings/guide/GuideModeHelper;->emulateTouchOnFocusedView(Landroid/app/Activity;Lcom/android/settings/helpdialog/TwHelpDialog;)V

    goto/16 :goto_0

    .line 1089
    .restart local v0       #focus:Landroid/view/View;
    :cond_5
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_1

    .line 1005
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialogInterface"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    .line 936
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 991
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, v1, :cond_0

    .line 993
    iget v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEmptyScanResultAttempts:I

    .line 994
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    .line 996
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 281
    iget-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 282
    .local v1, pm:Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 286
    .local v0, isScreenOn:Z
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    sget-object v2, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 288
    iget-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mStateContainerRestored:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    .line 291
    :cond_0
    if-nez v0, :cond_1

    .line 292
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    .line 294
    :cond_1
    const-string v2, "WifiSettingsGuider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPause :: mScreenOnCheck"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/settings/guide/WifiSettingsGuider;->isWifiGuideOn:Z

    .line 296
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 272
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 274
    .local v0, scan:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 275
    iget-boolean v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mEnableScanMenuItem:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 277
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 219
    const-string v1, "WifiSettingsGuider"

    const-string v4, "onResume()"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    sput-boolean v2, Lcom/android/settings/guide/WifiSettingsGuider;->isWifiGuideOn:Z

    .line 223
    :cond_0
    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v1, v4, :cond_4

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    .line 224
    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v1, v4, :cond_5

    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    .line 229
    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 238
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    iget-object v1, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_2

    .line 240
    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_2

    .line 242
    iget-boolean v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    if-nez v1, :cond_2

    .line 243
    const-string v1, "WifiSettingsGuider"

    const-string v2, "onResume :: showHelpDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 245
    iput v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mScreenOnCheck:I

    .line 250
    :cond_2
    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mCreate:Z

    if-nez v1, :cond_3

    .line 252
    const-wide/16 v1, 0x320

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_3
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissCompleteDialog()V

    .line 258
    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->onDestroy()V

    .line 262
    :cond_3
    iput-boolean v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mCreate:Z

    .line 263
    return-void

    :cond_4
    move v1, v3

    .line 223
    goto/16 :goto_0

    :cond_5
    move v1, v3

    .line 224
    goto :goto_1

    .line 232
    :cond_6
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v4, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-eq v1, v4, :cond_1

    .line 233
    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v1}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 234
    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mStateContainerShowed:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 235
    iget-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mStateContainerRestored:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    goto/16 :goto_2

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 894
    return-void
.end method

.method public bridge synthetic onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcom/android/settings/guide/GuiderBase;->onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z

    move-result v0

    return v0
.end method

.method public setEnabler(Lcom/android/settings/guide/GuideFragment$WrappedEnabler;)V
    .locals 1
    .parameter "enabler"

    .prologue
    .line 854
    iput-object p1, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    .line 856
    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/guide/WifiSettingsGuider;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mEnabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    invoke-virtual {v0, p0}, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;->setOnEnablerSwitchListener(Lcom/android/settings/guide/OnInternalSwitcherListener;)V

    .line 859
    :cond_0
    return-void
.end method

.method public showCompleteDialog()V
    .locals 5

    .prologue
    .line 758
    iget-object v2, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v2, :cond_0

    .line 759
    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 760
    .local v1, showedType:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;
    sget-object v2, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v2}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 761
    sget-object v2, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 763
    .end local v1           #showedType:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/android/settings/helpdialog/TwHelpDialog;

    if-nez v2, :cond_1

    .line 764
    iget-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400b4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 765
    .local v0, bView:Landroid/view/View;
    new-instance v2, Lcom/android/settings/helpdialog/TwHelpDialog;

    iget-object v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 766
    iget-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2, v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 767
    iget-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/android/settings/helpdialog/TwHelpDialog;

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;)V

    .line 768
    iget-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/android/settings/helpdialog/TwHelpDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 769
    iget-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/android/settings/helpdialog/TwHelpDialog;

    iget-object v3, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/android/settings/helpdialog/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 770
    iget-object v2, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mHelpDialogC:Lcom/android/settings/helpdialog/TwHelpDialog;

    invoke-virtual {v2}, Lcom/android/settings/helpdialog/TwHelpDialog;->show()V

    .line 772
    .end local v0           #bView:Landroid/view/View;
    :cond_1
    return-void
.end method

.method public showHelpDialog()V
    .locals 0

    .prologue
    .line 864
    return-void
.end method

.method public showHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V
    .locals 7
    .parameter "type"

    .prologue
    const v2, 0x7f0400b0

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 312
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne p1, v0, :cond_0

    move v0, v5

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->setScanOptionEnable(Z)V

    .line 314
    iget-object v0, p0, Lcom/android/settings/guide/GuiderBase;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne v0, p1, :cond_1

    .line 423
    :goto_1
    :pswitch_0
    return-void

    :cond_0
    move v0, v1

    .line 312
    goto :goto_0

    .line 318
    :cond_1
    sget-object v6, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 320
    .local v6, showedType:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider;->mShowedDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {p0, v0}, Lcom/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 321
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mRestorePrevDialog:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 323
    invoke-direct {p0, p1}, Lcom/android/settings/guide/WifiSettingsGuider;->setFocus(Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;)V

    .line 324
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    .line 326
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$8;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 374
    :goto_2
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mClosed:Z

    .line 378
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    if-ne p1, v0, :cond_2

    move v1, v5

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/settings/guide/WifiSettingsGuider;->setGuidedActionBarClickable(Z)V

    .line 380
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$8;->$SwitchMap$com$android$settings$guide$WifiSettingsGuider$GuideStates:[I

    invoke-virtual {p1}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 388
    :pswitch_2
    const v1, 0x7f09121b

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_1

    .line 333
    :pswitch_3
    new-instance v0, Lcom/android/settings/guide/WifiSettingsGuider$3;

    invoke-direct {v0, p0}, Lcom/android/settings/guide/WifiSettingsGuider$3;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    goto :goto_2

    .line 344
    :pswitch_4
    new-instance v0, Lcom/android/settings/guide/WifiSettingsGuider$4;

    invoke-direct {v0, p0}, Lcom/android/settings/guide/WifiSettingsGuider$4;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    goto :goto_2

    .line 356
    :pswitch_5
    new-instance v0, Lcom/android/settings/guide/WifiSettingsGuider$5;

    invoke-direct {v0, p0}, Lcom/android/settings/guide/WifiSettingsGuider$5;-><init>(Lcom/android/settings/guide/WifiSettingsGuider;)V

    iput-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->onCloseHelpDialogListener:Lcom/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    goto :goto_2

    .line 366
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v0}, Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V

    goto :goto_2

    .line 392
    :pswitch_7
    const v1, 0x7f09121a

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_1

    .line 396
    :pswitch_8
    const v1, 0x7f091219

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto :goto_1

    .line 400
    :pswitch_9
    const v1, 0x7f09121d

    const v2, 0x7f0400ad

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto/16 :goto_1

    .line 404
    :pswitch_a
    const v1, 0x7f09121c

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto/16 :goto_1

    .line 408
    :pswitch_b
    const v1, 0x7f091215

    const v2, 0x7f0400ab

    sget-object v3, Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/android/settings/helpdialog/TwHelpDialog$TouchMode;

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/WifiSettingsGuider;->showHelpDialog(IILcom/android/settings/helpdialog/TwHelpDialog$TouchMode;Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;Z)V

    goto/16 :goto_1

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 380
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_b
        :pswitch_9
    .end packed-switch
.end method

.method public bridge synthetic showHelpDialog(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/guide/GuiderBase;->showHelpDialog(Z)V

    return-void
.end method
