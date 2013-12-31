.class public Lcom/android/settings/smartscreen/SmartScreenSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SmartScreenSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final mSmartRotationHelpFolderText:[I

.field private static final mSmartRotationHelpText:[I

.field private static final mSmartScreenHelpID:[I

.field private static final mSmartStayHelpFolderText:[I

.field private static final mSmartStayHelpText:[I


# instance fields
.field private dialogTitle:I

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationImage:[I

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mHelp:Landroid/view/MenuItem;

.field private mResolver:Landroid/content/ContentResolver;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mSmartHelpText:[I

.field private mSmartPause:Landroid/preference/CheckBoxPreference;

.field private mSmartPauseAnimationImage:[I

.field private mSmartRotation:Landroid/preference/CheckBoxPreference;

.field private mSmartRotationAnimationImage:[I

.field private mSmartScreenObserver:Landroid/database/ContentObserver;

.field private mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

.field private mSmartStay:Landroid/preference/CheckBoxPreference;

.field private mSmartStayAnimationImage:[I

.field private mSupportFolderType:Z

.field public pref_common_noti:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x5

    .line 99
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    .line 100
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStayHelpText:[I

    .line 101
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotationHelpText:[I

    .line 102
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStayHelpFolderText:[I

    .line 103
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotationHelpFolderText:[I

    return-void

    .line 99
    nop

    :array_0
    .array-data 0x4
        0xf9t 0x3t 0xbt 0x7ft
        0xfat 0x3t 0xbt 0x7ft
    .end array-data

    .line 100
    :array_1
    .array-data 0x4
        0xb6t 0xft 0x9t 0x7ft
        0xb7t 0xft 0x9t 0x7ft
        0xb8t 0xft 0x9t 0x7ft
        0xb9t 0xft 0x9t 0x7ft
        0xbat 0xft 0x9t 0x7ft
    .end array-data

    .line 101
    :array_2
    .array-data 0x4
        0xbet 0xft 0x9t 0x7ft
        0xbbt 0xft 0x9t 0x7ft
        0xb8t 0xft 0x9t 0x7ft
        0xb9t 0xft 0x9t 0x7ft
        0xbat 0xft 0x9t 0x7ft
    .end array-data

    .line 102
    :array_3
    .array-data 0x4
        0xb6t 0xft 0x9t 0x7ft
        0xb7t 0xft 0x9t 0x7ft
        0xb8t 0xft 0x9t 0x7ft
        0xb9t 0xft 0x9t 0x7ft
        0xbat 0xft 0x9t 0x7ft
        0xcct 0x15t 0x9t 0x7ft
    .end array-data

    .line 103
    :array_4
    .array-data 0x4
        0xbet 0xft 0x9t 0x7ft
        0xbbt 0xft 0x9t 0x7ft
        0xb8t 0xft 0x9t 0x7ft
        0xb9t 0xft 0x9t 0x7ft
        0xbat 0xft 0x9t 0x7ft
        0xcct 0x15t 0x9t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 85
    iput-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 86
    iput-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    .line 92
    iput-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 94
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStayAnimationImage:[I

    .line 95
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotationAnimationImage:[I

    .line 96
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartPauseAnimationImage:[I

    .line 113
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    .line 307
    new-instance v0, Lcom/android/settings/smartscreen/SmartScreenSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$2;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationHandler:Landroid/os/Handler;

    .line 579
    new-instance v0, Lcom/android/settings/smartscreen/SmartScreenSettings$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/smartscreen/SmartScreenSettings$7;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    .line 685
    new-instance v0, Lcom/android/settings/smartscreen/SmartScreenSettings$12;

    invoke-direct {v0, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$12;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    return-void

    .line 94
    nop

    :array_0
    .array-data 0x4
        0x66t 0x4t 0x2t 0x7ft
        0x67t 0x4t 0x2t 0x7ft
        0x68t 0x4t 0x2t 0x7ft
        0x69t 0x4t 0x2t 0x7ft
    .end array-data

    .line 95
    :array_1
    .array-data 0x4
        0xdt 0x4t 0x2t 0x7ft
        0xet 0x4t 0x2t 0x7ft
        0xft 0x4t 0x2t 0x7ft
        0x10t 0x4t 0x2t 0x7ft
    .end array-data

    .line 96
    :array_2
    .array-data 0x4
        0x5ct 0x4t 0x2t 0x7ft
        0x5dt 0x4t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/smartscreen/SmartScreenSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->updateAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/smartscreen/SmartScreenSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->stopAnimation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/smartscreen/SmartScreenSettings;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/smartscreen/SmartScreenSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/smartscreen/SmartScreenSettings;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/settings/smartscreen/SmartScreenSettings;->broadcastStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private broadcastStatusChanged(Ljava/lang/String;Z)V
    .locals 2
    .parameter "intent_type"
    .parameter "isEnable"

    .prologue
    .line 671
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 672
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 673
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 674
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 3

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_stay_noti"

    if-ne v0, v1, :cond_1

    .line 592
    const v0, 0x7f090fb2

    iput v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    .line 601
    :cond_0
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f091005

    invoke-virtual {p0, v1}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    invoke-virtual {p0, v1}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09072a

    new-instance v2, Lcom/android/settings/smartscreen/SmartScreenSettings$10;

    invoke-direct {v2, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$10;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/smartscreen/SmartScreenSettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$9;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/smartscreen/SmartScreenSettings$8;

    invoke-direct {v1, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$8;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 646
    return-void

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_rotation_noti"

    if-ne v0, v1, :cond_2

    .line 594
    const v0, 0x7f090fb4

    iput v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    goto :goto_0

    .line 595
    :cond_2
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_pause_noti"

    if-ne v0, v1, :cond_3

    .line 596
    const v0, 0x7f090fbf

    iput v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    goto :goto_0

    .line 597
    :cond_3
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_scroll_noti"

    if-ne v0, v1, :cond_0

    .line 598
    const v0, 0x7f090fc1

    iput v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    goto :goto_0
.end method

.method private showAllOptionDisabledDialog(IILjava/lang/String;)V
    .locals 4
    .parameter "title_res_id"
    .parameter "message_res_id"
    .parameter "key"

    .prologue
    .line 650
    move-object v0, p3

    .line 651
    .local v0, motion_type:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/smartscreen/SmartScreenSettings$11;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/smartscreen/SmartScreenSettings$11;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 667
    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 668
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    const-string v0, "SmartScreenSettings"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 343
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    .line 344
    invoke-direct {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->updateAnimation()V

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    const-string v0, "SmartScreenSettings"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private updateAnimation()V
    .locals 4

    .prologue
    const/16 v3, 0x66

    .line 318
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 319
    :cond_0
    const-string v0, "SmartScreenSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationImage:[I

    iget v2, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 322
    iget v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    .line 325
    :cond_1
    iget v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationImage:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    .line 327
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_pause_noti"

    if-ne v0, v1, :cond_2

    .line 328
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 330
    :cond_2
    iget v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationIndex:I

    if-nez v0, :cond_3

    .line 331
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 333
    :cond_3
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public createGuideDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "pref_noti"

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 295
    .local v1, mSharedPreferences:Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 296
    .local v0, do_not_show_again:Z
    if-nez v0, :cond_0

    .line 297
    const-string v2, "pref_smart_scroll_noti"

    if-ne p1, v2, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->showGuideDialogForScroll()V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->showGuideDialog()V

    goto :goto_0
.end method

.method public isAllOptionDisabled()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 677
    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "smart_scroll_adv_web"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 678
    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_scroll_adv_chrome"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 679
    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_scroll_adv_email_body"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 680
    iget-object v4, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_scroll_adv_gmail_body"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 682
    or-int/2addr v2, v3

    if-ge v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/smartscreen/SmartScreenSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$1;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 223
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 120
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const v3, 0x7f07009e

    invoke-virtual {p0, v3}, Lcom/android/settings/smartscreen/SmartScreenSettings;->addPreferencesFromResource(I)V

    .line 124
    const-string v3, "smartscreen_stay"

    invoke-virtual {p0, v3}, Lcom/android/settings/smartscreen/SmartScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    .line 125
    const-string v3, "smartscreen_rotation"

    invoke-virtual {p0, v3}, Lcom/android/settings/smartscreen/SmartScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    .line 126
    const-string v3, "smartscreen_pause"

    invoke-virtual {p0, v3}, Lcom/android/settings/smartscreen/SmartScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    .line 127
    const-string v3, "smartscreen_scroll"

    invoke-virtual {p0, v3}, Lcom/android/settings/smartscreen/SmartScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    .line 129
    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 149
    invoke-virtual {p0, v4}, Lcom/android/settings/smartscreen/SmartScreenSettings;->setHasOptionsMenu(Z)V

    .line 152
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    iget-boolean v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mOpenDetailMenu:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSettingValue:I

    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 155
    .local v0, extra_bundle:Landroid/os/Bundle;
    const-string v3, "extra_parent_preference_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, targetKey:Ljava/lang/String;
    sget v3, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSettingValue:I

    if-ne v3, v4, :cond_1

    move v2, v4

    .line 157
    .local v2, value:Z
    :goto_0
    const-string v3, "smartscreen_scroll"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 159
    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/smartscreen/SmartScreenSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 164
    .end local v0           #extra_bundle:Landroid/os/Bundle;
    .end local v1           #targetKey:Ljava/lang/String;
    .end local v2           #value:Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSupportFolderType:Z

    .line 165
    return-void

    .restart local v0       #extra_bundle:Landroid/os/Bundle;
    .restart local v1       #targetKey:Ljava/lang/String;
    :cond_1
    move v2, v5

    .line 156
    goto :goto_0

    .end local v0           #extra_bundle:Landroid/os/Bundle;
    .end local v1           #targetKey:Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 164
    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 551
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    const v0, 0x7f091167

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020186

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mHelp:Landroid/view/MenuItem;

    .line 556
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mHelp:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 559
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 560
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 565
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 572
    const/4 v1, 0x0

    .line 575
    :goto_0
    return v1

    .line 567
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 568
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "smart_screen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    invoke-virtual {p0, v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->startActivity(Landroid/content/Intent;)V

    .line 575
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 565
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 192
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 195
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 226
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, key:Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    .line 230
    .local v1, value:I
    :goto_0
    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 231
    const-string v2, "pref_smart_scroll_noti"

    iput-object v2, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    .line 232
    invoke-direct {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->makeTalkBackDisablePopup()V

    .line 242
    :cond_0
    :goto_1
    return v3

    .end local v1           #value:I
    :cond_1
    move v1, v2

    .line 228
    goto :goto_0

    .line 233
    .restart local v1       #value:I
    :cond_2
    const-string v4, "smartscreen_scroll"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 234
    const-string v4, "pref_smart_scroll_noti"

    iput-object v4, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_scroll"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 236
    const-string v4, "com.sec.SMART_SCROLL_CHANGED"

    if-ne v1, v3, :cond_3

    move v2, v3

    :cond_3
    invoke-direct {p0, v4, v2}, Lcom/android/settings/smartscreen/SmartScreenSettings;->broadcastStatusChanged(Ljava/lang/String;Z)V

    .line 238
    if-ne v1, v3, :cond_0

    .line 239
    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/smartscreen/SmartScreenSettings;->createGuideDialog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 247
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, key:Ljava/lang/String;
    const/4 v3, 0x0

    .line 251
    .local v3, value:Z
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 252
    iget-boolean v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mOpenDetailMenu:Z

    if-eqz v6, :cond_0

    sget v6, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSettingValue:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 253
    sget v6, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSettingValue:I

    if-ne v6, v4, :cond_3

    move v0, v4

    .local v0, bValue:Z
    :goto_0
    move-object v1, p2

    .line 254
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 255
    .local v1, checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 256
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 262
    .end local v0           #bValue:Z
    .end local v1           #checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    :cond_0
    const-string v6, "smartscreen_stay"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 263
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 264
    const-string v6, "pref_smart_stay_noti"

    iput-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    .line 273
    :cond_1
    :goto_1
    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 274
    invoke-direct {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->makeTalkBackDisablePopup()V

    .line 289
    :cond_2
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    return v4

    :cond_3
    move v0, v5

    .line 253
    goto :goto_0

    .line 265
    :cond_4
    const-string v6, "smartscreen_rotation"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 266
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 267
    const-string v6, "pref_smart_rotation_noti"

    iput-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    goto :goto_1

    .line 268
    :cond_5
    const-string v6, "smartscreen_pause"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 269
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 270
    const-string v6, "pref_smart_pause_noti"

    iput-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    goto :goto_1

    .line 276
    :cond_6
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_9

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "intelligent_sleep_mode"

    if-eqz v3, :cond_8

    :goto_3
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 285
    :cond_7
    :goto_4
    if-eqz v3, :cond_2

    .line 286
    iget-object v4, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/settings/smartscreen/SmartScreenSettings;->createGuideDialog(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move v4, v5

    .line 277
    goto :goto_3

    .line 278
    :cond_9
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_b

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "intelligent_rotation_mode"

    if-eqz v3, :cond_a

    :goto_5
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    :cond_a
    move v4, v5

    goto :goto_5

    .line 280
    :cond_b
    iget-object v6, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_7

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "smart_pause"

    if-eqz v3, :cond_c

    :goto_6
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 282
    const-string v4, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {p0, v4, v3}, Lcom/android/settings/smartscreen/SmartScreenSettings;->broadcastStatusChanged(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_c
    move v4, v5

    .line 281
    goto :goto_6
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 169
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 170
    const-string v0, "SmartScreenSettings"

    const-string v3, "onResume()"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v3}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 176
    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStay:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "intelligent_sleep_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 177
    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "intelligent_rotation_mode"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 178
    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartPause:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_pause"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 179
    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_scroll"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "intelligent_sleep_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "intelligent_rotation_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 185
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "smart_pause"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "smart_scroll"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 187
    return-void

    :cond_1
    move v0, v2

    .line 176
    goto :goto_0

    :cond_2
    move v0, v2

    .line 177
    goto :goto_1

    :cond_3
    move v0, v2

    .line 178
    goto :goto_2

    :cond_4
    move v0, v2

    .line 179
    goto :goto_3
.end method

.method public showGuideDialog()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 359
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 362
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 363
    .local v6, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 365
    .local v2, edit:Landroid/content/SharedPreferences$Editor;
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_0

    .line 366
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 367
    iput-object v13, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 371
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f040176

    invoke-virtual {v4, v9, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 372
    .local v5, layout:Landroid/view/View;
    const v9, 0x7f0b0138

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 374
    .local v7, mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    array-length v9, v9

    new-array v8, v9, [Landroid/widget/TextView;

    .line 376
    .local v8, tvList:[Landroid/widget/TextView;
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_stay_noti"

    if-ne v9, v10, :cond_5

    .line 377
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStayAnimationImage:[I

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationImage:[I

    .line 378
    iget-boolean v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSupportFolderType:Z

    if-eqz v9, :cond_4

    .line 379
    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStayHelpFolderText:[I

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    .line 384
    :goto_0
    const v9, 0x7f090fb2

    iput v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    .line 399
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_stay_noti"

    if-eq v9, v10, :cond_2

    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_rotation_noti"

    if-ne v9, v10, :cond_d

    .line 401
    :cond_2
    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    aget v9, v9, v12

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aput-object v9, v8, v12

    .line 402
    aget-object v9, v8, v12

    iget-object v10, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    aget v10, v10, v12

    invoke-virtual {p0, v10}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    aget v9, v9, v11

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aput-object v9, v8, v11

    .line 405
    const-string v1, ""

    .line 406
    .local v1, description:Ljava/lang/String;
    iget-boolean v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSupportFolderType:Z

    if-eqz v9, :cond_9

    .line 407
    const/4 v3, 0x1

    .local v3, i:I
    :goto_2
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    array-length v9, v9

    if-ge v3, v9, :cond_b

    .line 408
    if-eq v3, v11, :cond_3

    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    if-ne v3, v9, :cond_8

    .line 409
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    aget v10, v10, v3

    invoke-virtual {p0, v10}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 407
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 382
    .end local v1           #description:Ljava/lang/String;
    .end local v3           #i:I
    :cond_4
    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartStayHelpText:[I

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    goto :goto_0

    .line 385
    :cond_5
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_rotation_noti"

    if-ne v9, v10, :cond_7

    .line 386
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotationAnimationImage:[I

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationImage:[I

    .line 387
    iget-boolean v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSupportFolderType:Z

    if-eqz v9, :cond_6

    .line 388
    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotationHelpFolderText:[I

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    .line 393
    :goto_4
    const v9, 0x7f090fb4

    iput v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    goto/16 :goto_1

    .line 391
    :cond_6
    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartRotationHelpText:[I

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    goto :goto_4

    .line 394
    :cond_7
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_pause_noti"

    if-ne v9, v10, :cond_1

    .line 395
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartPauseAnimationImage:[I

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationImage:[I

    .line 396
    const v9, 0x7f090fbf

    iput v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    goto/16 :goto_1

    .line 411
    .restart local v1       #description:Ljava/lang/String;
    .restart local v3       #i:I
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    aget v10, v10, v3

    invoke-virtual {p0, v10}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 416
    .end local v3           #i:I
    :cond_9
    const/4 v3, 0x1

    .restart local v3       #i:I
    :goto_5
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    array-length v9, v9

    if-ge v3, v9, :cond_b

    .line 417
    if-ne v3, v11, :cond_a

    .line 418
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    aget v10, v10, v3

    invoke-virtual {p0, v10}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 416
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 420
    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartHelpText:[I

    aget v10, v10, v3

    invoke-virtual {p0, v10}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 424
    :cond_b
    aget-object v9, v8, v11

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    .end local v1           #description:Ljava/lang/String;
    .end local v3           #i:I
    :cond_c
    :goto_7
    const v9, 0x7f0b0140

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mAnimationView:Landroid/widget/ImageView;

    .line 446
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 447
    iget v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->dialogTitle:I

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 449
    const v9, 0x104000a

    new-instance v10, Lcom/android/settings/smartscreen/SmartScreenSettings$3;

    invoke-direct {v10, p0, v2, v7}, Lcom/android/settings/smartscreen/SmartScreenSettings$3;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 456
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 457
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 458
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v10, Lcom/android/settings/smartscreen/SmartScreenSettings$4;

    invoke-direct {v10, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$4;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 463
    invoke-direct {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->startAnimation()V

    .line 464
    return-void

    .line 426
    :cond_d
    iget-object v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v10, "pref_smart_pause_noti"

    if-ne v9, v10, :cond_c

    .line 428
    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    aget v9, v9, v12

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aput-object v9, v8, v12

    .line 429
    aget-object v9, v8, v12

    const v10, 0x7f090fd9

    invoke-virtual {p0, v10}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    sget-object v9, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSmartScreenHelpID:[I

    aget v9, v9, v11

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    aput-object v9, v8, v11

    .line 432
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f090fda

    invoke-virtual {p0, v9}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 433
    .restart local v1       #description:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v9, 0x7f090fdb

    invoke-virtual {p0, v9}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 434
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v9, 0x7f090fdc

    invoke-virtual {p0, v9}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 435
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v9, 0x7f090fdd

    invoke-virtual {p0, v9}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 436
    iget-boolean v9, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSupportFolderType:Z

    if-eqz v9, :cond_e

    .line 437
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v9, 0x7f0915cc

    invoke-virtual {p0, v9}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 439
    :cond_e
    aget-object v9, v8, v11

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7
.end method

.method public showGuideDialogForScroll()V
    .locals 14

    .prologue
    .line 468
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-direct {v0, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 470
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 471
    .local v8, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 473
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    iget-object v12, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v12, :cond_0

    .line 474
    iget-object v12, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->dismiss()V

    .line 475
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 478
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "layout_inflater"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 479
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v12, 0x7f040177

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 480
    .local v7, layout:Landroid/view/View;
    const v12, 0x7f0b03fb

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 482
    .local v5, helpTextTop:Landroid/widget/TextView;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f090fe1

    invoke-virtual {p0, v12}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 483
    .local v10, s:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v12, 0x7f090fe2

    invoke-virtual {p0, v12}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 484
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "- "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f090fe3

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 485
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "- "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f090fe4

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 486
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v12, 0x7f090fe5

    invoke-virtual {p0, v12}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 487
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f090fe6

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 488
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    const v12, 0x7f0b03fc

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 492
    .local v3, helpContent:Landroid/widget/LinearLayout;
    new-instance v2, Lcom/android/settings/HelpItem;

    invoke-direct {v2, v6}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 493
    .local v2, first:Lcom/android/settings/HelpItem;
    const v12, 0x7f090ff0

    invoke-virtual {v2, v12}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 494
    const v12, 0x7f090fe7

    invoke-virtual {p0, v12}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v2, v12}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 495
    const v12, 0x7f02041a

    invoke-virtual {v2, v12}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 496
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 497
    invoke-virtual {v2}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 499
    new-instance v11, Lcom/android/settings/HelpItem;

    invoke-direct {v11, v6}, Lcom/android/settings/HelpItem;-><init>(Landroid/view/LayoutInflater;)V

    .line 500
    .local v11, second:Lcom/android/settings/HelpItem;
    const v12, 0x7f090fef

    invoke-virtual {v11, v12}, Lcom/android/settings/HelpItem;->setTitleTextWithOutCategory(I)V

    .line 501
    const v12, 0x7f090fe8

    invoke-virtual {p0, v12}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/android/settings/HelpItem;->setContentText(Ljava/lang/String;)V

    .line 502
    const v12, 0x7f020419

    invoke-virtual {v11, v12}, Lcom/android/settings/HelpItem;->setContentImage(I)V

    .line 503
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/settings/HelpItem;->usePlayButton(Z)V

    .line 504
    invoke-virtual {v11}, Lcom/android/settings/HelpItem;->getHelpView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 506
    const v12, 0x7f0b03fd

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 508
    .local v4, helpTextBottom:Landroid/widget/TextView;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f090fe9

    invoke-virtual {p0, v12}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 509
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "- "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f090fea

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 510
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "- "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f090feb

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 511
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f090fec

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 512
    iget-boolean v12, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mSupportFolderType:Z

    if-eqz v12, :cond_1

    .line 513
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const v13, 0x7f0915cc

    invoke-virtual {p0, v13}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 515
    :cond_1
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    const v12, 0x7f0b03fe

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 519
    .local v9, mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 520
    const v12, 0x7f090fc1

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 522
    const v12, 0x104000a

    new-instance v13, Lcom/android/settings/smartscreen/SmartScreenSettings$5;

    invoke-direct {v13, p0, v1, v9}, Lcom/android/settings/smartscreen/SmartScreenSettings$5;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v0, v12, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 534
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 535
    iget-object v12, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    .line 536
    iget-object v12, p0, Lcom/android/settings/smartscreen/SmartScreenSettings;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v13, Lcom/android/settings/smartscreen/SmartScreenSettings$6;

    invoke-direct {v13, p0}, Lcom/android/settings/smartscreen/SmartScreenSettings$6;-><init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 546
    return-void
.end method
