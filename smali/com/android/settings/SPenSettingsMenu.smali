.class public Lcom/android/settings/SPenSettingsMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SPenSettingsMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final PEN_NOTIFICATION_SOUND0:Ljava/lang/String;

.field public static mPenNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mPenNotificationListValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected MESSAGE_DELAY:I

.field private mAirCommandSwitchPref:Landroid/preference/SwitchPreferenceScreen;

.field private mAirViewDisableDialog:Landroid/app/AlertDialog;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mDirectPenInputSwitchPref:Landroid/preference/SwitchPreferenceScreen;

.field private mDisablePenDetectionCheckPref:Landroid/preference/CheckBoxPreference;

.field private mEnableAirCommandDialog:Landroid/app/AlertDialog;

.field private mLossPreventionAlertCheckPref:Landroid/preference/CheckBoxPreference;

.field private final mPenAirViewObserver:Landroid/database/ContentObserver;

.field private mPenAirViewSwitchPref:Landroid/preference/SwitchPreferenceScreen;

.field private mPenDetachOptionList:Landroid/preference/ListPreference;

.field private mPenDetachSoundPref:Landroid/preference/PreferenceScreen;

.field protected mPenHoveringUncheckerHandler:Landroid/os/Handler;

.field private mPenKeeperNotiDialog:Landroid/app/AlertDialog;

.field private mSoundHapticFeedbackCheckPref:Landroid/preference/CheckBoxPreference;

.field private mSpenPointerSwitchPref:Landroid/preference/SwitchPreferenceScreen;

.field private mTalkbackMagnificationDisableDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/SPenSettingsMenu;->PEN_NOTIFICATION_SOUND0:Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 97
    iput-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    .line 99
    iput-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mTalkbackMagnificationDisableDialog:Landroid/app/AlertDialog;

    .line 101
    iput-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 103
    iput-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    .line 105
    iput-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/SPenSettingsMenu;->MESSAGE_DELAY:I

    .line 143
    new-instance v0, Lcom/android/settings/SPenSettingsMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SPenSettingsMenu$1;-><init>(Lcom/android/settings/SPenSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mPenAirViewObserver:Landroid/database/ContentObserver;

    .line 396
    new-instance v0, Lcom/android/settings/SPenSettingsMenu$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SPenSettingsMenu$2;-><init>(Lcom/android/settings/SPenSettingsMenu;)V

    iput-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mPenHoveringUncheckerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SPenSettingsMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->updateState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/SPenSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mPenAirViewSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SPenSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mAirCommandSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SPenSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mDirectPenInputSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/SPenSettingsMenu;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/SPenSettingsMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->showAllOptionDisabledDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/SPenSettingsMenu;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mSoundHapticFeedbackCheckPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private dismissAllDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 671
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 673
    iput-object v1, p0, Lcom/android/settings/SPenSettingsMenu;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 677
    iput-object v1, p0, Lcom/android/settings/SPenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mTalkbackMagnificationDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 680
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mTalkbackMagnificationDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 681
    iput-object v1, p0, Lcom/android/settings/SPenSettingsMenu;->mTalkbackMagnificationDisableDialog:Landroid/app/AlertDialog;

    .line 683
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 684
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 685
    iput-object v1, p0, Lcom/android/settings/SPenSettingsMenu;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    .line 687
    :cond_3
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 688
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 689
    iput-object v1, p0, Lcom/android/settings/SPenSettingsMenu;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    .line 691
    :cond_4
    return-void
.end method

.method private makePenNotificationList()V
    .locals 3

    .prologue
    .line 515
    sget-object v0, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 516
    sget-object v0, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09107d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    sget-object v0, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09107e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    sget-object v0, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09107f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    sget-object v0, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f091080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    sget-object v0, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 525
    sget-object v0, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/settings/SPenSettingsMenu;->PEN_NOTIFICATION_SOUND0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    sget-object v0, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    const-string v1, "/system/media/audio/ui/Pen_att_noti1.ogg,/system/media/audio/ui/Pen_det_noti1.ogg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    sget-object v0, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    const-string v1, "/system/media/audio/ui/Pen_att_noti2.ogg,/system/media/audio/ui/Pen_det_noti2.ogg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    sget-object v0, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    const-string v1, "/system/media/audio/ui/Pen_att_noti3.ogg,/system/media/audio/ui/Pen_det_noti3.ogg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    return-void
.end method

.method private makeTalkBackMagnificationDisablePopup(Ljava/lang/String;)V
    .locals 5
    .parameter "key"

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->dismissAllDialog()V

    .line 405
    move-object v0, p1

    .line 406
    .local v0, fromKey:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090ce8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090eaa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09081c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, message:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090ce6

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/SPenSettingsMenu$4;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/SPenSettingsMenu$4;-><init>(Lcom/android/settings/SPenSettingsMenu;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/settings/SPenSettingsMenu$3;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/SPenSettingsMenu$3;-><init>(Lcom/android/settings/SPenSettingsMenu;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SPenSettingsMenu;->mTalkbackMagnificationDisableDialog:Landroid/app/AlertDialog;

    .line 454
    iget-object v2, p0, Lcom/android/settings/SPenSettingsMenu;->mTalkbackMagnificationDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 455
    return-void
.end method

.method private sendLossPreventionAlert(Z)V
    .locals 4
    .parameter "value"

    .prologue
    .line 543
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.LossPeventionAlertChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 544
    .local v0, i:Landroid/content/Intent;
    const-string v1, "LossPreventionAlertState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 545
    const-string v1, "SPenSettingsMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadCast Loss prevention alert : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 547
    return-void
.end method

.method private showAirCommandEnabledPopup()V
    .locals 3

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->dismissAllDialog()V

    .line 627
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090e77

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090e4c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/SPenSettingsMenu$8;

    invoke-direct {v2, p0}, Lcom/android/settings/SPenSettingsMenu$8;-><init>(Lcom/android/settings/SPenSettingsMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/SPenSettingsMenu$7;

    invoke-direct {v2, p0}, Lcom/android/settings/SPenSettingsMenu$7;-><init>(Lcom/android/settings/SPenSettingsMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    .line 642
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mEnableAirCommandDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 643
    return-void
.end method

.method private showAirViewDisableDialog()V
    .locals 3

    .prologue
    .line 646
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->dismissAllDialog()V

    .line 647
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f090e7a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SPenSettingsMenu;->mContext:Landroid/content/Context;

    const v2, 0x7f090e4c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/SPenSettingsMenu$10;

    invoke-direct {v2, p0}, Lcom/android/settings/SPenSettingsMenu$10;-><init>(Lcom/android/settings/SPenSettingsMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/SPenSettingsMenu$9;

    invoke-direct {v2, p0}, Lcom/android/settings/SPenSettingsMenu$9;-><init>(Lcom/android/settings/SPenSettingsMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    .line 661
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 662
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mAirViewDisableDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/SPenSettingsMenu$11;

    invoke-direct {v1, p0}, Lcom/android/settings/SPenSettingsMenu$11;-><init>(Lcom/android/settings/SPenSettingsMenu;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 669
    return-void
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    .prologue
    .line 606
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->dismissAllDialog()V

    .line 607
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090e3d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090e4c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/SPenSettingsMenu$6;

    invoke-direct {v2, p0}, Lcom/android/settings/SPenSettingsMenu$6;-><init>(Lcom/android/settings/SPenSettingsMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 621
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 622
    return-void
.end method

.method private updateDetachNotiPref()V
    .locals 4

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_detachment_notification"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, currentNotiSound:Ljava/lang/String;
    sget-object v2, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 535
    .local v1, index:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 536
    const/4 v1, 0x1

    .line 537
    const-string v2, "SPenSettingsMenu"

    const-string v3, "updateDetachNotiPref() file exist error"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_0
    iget-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachSoundPref:Landroid/preference/PreferenceScreen;

    sget-object v2, Lcom/android/settings/SPenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 540
    return-void
.end method

.method private updateState()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 273
    const-string v4, "SPenSettingsMenu"

    const-string v5, "updateState() "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering_pointer"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4

    move v1, v2

    .line 277
    .local v1, penPointerState:Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mSpenPointerSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 279
    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mDisablePenDetectionCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "pen_detect_mode_disabled"

    invoke-static {v4, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    move v4, v2

    :goto_1
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 282
    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mLossPreventionAlertCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "pen_detachment_alert"

    invoke-static {v4, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    move v4, v2

    :goto_2
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 285
    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    if-eqz v4, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_detachment_option"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 288
    .local v0, penDetachIndex:I
    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 289
    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 292
    .end local v0           #penDetachIndex:I
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->updateDetachNotiPref()V

    .line 294
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v4

    if-nez v4, :cond_2

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/PenAirViewSettingsMenu;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 298
    :cond_1
    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mPenAirViewSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "pen_hovering"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_7

    move v4, v2

    :goto_3
    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 300
    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mSoundHapticFeedbackCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "pen_hovering_sound"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_8

    move v4, v2

    :goto_4
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 302
    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mAirCommandSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "air_button_onoff"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_9

    move v4, v2

    :goto_5
    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 306
    :cond_2
    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mDirectPenInputSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v4, :cond_3

    .line 307
    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mDirectPenInputSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_writing_buddy"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_a

    :goto_6
    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 310
    :cond_3
    return-void

    .end local v1           #penPointerState:Z
    :cond_4
    move v1, v3

    .line 275
    goto/16 :goto_0

    .restart local v1       #penPointerState:Z
    :cond_5
    move v4, v3

    .line 279
    goto/16 :goto_1

    :cond_6
    move v4, v3

    .line 282
    goto/16 :goto_2

    :cond_7
    move v4, v3

    .line 298
    goto :goto_3

    :cond_8
    move v4, v3

    .line 300
    goto :goto_4

    :cond_9
    move v4, v3

    .line 302
    goto :goto_5

    :cond_a
    move v2, v3

    .line 307
    goto :goto_6
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 154
    const-string v3, "SPenSettingsMenu"

    const-string v5, "onCreate() "

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 156
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mContext:Landroid/content/Context;

    .line 160
    const v3, 0x7f070070

    invoke-virtual {p0, v3}, Lcom/android/settings/SPenSettingsMenu;->addPreferencesFromResource(I)V

    .line 163
    const-string v3, "battery_saving"

    invoke-virtual {p0, v3}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mDisablePenDetectionCheckPref:Landroid/preference/CheckBoxPreference;

    .line 164
    iget-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mDisablePenDetectionCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 167
    const-string v3, "loss_prevention_alert"

    invoke-virtual {p0, v3}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mLossPreventionAlertCheckPref:Landroid/preference/CheckBoxPreference;

    .line 168
    iget-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mLossPreventionAlertCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 171
    const-string v3, "key_spen_pointer"

    invoke-virtual {p0, v3}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mSpenPointerSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    .line 172
    iget-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mSpenPointerSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    const-string v3, "key_writing_buddy"

    invoke-virtual {p0, v3}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mDirectPenInputSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    .line 176
    iget-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mDirectPenInputSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 179
    const-string v3, "pen_air_view"

    invoke-virtual {p0, v3}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mPenAirViewSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    .line 180
    iget-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mPenAirViewSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 183
    const-string v3, "key_air_button"

    invoke-virtual {p0, v3}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mAirCommandSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    .line 184
    iget-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mAirCommandSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 187
    const-string v3, "pen_hovering_sound"

    invoke-virtual {p0, v3}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mSoundHapticFeedbackCheckPref:Landroid/preference/CheckBoxPreference;

    .line 188
    iget-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mSoundHapticFeedbackCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 191
    const-string v3, "pen_detachment_option_list"

    invoke-virtual {p0, v3}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    .line 192
    iget-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 195
    const-string v3, "pen_deatachment_sound"

    invoke-virtual {p0, v3}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachSoundPref:Landroid/preference/PreferenceScreen;

    .line 196
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->makePenNotificationList()V

    .line 199
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v5, "CscFeature_Framework_DisablePenDetachmentAlert"

    invoke-virtual {v3, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/SPenSettingsMenu;->mLossPreventionAlertCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 204
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v3

    if-nez v3, :cond_2

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v5, "key_writing_buddy"

    invoke-virtual {p0, v5}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 207
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v5, "pen_hover"

    invoke-virtual {p0, v5}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v5, "pen_air_view"

    invoke-virtual {p0, v5}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v5, "key_air_button"

    invoke-virtual {p0, v5}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v5, "pen_hovering_sound"

    invoke-virtual {p0, v5}, Lcom/android/settings/SPenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 216
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 217
    iget-boolean v3, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v3, :cond_4

    .line 218
    sget v3, Lcom/android/settings/SPenSettingsMenu;->mSettingValue:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_4

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 220
    .local v0, extra_bundle:Landroid/os/Bundle;
    const-string v3, "extra_parent_preference_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, targetKey:Ljava/lang/String;
    sget v3, Lcom/android/settings/SPenSettingsMenu;->mSettingValue:I

    if-ne v3, v2, :cond_5

    .line 223
    .local v2, value:Z
    :goto_0
    const-string v3, "key_writing_buddy"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 224
    iget-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mDirectPenInputSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 225
    iget-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mDirectPenInputSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/SPenSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 237
    .end local v0           #extra_bundle:Landroid/os/Bundle;
    .end local v1           #targetKey:Ljava/lang/String;
    .end local v2           #value:Z
    :cond_4
    :goto_1
    return-void

    .restart local v0       #extra_bundle:Landroid/os/Bundle;
    .restart local v1       #targetKey:Ljava/lang/String;
    :cond_5
    move v2, v4

    .line 222
    goto :goto_0

    .line 226
    .restart local v2       #value:Z
    :cond_6
    const-string v3, "pen_air_view"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 227
    iget-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mPenAirViewSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 228
    iget-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mPenAirViewSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/SPenSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 229
    :cond_7
    const-string v3, "key_spen_pointer"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 230
    iget-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mSpenPointerSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 231
    iget-object v3, p0, Lcom/android/settings/SPenSettingsMenu;->mSpenPointerSwitchPref:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/SPenSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 582
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    const/4 v0, 0x1

    const v1, 0x7f090b11

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020196

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 586
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 587
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 591
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 600
    const/4 v1, 0x0

    .line 602
    :goto_0
    return v1

    .line 593
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 594
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.helphub"

    const-string v3, "com.samsung.helphub.HelpHubActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 596
    invoke-virtual {p0, v0}, Lcom/android/settings/SPenSettingsMenu;->startActivity(Landroid/content/Intent;)V

    .line 602
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 591
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 267
    const-string v0, "SPenSettingsMenu"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SPenSettingsMenu;->mPenAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 270
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 314
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, key:Ljava/lang/String;
    const-string v8, "pen_deatachment_sound"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 393
    .end local p2
    :cond_0
    :goto_0
    return v6

    .line 326
    .restart local p2
    :cond_1
    const-string v8, "pen_air_view"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 327
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 329
    .local v5, value:Z
    if-eqz v5, :cond_5

    .line 330
    iget-object v8, p0, Lcom/android/settings/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "accessibility_display_magnification_enabled"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_3

    .line 333
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/settings/SPenSettingsMenu;->makeTalkBackMagnificationDisablePopup(Ljava/lang/String;)V

    .line 349
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->updateState()V

    goto :goto_0

    .line 334
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/PenAirViewSettingsMenu;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 335
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->showAllOptionDisabledDialog()V

    goto :goto_1

    .line 337
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_hovering"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 340
    :cond_5
    iget-object v8, p0, Lcom/android/settings/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_button_onoff"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-lez v8, :cond_6

    move v0, v6

    .line 342
    .local v0, airCommandState:Z
    :goto_2
    if-eqz v0, :cond_7

    .line 343
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->showAirViewDisableDialog()V

    goto :goto_1

    .end local v0           #airCommandState:Z
    :cond_6
    move v0, v7

    .line 340
    goto :goto_2

    .line 345
    .restart local v0       #airCommandState:Z
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "pen_hovering"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 350
    .end local v0           #airCommandState:Z
    .end local v5           #value:Z
    .restart local p2
    :cond_8
    const-string v8, "key_air_button"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 351
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 352
    .restart local v5       #value:Z
    if-eqz v5, :cond_f

    .line 353
    const/4 v2, 0x0

    .line 354
    .local v2, airViewState:Z
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 355
    iget-object v8, p0, Lcom/android/settings/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_view_master_onoff"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_a

    move v2, v6

    .line 360
    :goto_3
    iget-object v8, p0, Lcom/android/settings/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_view_mode"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 361
    .local v1, airViewMode:I
    iget-object v8, p0, Lcom/android/settings/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "pen_hovering_information_preview"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_d

    move v4, v6

    .line 362
    .local v4, penInforPreview:Z
    :goto_4
    if-eqz v2, :cond_9

    sget v7, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    if-eq v1, v7, :cond_9

    if-nez v4, :cond_e

    .line 364
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->showAirCommandEnabledPopup()V

    .line 371
    .end local v1           #airViewMode:I
    .end local v2           #airViewState:Z
    .end local v4           #penInforPreview:Z
    :goto_5
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->updateState()V

    goto/16 :goto_0

    .restart local v2       #airViewState:Z
    :cond_a
    move v2, v7

    .line 355
    goto :goto_3

    .line 357
    :cond_b
    iget-object v8, p0, Lcom/android/settings/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "pen_hovering"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_c

    move v2, v6

    :goto_6
    goto :goto_3

    :cond_c
    move v2, v7

    goto :goto_6

    .restart local v1       #airViewMode:I
    :cond_d
    move v4, v7

    .line 361
    goto :goto_4

    .line 366
    .restart local v4       #penInforPreview:Z
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "air_button_onoff"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    .line 369
    .end local v1           #airViewMode:I
    .end local v2           #airViewState:Z
    .end local v4           #penInforPreview:Z
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_button_onoff"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    .line 372
    .end local v5           #value:Z
    .restart local p2
    :cond_10
    const-string v8, "key_writing_buddy"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 373
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 374
    .restart local v5       #value:Z
    if-eqz v5, :cond_12

    .line 375
    iget-object v8, p0, Lcom/android/settings/SPenSettingsMenu;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "accessibility_display_magnification_enabled"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_12

    .line 378
    :cond_11
    invoke-direct {p0, v3}, Lcom/android/settings/SPenSettingsMenu;->makeTalkBackMagnificationDisablePopup(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 382
    :cond_12
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "pen_writing_buddy"

    if-ne v5, v6, :cond_13

    move v7, v6

    :cond_13
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 384
    .end local v5           #value:Z
    .restart local p2
    :cond_14
    const-string v8, "pen_detachment_option_list"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 385
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 386
    .local v5, value:I
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_detachment_option"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 387
    iget-object v7, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 388
    iget-object v7, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings/SPenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 389
    .end local v5           #value:I
    .restart local p2
    :cond_15
    const-string v8, "key_spen_pointer"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 390
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 391
    .local v5, value:Z
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "pen_hovering_pointer"

    if-ne v5, v6, :cond_16

    move v7, v6

    :cond_16
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 460
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 461
    iget-boolean v6, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v6, :cond_0

    .line 462
    sget v6, Lcom/android/settings/SPenSettingsMenu;->mSettingValue:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 463
    sget v6, Lcom/android/settings/SPenSettingsMenu;->mSettingValue:I

    if-ne v6, v4, :cond_2

    move v3, v4

    .local v3, value:Z
    :goto_0
    move-object v0, p2

    .line 464
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 465
    .local v0, checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 466
    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 473
    .end local v0           #checkBoxStatePreference:Landroid/preference/CheckBoxPreference;
    .end local v3           #value:Z
    :cond_0
    iget-object v6, p0, Lcom/android/settings/SPenSettingsMenu;->mDisablePenDetectionCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 474
    iget-object v6, p0, Lcom/android/settings/SPenSettingsMenu;->mDisablePenDetectionCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 475
    .restart local v3       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_detect_mode_disabled"

    if-eqz v3, :cond_3

    move v6, v4

    :goto_1
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 477
    if-eqz v3, :cond_4

    move v6, v4

    :goto_2
    invoke-static {v6}, Lcom/sec/android/hardware/SecHardwareInterface;->setEPenSavingmode(I)Z

    .line 478
    const-string v6, "SPenSettingsMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "battery saving : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "pen_detect_mode_disabled"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    .end local v3           #value:Z
    :cond_1
    :goto_3
    return v4

    :cond_2
    move v3, v5

    .line 463
    goto :goto_0

    .restart local v3       #value:Z
    :cond_3
    move v6, v5

    .line 475
    goto :goto_1

    :cond_4
    move v6, v5

    .line 477
    goto :goto_2

    .line 484
    .end local v3           #value:Z
    :cond_5
    iget-object v6, p0, Lcom/android/settings/SPenSettingsMenu;->mSoundHapticFeedbackCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 485
    iget-object v6, p0, Lcom/android/settings/SPenSettingsMenu;->mSoundHapticFeedbackCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 486
    .restart local v3       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_hovering_sound"

    if-eqz v3, :cond_6

    move v6, v4

    :goto_4
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 487
    const-string v6, "SPenSettingsMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pen sound : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "pen_hovering_sound"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    move v6, v5

    .line 486
    goto :goto_4

    .line 492
    .end local v3           #value:Z
    :cond_7
    iget-object v6, p0, Lcom/android/settings/SPenSettingsMenu;->mLossPreventionAlertCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 493
    iget-object v6, p0, Lcom/android/settings/SPenSettingsMenu;->mLossPreventionAlertCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 494
    .restart local v3       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_detachment_alert"

    if-eqz v3, :cond_8

    move v6, v4

    :goto_5
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 495
    invoke-direct {p0, v3}, Lcom/android/settings/SPenSettingsMenu;->sendLossPreventionAlert(Z)V

    .line 496
    const-string v6, "SPenSettingsMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loss prevention alert : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "pen_detachment_alert"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "com.android.settings_pen_keeper_noti_pref"

    invoke-virtual {v6, v7, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 503
    .local v2, sp:Landroid/content/SharedPreferences;
    if-eqz v2, :cond_1

    .line 504
    const-string v6, "PenKeeperDoNotShowDialog"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 505
    .local v1, doNotShow:Z
    if-nez v1, :cond_1

    if-eqz v3, :cond_1

    .line 506
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->showPenKeeperNotiDialog()V

    goto/16 :goto_3

    .end local v1           #doNotShow:Z
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_8
    move v6, v5

    .line 494
    goto :goto_5

    .line 511
    .end local v3           #value:Z
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto/16 :goto_3
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 241
    const-string v1, "SPenSettingsMenu"

    const-string v2, "onResume() "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, super_mOpenDetailMenu:Z
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iget-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 246
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 250
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 251
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->updateState()V

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mPenAirViewObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 258
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    iput-boolean v0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 260
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 263
    :cond_1
    return-void
.end method

.method public showPenKeeperNotiDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 550
    invoke-direct {p0}, Lcom/android/settings/SPenSettingsMenu;->dismissAllDialog()V

    .line 553
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 554
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 556
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040072

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 557
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f0b0145

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 558
    .local v3, message:Landroid/widget/TextView;
    const v4, 0x7f090cd2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 559
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 560
    const v4, 0x7f090cd1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 561
    const v4, 0x7f09074d

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 563
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    .line 564
    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 565
    iget-object v4, p0, Lcom/android/settings/SPenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings/SPenSettingsMenu$5;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/SPenSettingsMenu$5;-><init>(Lcom/android/settings/SPenSettingsMenu;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 578
    return-void
.end method
