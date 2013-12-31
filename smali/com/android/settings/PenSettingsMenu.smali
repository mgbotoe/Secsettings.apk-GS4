.class public Lcom/android/settings/PenSettingsMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PenSettingsMenu.java"

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

.field private static final packagelist:[Ljava/lang/String;


# instance fields
.field protected MESSAGE_DELAY:I

.field private mAirButtonCheckPref:Landroid/preference/CheckBoxPreference;

.field private mHoveringPenIcon:Landroid/preference/CheckBoxPreference;

.field private mLossPreventionAlert:Landroid/preference/CheckBoxPreference;

.field private mOpenQuicknote:Landroid/preference/CheckBoxPreference;

.field private mPenAirView:Landroid/preference/SwitchPreferenceScreen;

.field private mPenApplication:Landroid/preference/ListPreference;

.field private mPenApplicationEntries:Ljava/util/Vector;

.field private mPenApplicationValues:Ljava/util/Vector;

.field private mPenBatterySaving:Landroid/preference/CheckBoxPreference;

.field private mPenDetachOption:Landroid/preference/PreferenceScreen;

.field private mPenDetachOptionList:Landroid/preference/ListPreference;

.field private mPenDetachSound:Landroid/preference/PreferenceScreen;

.field private mPenGestureGuide:Landroid/preference/CheckBoxPreference;

.field private mPenHovering:Landroid/preference/SwitchPreferenceScreen;

.field private mPenHoveringSound:Landroid/preference/CheckBoxPreference;

.field protected mPenHoveringUncheckerHandler:Landroid/os/Handler;

.field private mPenKeeperNotiDialog:Landroid/app/AlertDialog;

.field private mPenPreferredHand:Landroid/preference/ListPreference;

.field private mTalkbackMagnificationDisableDialog:Landroid/app/AlertDialog;

.field private mWritingBuddy:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 113
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/PenSettingsMenu;->PEN_NOTIFICATION_SOUND0:Ljava/lang/String;

    .line 124
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "None"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.launcher,com.android.launcher2.Launcher"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.android.app.snotebook,com.infraware.filemanager.FmFileTreeListActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.calendar,com.android.calendar.AllInOneActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.acrodea.crayonphysics,com.acrodea.crayonphysics.crayonphysics"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "air.com.adobe.pstouch.oem1,air.com.adobe.pstouch.oem1.AppEntry"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.infraware.PolarisOfficeStdForTablet,com.infraware.splash.SplashActivity"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.diotek.mini_penmemo,com.diotek.mini_penmemo.Mini_PenMemo_Service"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/PenSettingsMenu;->packagelist:[Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/PenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/PenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 107
    iput-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    .line 108
    iput-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mTalkbackMagnificationDisableDialog:Landroid/app/AlertDialog;

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/PenSettingsMenu;->MESSAGE_DELAY:I

    .line 136
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplicationEntries:Ljava/util/Vector;

    .line 137
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplicationValues:Ljava/util/Vector;

    .line 545
    new-instance v0, Lcom/android/settings/PenSettingsMenu$1;

    invoke-direct {v0, p0}, Lcom/android/settings/PenSettingsMenu$1;-><init>(Lcom/android/settings/PenSettingsMenu;)V

    iput-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenHoveringUncheckerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PenSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/PenSettingsMenu;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenHoveringSound:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/PenSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mWritingBuddy:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private makePenNotificationList()V
    .locals 3

    .prologue
    .line 728
    sget-object v0, Lcom/android/settings/PenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 729
    sget-object v0, Lcom/android/settings/PenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09107d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    sget-object v0, Lcom/android/settings/PenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09107e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    sget-object v0, Lcom/android/settings/PenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09107f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    sget-object v0, Lcom/android/settings/PenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f091080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    sget-object v0, Lcom/android/settings/PenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 735
    sget-object v0, Lcom/android/settings/PenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/settings/PenSettingsMenu;->PEN_NOTIFICATION_SOUND0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 736
    sget-object v0, Lcom/android/settings/PenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    const-string v1, "/system/media/audio/ui/Pen_att_noti1.ogg,/system/media/audio/ui/Pen_det_noti1.ogg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    sget-object v0, Lcom/android/settings/PenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    const-string v1, "/system/media/audio/ui/Pen_att_noti2.ogg,/system/media/audio/ui/Pen_det_noti2.ogg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    sget-object v0, Lcom/android/settings/PenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    const-string v1, "/system/media/audio/ui/Pen_att_noti3.ogg,/system/media/audio/ui/Pen_det_noti3.ogg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    return-void
.end method

.method private makeTalkBackDisablePopup()V
    .locals 3

    .prologue
    .line 552
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090cbd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090cbc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/PenSettingsMenu$3;

    invoke-direct {v2, p0}, Lcom/android/settings/PenSettingsMenu$3;-><init>(Lcom/android/settings/PenSettingsMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/PenSettingsMenu$2;

    invoke-direct {v2, p0}, Lcom/android/settings/PenSettingsMenu$2;-><init>(Lcom/android/settings/PenSettingsMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 574
    return-void
.end method

.method private makeTalkBackMagnificationDisablePopup(Ljava/lang/String;)V
    .locals 5
    .parameter "key"

    .prologue
    .line 577
    iget-object v2, p0, Lcom/android/settings/PenSettingsMenu;->mTalkbackMagnificationDisableDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 578
    iget-object v2, p0, Lcom/android/settings/PenSettingsMenu;->mTalkbackMagnificationDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 579
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/PenSettingsMenu;->mTalkbackMagnificationDisableDialog:Landroid/app/AlertDialog;

    .line 582
    :cond_0
    move-object v0, p1

    .line 584
    .local v0, fromKey:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090ea9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090eaa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09081c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 591
    .local v1, message:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090ce6

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/PenSettingsMenu$5;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/PenSettingsMenu$5;-><init>(Lcom/android/settings/PenSettingsMenu;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    new-instance v4, Lcom/android/settings/PenSettingsMenu$4;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/PenSettingsMenu$4;-><init>(Lcom/android/settings/PenSettingsMenu;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/PenSettingsMenu;->mTalkbackMagnificationDisableDialog:Landroid/app/AlertDialog;

    .line 620
    iget-object v2, p0, Lcom/android/settings/PenSettingsMenu;->mTalkbackMagnificationDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 621
    return-void
.end method

.method private sendLossPreventionAlert(Z)V
    .locals 4
    .parameter "value"

    .prologue
    .line 753
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.LossPeventionAlertChanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 754
    .local v0, i:Landroid/content/Intent;
    const-string v1, "LossPreventionAlertState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 755
    const-string v1, "PenSettingsMenu"

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

    .line 756
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 757
    return-void
.end method

.method private setPenApplicationEntriesAndValues()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 686
    const/4 v8, 0x0

    .line 690
    .local v8, tempPkgList:[Ljava/lang/String;
    sget-object v8, Lcom/android/settings/PenSettingsMenu;->packagelist:[Ljava/lang/String;

    .line 693
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v9, v8

    if-ge v2, v9, :cond_5

    .line 694
    aget-object v6, v8, v2

    .line 695
    .local v6, packageInfo:Ljava/lang/String;
    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 696
    .local v3, index:I
    if-lez v3, :cond_1

    .line 697
    invoke-virtual {v6, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 698
    .local v7, packageName:Ljava/lang/String;
    const-string v9, "PenSettingsMenu"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "packageName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 701
    .local v5, mPm:Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 702
    .local v4, info:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, appName:Ljava/lang/String;
    const-string v9, "TouchWiz Home"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 705
    const-string v0, "S pen page"

    .line 707
    :cond_0
    iget-object v9, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplicationEntries:Ljava/util/Vector;

    invoke-virtual {v9, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 708
    iget-object v9, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplicationValues:Ljava/util/Vector;

    invoke-virtual {v9, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 693
    .end local v0           #appName:Ljava/lang/String;
    .end local v4           #info:Landroid/content/pm/ApplicationInfo;
    .end local v5           #mPm:Landroid/content/pm/PackageManager;
    .end local v7           #packageName:Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 709
    .restart local v7       #packageName:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 710
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "PenSettingsMenu"

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 715
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v7           #packageName:Ljava/lang/String;
    :cond_1
    const-string v9, "None"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 716
    iget-object v9, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplicationEntries:Ljava/util/Vector;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f091085

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 722
    :cond_2
    :goto_2
    iget-object v9, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplicationValues:Ljava/util/Vector;

    invoke-virtual {v9, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 717
    :cond_3
    const-string v9, "Shortcuts toolbar"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 718
    iget-object v9, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplicationEntries:Ljava/util/Vector;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f091086

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 719
    :cond_4
    const-string v9, "S pen page"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 720
    iget-object v9, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplicationEntries:Ljava/util/Vector;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f091087

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 725
    .end local v3           #index:I
    .end local v6           #packageInfo:Ljava/lang/String;
    :cond_5
    return-void

    .line 711
    .restart local v3       #index:I
    .restart local v6       #packageInfo:Ljava/lang/String;
    .restart local v7       #packageName:Ljava/lang/String;
    :catch_1
    move-exception v9

    goto :goto_1
.end method

.method private updateDetachNotiPref()V
    .locals 4

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_detachment_notification"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 743
    .local v0, currentNotiSound:Ljava/lang/String;
    sget-object v2, Lcom/android/settings/PenSettingsMenu;->mPenNotificationListValues:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 744
    .local v1, index:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 745
    const/4 v1, 0x1

    .line 746
    const-string v2, "PenSettingsMenu"

    const-string v3, "updateDetachNotiPref() file exist error"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_0
    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mPenDetachSound:Landroid/preference/PreferenceScreen;

    sget-object v2, Lcom/android/settings/PenSettingsMenu;->mPenNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 750
    return-void
.end method

.method private updatePenApplicationPref()V
    .locals 7

    .prologue
    .line 760
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 762
    .local v1, currentValue:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 763
    .local v0, currentEntry:Ljava/lang/String;
    :goto_0
    const-string v4, "PenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePenApplicationPref() - currentValue: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / currentEntry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const/4 v3, 0x0

    .line 766
    .local v3, summary:Ljava/lang/String;
    const-string v4, "None"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 767
    move-object v3, v0

    .line 774
    :goto_1
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 775
    return-void

    .line 762
    .end local v0           #currentEntry:Ljava/lang/String;
    .end local v3           #summary:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 769
    .restart local v0       #currentEntry:Ljava/lang/String;
    .restart local v3       #summary:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f091084

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 771
    .local v2, s:Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 772
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private updateState()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 372
    const-string v3, "PenSettingsMenu"

    const-string v6, "updateState() "

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mPenPreferredHand:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/PenSettingsMenu;->mPenPreferredHand:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 375
    invoke-direct {p0}, Lcom/android/settings/PenSettingsMenu;->updateDetachNotiPref()V

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->isAllOptionDisabled()Z

    move-result v3

    if-ne v3, v4, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "pen_hovering"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 380
    :cond_0
    iget-object v6, p0, Lcom/android/settings/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "pen_hovering"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_4

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 381
    iget-object v6, p0, Lcom/android/settings/PenSettingsMenu;->mPenHoveringSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "pen_hovering_sound"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_5

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 382
    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mPenHoveringSound:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 384
    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    if-eqz v3, :cond_1

    .line 385
    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/PenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 387
    :cond_1
    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mWritingBuddy:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_3

    .line 388
    iget-object v6, p0, Lcom/android/settings/PenSettingsMenu;->mWritingBuddy:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "pen_writing_buddy"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 390
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "air_view_master_onoff"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 391
    .local v0, airViewMasterOnOff:I
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "air_view_mode"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 392
    .local v1, airViewMode:I
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "pen_hovering"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 394
    .local v2, penAirView:I
    if-eqz v0, :cond_2

    sget v3, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    if-eq v1, v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "accessibility_display_magnification_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_7

    .line 400
    :cond_2
    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mWritingBuddy:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 405
    .end local v0           #airViewMasterOnOff:I
    .end local v1           #airViewMode:I
    .end local v2           #penAirView:I
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v3, v5

    .line 380
    goto/16 :goto_0

    :cond_5
    move v3, v5

    .line 381
    goto :goto_1

    :cond_6
    move v3, v5

    .line 388
    goto :goto_2

    .line 402
    .restart local v0       #airViewMasterOnOff:I
    .restart local v1       #airViewMode:I
    .restart local v2       #penAirView:I
    :cond_7
    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mWritingBuddy:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_3
.end method


# virtual methods
.method public isAllOptionDisabled()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_pointer"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 360
    .local v3, hoveringPointer:I
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_information_preview"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 361
    .local v1, hoveringInformationPreview:I
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_icon_label"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 362
    .local v0, hoveringIconLabel:I
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering_list_scroll"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 363
    .local v2, hoveringListScroll:I
    const-string v5, "PenSettingsMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAllOptionDisabled()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    if-nez v3, :cond_0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    .line 365
    const/4 v4, 0x1

    .line 367
    :cond_0
    return v4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 145
    const-string v4, "PenSettingsMenu"

    const-string v7, "onCreate() "

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 147
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 152
    const v4, 0x7f07006f

    invoke-virtual {p0, v4}, Lcom/android/settings/PenSettingsMenu;->addPreferencesFromResource(I)V

    .line 155
    const-string v4, "pen_hand_side"

    invoke-virtual {p0, v4}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenPreferredHand:Landroid/preference/ListPreference;

    .line 156
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenPreferredHand:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_hand_side"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 157
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenPreferredHand:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 158
    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v7, "pen_general_category"

    invoke-virtual {p0, v7}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/PenSettingsMenu;->mPenPreferredHand:Landroid/preference/ListPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 163
    :cond_0
    const-string v4, "pen_deatachment_sound"

    invoke-virtual {p0, v4}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenDetachSound:Landroid/preference/PreferenceScreen;

    .line 164
    invoke-direct {p0}, Lcom/android/settings/PenSettingsMenu;->makePenNotificationList()V

    .line 166
    const-string v4, "pen_detachment_option"

    invoke-virtual {p0, v4}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenDetachOption:Landroid/preference/PreferenceScreen;

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/PenSettingsMenu;->mPenDetachOption:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 171
    const-string v4, "battery_saving"

    invoke-virtual {p0, v4}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenBatterySaving:Landroid/preference/CheckBoxPreference;

    .line 172
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenBatterySaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 173
    iget-object v7, p0, Lcom/android/settings/PenSettingsMenu;->mPenBatterySaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "pen_detect_mode_disabled"

    invoke-static {v4, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_9

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 175
    invoke-direct {p0}, Lcom/android/settings/PenSettingsMenu;->setPenApplicationEntriesAndValues()V

    .line 176
    const-string v4, "application"

    invoke-virtual {p0, v4}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    .line 177
    iget-object v7, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplicationEntries:Ljava/util/Vector;

    iget-object v8, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplicationEntries:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 178
    iget-object v7, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplicationValues:Ljava/util/Vector;

    iget-object v8, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplicationValues:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 179
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_applications"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 180
    invoke-direct {p0}, Lcom/android/settings/PenSettingsMenu;->updatePenApplicationPref()V

    .line 181
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 186
    const-string v4, "open_quick_note"

    invoke-virtual {p0, v4}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mOpenQuicknote:Landroid/preference/CheckBoxPreference;

    .line 187
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mOpenQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 188
    iget-object v7, p0, Lcom/android/settings/PenSettingsMenu;->mOpenQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "pen_detach_application"

    invoke-static {v4, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_a

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 194
    const-string v4, "pen_hovering"

    invoke-virtual {p0, v4}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mHoveringPenIcon:Landroid/preference/CheckBoxPreference;

    .line 195
    iget-object v7, p0, Lcom/android/settings/PenSettingsMenu;->mHoveringPenIcon:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "pen_hovering"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_b

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 197
    const-string v4, "pen_hovering_menu"

    invoke-virtual {p0, v4}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;

    .line 198
    iget-object v7, p0, Lcom/android/settings/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "pen_hovering"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_c

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 199
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->isAllOptionDisabled()Z

    move-result v4

    if-ne v4, v5, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v4

    if-nez v4, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "pen_hovering"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 204
    :cond_1
    const-string v4, "pen_air_view"

    invoke-virtual {p0, v4}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenAirView:Landroid/preference/SwitchPreferenceScreen;

    .line 205
    iget-object v7, p0, Lcom/android/settings/PenSettingsMenu;->mPenAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "pen_hovering"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_d

    move v4, v5

    :goto_4
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 206
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 209
    const-string v4, "key_air_button"

    invoke-virtual {p0, v4}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mAirButtonCheckPref:Landroid/preference/CheckBoxPreference;

    .line 210
    iget-object v7, p0, Lcom/android/settings/PenSettingsMenu;->mAirButtonCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "air_button_onoff"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_e

    move v4, v5

    :goto_5
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v7, "pen_air_view"

    invoke-virtual {p0, v7}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v7, "key_air_button"

    invoke-virtual {p0, v7}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 217
    const-string v4, "pen_hovering_sound"

    invoke-virtual {p0, v4}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenHoveringSound:Landroid/preference/CheckBoxPreference;

    .line 218
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenHoveringSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 219
    iget-object v7, p0, Lcom/android/settings/PenSettingsMenu;->mPenHoveringSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "pen_hovering_sound"

    invoke-static {v4, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_f

    move v4, v5

    :goto_6
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 221
    const-string v4, "pen_gesture_guide"

    invoke-virtual {p0, v4}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenGestureGuide:Landroid/preference/CheckBoxPreference;

    .line 222
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenGestureGuide:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 223
    iget-object v7, p0, Lcom/android/settings/PenSettingsMenu;->mPenGestureGuide:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "pen_gesture_guide"

    invoke-static {v4, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_10

    move v4, v5

    :goto_7
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/PenSettingsMenu;->mPenGestureGuide:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    const-string v4, "loss_prevention_alert"

    invoke-virtual {p0, v4}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mLossPreventionAlert:Landroid/preference/CheckBoxPreference;

    .line 229
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mLossPreventionAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 230
    iget-object v7, p0, Lcom/android/settings/PenSettingsMenu;->mLossPreventionAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "pen_detachment_alert"

    invoke-static {v4, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_11

    move v4, v5

    :goto_8
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 233
    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v7, "CscFeature_Framework_DisablePenDetachmentAlert"

    invoke-virtual {v4, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 234
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/PenSettingsMenu;->mLossPreventionAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 249
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/PenSettingsMenu;->mHoveringPenIcon:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 258
    invoke-static {v9}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 267
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v7, "pen_help_gesture"

    invoke-virtual {p0, v7}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 270
    const-string v4, "pen_detachment_option_list"

    invoke-virtual {p0, v4}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    .line 271
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    if-eqz v4, :cond_5

    .line 272
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "pen_detachment_option"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 275
    .local v1, penDetachIndex:I
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 278
    .end local v1           #penDetachIndex:I
    :cond_5
    const-string v4, "pen_detachment_option_list"

    invoke-virtual {p0, v4}, Lcom/android/settings/PenSettingsMenu;->removePreference(Ljava/lang/String;)V

    .line 281
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 318
    :cond_6
    const-string v4, "key_writing_buddy"

    invoke-virtual {p0, v4}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mWritingBuddy:Landroid/preference/SwitchPreferenceScreen;

    .line 319
    iget-object v7, p0, Lcom/android/settings/PenSettingsMenu;->mWritingBuddy:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "pen_writing_buddy"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_12

    move v4, v5

    :goto_9
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 320
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mWritingBuddy:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 321
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v4

    if-nez v4, :cond_13

    .line 322
    :goto_a
    const-string v4, "key_writing_buddy"

    invoke-virtual {p0, v4}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v7, "key_writing_buddy"

    invoke-virtual {p0, v7}, Lcom/android/settings/PenSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 326
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isSearchEnable()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 327
    iget-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    if-eqz v4, :cond_8

    .line 328
    sget v4, Lcom/android/settings/PenSettingsMenu;->mSettingValue:I

    const/4 v7, -0x1

    if-eq v4, v7, :cond_8

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 330
    .local v0, extra_bundle:Landroid/os/Bundle;
    const-string v4, "extra_parent_preference_key"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, targetKey:Ljava/lang/String;
    sget v4, Lcom/android/settings/PenSettingsMenu;->mSettingValue:I

    if-ne v4, v5, :cond_14

    move v3, v5

    .line 332
    .local v3, value:Z
    :goto_b
    const-string v4, "key_writing_buddy"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 333
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mWritingBuddy:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 334
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mWritingBuddy:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/PenSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 348
    .end local v0           #extra_bundle:Landroid/os/Bundle;
    .end local v2           #targetKey:Ljava/lang/String;
    .end local v3           #value:Z
    :cond_8
    :goto_c
    return-void

    :cond_9
    move v4, v6

    .line 173
    goto/16 :goto_0

    :cond_a
    move v4, v6

    .line 188
    goto/16 :goto_1

    :cond_b
    move v4, v6

    .line 195
    goto/16 :goto_2

    :cond_c
    move v4, v6

    .line 198
    goto/16 :goto_3

    :cond_d
    move v4, v6

    .line 205
    goto/16 :goto_4

    :cond_e
    move v4, v6

    .line 210
    goto/16 :goto_5

    :cond_f
    move v4, v6

    .line 219
    goto/16 :goto_6

    :cond_10
    move v4, v6

    .line 223
    goto/16 :goto_7

    :cond_11
    move v4, v6

    .line 230
    goto/16 :goto_8

    :cond_12
    move v4, v6

    .line 319
    goto :goto_9

    .line 321
    :cond_13
    invoke-static {}, Lcom/android/settings/Utils;->isSettingsUI2013Supported()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_a

    .restart local v0       #extra_bundle:Landroid/os/Bundle;
    .restart local v2       #targetKey:Ljava/lang/String;
    :cond_14
    move v3, v6

    .line 331
    goto :goto_b

    .line 335
    .restart local v3       #value:Z
    :cond_15
    const-string v4, "pen_air_view"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 336
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 337
    iget-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenAirView:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/PenSettingsMenu;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_c
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 826
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    const/4 v0, 0x1

    const v1, 0x7f090b11

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020196

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 832
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 833
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    .line 837
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 845
    const/4 v0, 0x0

    .line 848
    :goto_0
    return v0

    .line 839
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 840
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.helphub"

    const-string v3, "com.samsung.helphub.HelpHubActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 841
    invoke-virtual {p0, v0}, Lcom/android/settings/PenSettingsMenu;->startActivity(Landroid/content/Intent;)V

    .line 848
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 837
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 409
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, key:Ljava/lang/String;
    const-string v5, "pen_hand_side"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 412
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 414
    .local v2, value:I
    :try_start_0
    const-string v3, "PenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceChange(KEY_PEN_PREFERRED_HAND): value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_hand_side"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 416
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setEpenHandType(I)V

    .line 417
    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mPenPreferredHand:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 418
    invoke-direct {p0}, Lcom/android/settings/PenSettingsMenu;->updateState()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    .end local v2           #value:I
    :cond_0
    :goto_0
    return v4

    .line 419
    .restart local v2       #value:I
    :catch_0
    move-exception v0

    .line 420
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "PenSettingsMenu"

    const-string v5, "could not persist pen setting"

    invoke-static {v3, v5, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 422
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v2           #value:I
    .restart local p2
    :cond_1
    const-string v5, "pen_deatachment_sound"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 434
    const-string v5, "pen_hovering_menu"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 435
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 438
    .local v2, value:Z
    :try_start_1
    const-string v3, "PenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceChange(KEY_PEN_HOVERING_MENU): value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    if-ne v2, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->isAllOptionDisabled()Z

    move-result v3

    if-ne v3, v4, :cond_2

    .line 441
    const-string v3, "PenSettingsMenu"

    const-string v5, "Hovering mode changed ignored cause all sub options are disabled "

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mPenHoveringUncheckerHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/settings/PenSettingsMenu;->MESSAGE_DELAY:I

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 455
    :catch_1
    move-exception v0

    .line 456
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v3, "PenSettingsMenu"

    const-string v5, "could not persist pen setting"

    invoke-static {v3, v5, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 444
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_2
    if-eqz v2, :cond_4

    .line 445
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/PenHoveringEnabler;->isEnabledScreenReaderService(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 446
    invoke-direct {p0}, Lcom/android/settings/PenSettingsMenu;->makeTalkBackDisablePopup()V

    .line 453
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/PenSettingsMenu;->updateState()V

    goto :goto_0

    .line 448
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_hovering"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 451
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_hovering"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 458
    .end local v2           #value:Z
    .restart local p2
    :cond_5
    const-string v5, "pen_air_view"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 459
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 462
    .restart local v2       #value:Z
    :try_start_3
    const-string v3, "PenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceChange(KEY_PEN_HOVERING_MENU): value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    if-ne v2, v4, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->isAllOptionDisabled()Z

    move-result v3

    if-ne v3, v4, :cond_6

    .line 465
    const-string v3, "PenSettingsMenu"

    const-string v5, "Hovering mode changed ignored cause all sub options are disabled "

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mPenHoveringUncheckerHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/settings/PenSettingsMenu;->MESSAGE_DELAY:I

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 481
    :catch_2
    move-exception v0

    .line 482
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v3, "PenSettingsMenu"

    const-string v5, "could not persist pen setting"

    invoke-static {v3, v5, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 468
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_6
    if-eqz v2, :cond_9

    .line 469
    :try_start_4
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "accessibility_display_magnification_enabled"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_8

    .line 472
    :cond_7
    invoke-direct {p0, v1}, Lcom/android/settings/PenSettingsMenu;->makeTalkBackMagnificationDisablePopup(Ljava/lang/String;)V

    .line 479
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/PenSettingsMenu;->updateState()V

    goto/16 :goto_0

    .line 474
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_hovering"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 477
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_hovering"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 484
    .end local v2           #value:Z
    .restart local p2
    :cond_a
    const-string v5, "key_air_button"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 485
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 488
    .restart local v2       #value:Z
    :try_start_5
    const-string v3, "PenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceChange(KEY_AIR_BUTTON): value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    if-ne v2, v4, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->isAllOptionDisabled()Z

    move-result v3

    if-ne v3, v4, :cond_b

    .line 491
    const-string v3, "PenSettingsMenu"

    const-string v5, "Hovering mode changed ignored cause all sub options are disabled "

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mPenHoveringUncheckerHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/settings/PenSettingsMenu;->MESSAGE_DELAY:I

    int-to-long v6, v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 505
    :catch_3
    move-exception v0

    .line 506
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v3, "PenSettingsMenu"

    const-string v5, "could not persist pen setting"

    invoke-static {v3, v5, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 494
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_b
    if-eqz v2, :cond_d

    .line 495
    :try_start_6
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/PenHoveringEnabler;->isEnabledScreenReaderService(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 496
    invoke-direct {p0}, Lcom/android/settings/PenSettingsMenu;->makeTalkBackDisablePopup()V

    .line 503
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/PenSettingsMenu;->updateState()V

    goto/16 :goto_0

    .line 498
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_hovering"

    const/4 v6, 0x1

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 501
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_hovering"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 508
    .end local v2           #value:Z
    .restart local p2
    :cond_e
    const-string v5, "application"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    move-object v2, p2

    .line 509
    check-cast v2, Ljava/lang/String;

    .line 511
    .local v2, value:Ljava/lang/String;
    :try_start_7
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_applications"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 512
    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mPenApplication:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 513
    invoke-direct {p0}, Lcom/android/settings/PenSettingsMenu;->updatePenApplicationPref()V

    .line 514
    const-string v3, "PenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pen application : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_applications"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 515
    :catch_4
    move-exception v0

    .line 516
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    sget-boolean v3, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "PenSettingsMenu"

    const-string v5, "could not persist pen application setting"

    invoke-static {v3, v5, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 518
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v2           #value:Ljava/lang/String;
    :cond_f
    const-string v5, "key_writing_buddy"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 519
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 520
    .local v2, value:Z
    const-string v5, "PenSettingsMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wrting buddy changed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    if-eqz v2, :cond_11

    .line 522
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accessibility_display_magnification_enabled"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_11

    .line 525
    :cond_10
    invoke-direct {p0, v1}, Lcom/android/settings/PenSettingsMenu;->makeTalkBackMagnificationDisablePopup(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 529
    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_writing_buddy"

    if-ne v2, v4, :cond_12

    move v3, v4

    :cond_12
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 530
    .end local v2           #value:Z
    .restart local p2
    :cond_13
    const-string v3, "pen_detachment_option_list"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 531
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 533
    .local v2, value:I
    :try_start_8
    const-string v3, "PenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceChange(KEY_PEN_DETACH_OPTION_LIST): value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "pen_detachment_option"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 536
    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 537
    iget-object v3, p0, Lcom/android/settings/PenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mPenDetachOptionList:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    .line 538
    :catch_5
    move-exception v0

    .line 539
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v3, "PenSettingsMenu"

    const-string v5, "could not persist pen setting"

    invoke-static {v3, v5, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 625
    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mHoveringPenIcon:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 626
    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mHoveringPenIcon:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 627
    .local v2, value:Z
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering"

    if-eqz v2, :cond_2

    :goto_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 628
    const-string v3, "PenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pen_hovering : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    .end local v2           #value:Z
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    :cond_1
    :goto_2
    return v3

    .restart local v2       #value:Z
    :cond_2
    move v3, v4

    .line 627
    goto :goto_0

    .line 629
    .end local v2           #value:Z
    :cond_3
    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 630
    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v2

    .line 631
    .restart local v2       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_hovering"

    if-eqz v2, :cond_4

    :goto_3
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 632
    const-string v3, "PenSettingsMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pen_hovering : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move v3, v4

    .line 631
    goto :goto_3

    .line 633
    .end local v2           #value:Z
    :cond_5
    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mPenBatterySaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 634
    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mPenBatterySaving:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 635
    .restart local v2       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_detect_mode_disabled"

    if-eqz v2, :cond_6

    move v5, v3

    :goto_4
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 636
    if-eqz v2, :cond_7

    move v5, v3

    :goto_5
    invoke-static {v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setEPenSavingmode(I)Z

    .line 637
    const-string v5, "PenSettingsMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "battery saving : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_detect_mode_disabled"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_6
    move v5, v4

    .line 635
    goto :goto_4

    :cond_7
    move v5, v4

    .line 636
    goto :goto_5

    .line 639
    .end local v2           #value:Z
    :cond_8
    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mOpenQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 640
    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mOpenQuicknote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 641
    .restart local v2       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_detach_application"

    if-eqz v2, :cond_9

    move v5, v3

    :goto_6
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 642
    const-string v5, "PenSettingsMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pen detach application : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_detach_application"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_9
    move v5, v4

    .line 641
    goto :goto_6

    .line 644
    .end local v2           #value:Z
    :cond_a
    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mAirButtonCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 645
    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mAirButtonCheckPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 646
    .restart local v2       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "air_button_onoff"

    if-eqz v2, :cond_b

    move v5, v3

    :goto_7
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 647
    const-string v5, "PenSettingsMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Air button: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "air_button_onoff"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    move v5, v4

    .line 646
    goto :goto_7

    .line 649
    .end local v2           #value:Z
    :cond_c
    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mPenHoveringSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 650
    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mPenHoveringSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 651
    .restart local v2       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering_sound"

    if-eqz v2, :cond_d

    move v5, v3

    :goto_8
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 652
    const-string v5, "PenSettingsMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pen sound : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_hovering_sound"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_d
    move v5, v4

    .line 651
    goto :goto_8

    .line 654
    .end local v2           #value:Z
    :cond_e
    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mPenGestureGuide:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 655
    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mPenGestureGuide:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 656
    .restart local v2       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_gesture_guide"

    if-eqz v2, :cond_f

    move v5, v3

    :goto_9
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 657
    const-string v5, "PenSettingsMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pen Gesture Guide : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_gesture_guide"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_f
    move v5, v4

    .line 656
    goto :goto_9

    .line 664
    .end local v2           #value:Z
    :cond_10
    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mLossPreventionAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 665
    iget-object v5, p0, Lcom/android/settings/PenSettingsMenu;->mLossPreventionAlert:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 666
    .restart local v2       #value:Z
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_detachment_alert"

    if-eqz v2, :cond_11

    move v5, v3

    :goto_a
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 667
    invoke-direct {p0, v2}, Lcom/android/settings/PenSettingsMenu;->sendLossPreventionAlert(Z)V

    .line 668
    const-string v5, "PenSettingsMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loss prevention alert : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_detachment_alert"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "com.android.settings_pen_keeper_noti_pref"

    invoke-virtual {v5, v6, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 671
    .local v1, sp:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_1

    .line 672
    const-string v5, "PenKeeperDoNotShowDialog"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 673
    .local v0, doNotShow:Z
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    .line 674
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->showPenKeeperNotiDialog()V

    goto/16 :goto_2

    .end local v0           #doNotShow:Z
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_11
    move v5, v4

    .line 666
    goto :goto_a
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 352
    const-string v0, "PenSettingsMenu"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 354
    invoke-direct {p0}, Lcom/android/settings/PenSettingsMenu;->updateState()V

    .line 355
    return-void
.end method

.method public showPenKeeperNotiDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 791
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 793
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 795
    iput-object v4, p0, Lcom/android/settings/PenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    .line 798
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 799
    const v2, 0x7f040072

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 800
    const v0, 0x7f0b0145

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 802
    const v3, 0x7f090cd2

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 803
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 804
    const v0, 0x7f090cd1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 805
    const v0, 0x7f09074d

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 807
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    .line 808
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 810
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu;->mPenKeeperNotiDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/PenSettingsMenu$6;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/PenSettingsMenu$6;-><init>(Lcom/android/settings/PenSettingsMenu;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 821
    return-void
.end method
