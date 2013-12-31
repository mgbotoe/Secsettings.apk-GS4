.class public Lcom/android/settings/NotificationPanelMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NotificationPanelMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;
    }
.end annotation


# instance fields
.field private idxGap:I

.field private mActiveAppsMinNum:I

.field private mActiveAppsNum:I

.field private mActiveNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveNotificationPanelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAvailBtnLayoutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableBtnArea:Landroid/widget/LinearLayout;

.field private mBrightness:Landroid/preference/CheckBoxPreference;

.field private mBrightnessAdjustmentObserver:Landroid/database/ContentObserver;

.field private mCandidateNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCandidateNotificationPanelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConvertPanelItemstring:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFooterView:Landroid/view/View;

.field private mCurrentOrientation:I

.field mHandler:Landroid/os/Handler;

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mLongClickedView:Landroid/view/View;

.field private mNotificationPanelArea:Landroid/widget/LinearLayout;

.field private mNotificationPanelLayoutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field mPanelBarDragListener:Landroid/view/View$OnDragListener;

.field private mSalesCode:Ljava/lang/String;

.field mSetKeyListenerRunnable:Ljava/lang/Runnable;

.field private mShadowBuilder:Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;

.field mfakePanelDragListener:Landroid/view/View$OnDragListener;

.field private resetBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelLayoutList:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailBtnLayoutList:Ljava/util/ArrayList;

    .line 89
    iput-object v2, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentFooterView:Landroid/view/View;

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I

    .line 92
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsMinNum:I

    .line 93
    iput v1, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    .line 94
    iput v1, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;

    .line 106
    iput-object v2, p0, Lcom/android/settings/NotificationPanelMenu;->mAlertDialog:Landroid/app/AlertDialog;

    .line 108
    new-instance v0, Lcom/android/settings/NotificationPanelMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/NotificationPanelMenu$1;-><init>(Lcom/android/settings/NotificationPanelMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightnessAdjustmentObserver:Landroid/database/ContentObserver;

    .line 115
    new-instance v0, Lcom/android/settings/NotificationPanelMenu$2;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationPanelMenu$2;-><init>(Lcom/android/settings/NotificationPanelMenu;)V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 125
    new-instance v0, Lcom/android/settings/NotificationPanelMenu$3;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationPanelMenu$3;-><init>(Lcom/android/settings/NotificationPanelMenu;)V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mfakePanelDragListener:Landroid/view/View$OnDragListener;

    .line 181
    new-instance v0, Lcom/android/settings/NotificationPanelMenu$4;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationPanelMenu$4;-><init>(Lcom/android/settings/NotificationPanelMenu;)V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mPanelBarDragListener:Landroid/view/View$OnDragListener;

    .line 253
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mHandler:Landroid/os/Handler;

    .line 254
    new-instance v0, Lcom/android/settings/NotificationPanelMenu$5;

    invoke-direct {v0, p0}, Lcom/android/settings/NotificationPanelMenu$5;-><init>(Lcom/android/settings/NotificationPanelMenu;)V

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mSetKeyListenerRunnable:Ljava/lang/Runnable;

    .line 726
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/NotificationPanelMenu;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/NotificationPanelMenu;)Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mShadowBuilder:Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/NotificationPanelMenu;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->resetBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/NotificationPanelMenu;Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;)Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu;->mShadowBuilder:Lcom/android/settings/NotificationPanelMenu$PanelDragShadowBuilder;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/NotificationPanelMenu;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings/NotificationPanelMenu;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/settings/NotificationPanelMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->resetPanel()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/NotificationPanelMenu;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/NotificationPanelMenu;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/NotificationPanelMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/NotificationPanelMenu;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/NotificationPanelMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/NotificationPanelMenu;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/NotificationPanelMenu;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/NotificationPanelMenu;->changeQuickSettingsByPanel(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/NotificationPanelMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->updateQuickSettingsList()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/NotificationPanelMenu;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/NotificationPanelMenu;->changeQuickSettingsByBar(Landroid/view/View;)V

    return-void
.end method

.method private changeQuickSettingsByBar(Landroid/view/View;)V
    .locals 13
    .parameter "dropView"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 545
    iget-object v8, p0, Lcom/android/settings/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 546
    .local v3, longClickedIdx:I
    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    if-ge v3, v8, :cond_0

    iget-object v2, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    .line 547
    .local v2, fromList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    if-lt v3, v8, :cond_1

    .line 548
    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    sub-int/2addr v3, v8

    .line 549
    const/4 v1, 0x1

    .line 555
    .local v1, fromArea:I
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 556
    .local v0, dropIdx:I
    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    if-ge v0, v8, :cond_2

    iget-object v7, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    .line 557
    .local v7, toList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    if-lt v0, v8, :cond_3

    .line 558
    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    sub-int/2addr v0, v8

    .line 559
    const/4 v6, 0x1

    .line 564
    .local v6, toArea:I
    :goto_3
    const-string v8, "NotificationPanelMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeQuickSettingsByBar() - longClickedIdx: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / dropIdx : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    if-nez v1, :cond_4

    if-ne v6, v12, :cond_4

    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsMinNum:I

    iget v9, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    if-lt v8, v9, :cond_4

    .line 567
    const v8, 0x7f0912c7

    new-array v9, v12, [Ljava/lang/Object;

    iget v10, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsMinNum:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/NotificationPanelMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 568
    .local v4, message:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v4, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 580
    .end local v4           #message:Ljava/lang/String;
    :goto_4
    return-void

    .line 546
    .end local v0           #dropIdx:I
    .end local v1           #fromArea:I
    .end local v2           #fromList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #toArea:I
    .end local v7           #toList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    goto :goto_0

    .line 551
    .restart local v2       #fromList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #fromArea:I
    goto :goto_1

    .line 556
    .restart local v0       #dropIdx:I
    :cond_2
    iget-object v7, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    goto :goto_2

    .line 561
    .restart local v7       #toList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const/4 v6, 0x0

    .restart local v6       #toArea:I
    goto :goto_3

    .line 572
    :cond_4
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 573
    .local v5, removedItem:Ljava/lang/String;
    if-ge v3, v0, :cond_5

    if-ne v2, v7, :cond_5

    .line 574
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v7, v8, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 579
    :goto_5
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->saveAppslist()V

    goto :goto_4

    .line 576
    :cond_5
    invoke-virtual {v7, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_5
.end method

.method private changeQuickSettingsByPanel(Landroid/view/View;)V
    .locals 13
    .parameter "dropView"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 585
    iget-object v8, p0, Lcom/android/settings/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 586
    .local v3, longClickedIdx:I
    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    if-ge v3, v8, :cond_0

    iget-object v2, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    .line 587
    .local v2, fromList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    if-lt v3, v8, :cond_1

    .line 588
    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    sub-int/2addr v3, v8

    .line 589
    const/4 v1, 0x1

    .line 595
    .local v1, fromArea:I
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 596
    .local v0, dropIdx:I
    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    if-ge v0, v8, :cond_2

    iget-object v7, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    .line 597
    .local v7, toList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    if-lt v0, v8, :cond_3

    .line 598
    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    sub-int/2addr v0, v8

    .line 599
    const/4 v6, 0x1

    .line 604
    .local v6, toArea:I
    :goto_3
    const-string v8, "NotificationPanelMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeQuickSettingsByPanel() - longClickedIdx: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / dropIdx : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-direct {p0, v7, v0}, Lcom/android/settings/NotificationPanelMenu;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 607
    if-nez v1, :cond_4

    if-ne v6, v12, :cond_4

    iget v8, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsMinNum:I

    iget v9, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    if-lt v8, v9, :cond_4

    .line 608
    const v8, 0x7f0912c7

    new-array v9, v12, [Ljava/lang/Object;

    iget v10, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsMinNum:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/NotificationPanelMenu;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 609
    .local v4, message:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v4, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 619
    .end local v4           #message:Ljava/lang/String;
    :goto_4
    return-void

    .line 586
    .end local v0           #dropIdx:I
    .end local v1           #fromArea:I
    .end local v2           #fromList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #toArea:I
    .end local v7           #toList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    goto :goto_0

    .line 591
    .restart local v2       #fromList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #fromArea:I
    goto :goto_1

    .line 596
    .restart local v0       #dropIdx:I
    :cond_2
    iget-object v7, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    goto :goto_2

    .line 601
    .restart local v7       #toList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const/4 v6, 0x0

    .restart local v6       #toArea:I
    goto :goto_3

    .line 612
    :cond_4
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 613
    .local v5, removedItem:Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    .end local v5           #removedItem:Ljava/lang/String;
    :goto_5
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->saveAppslist()V

    goto :goto_4

    .line 616
    :cond_5
    invoke-direct {p0, v2, v3, v7, v0}, Lcom/android/settings/NotificationPanelMenu;->swapPanels(Ljava/util/ArrayList;ILjava/util/ArrayList;I)V

    goto :goto_5
.end method

.method private displayQuickSettings(IIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 24
    .parameter "mode"
    .parameter "oneLinePanelNum"
    .parameter "totalPanelLines"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p4, panelLayoutList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/FrameLayout;>;"
    .local p5, panelViewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p6, panelList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v21, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/NotificationPanelMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 382
    .local v9, inflater:Landroid/view/LayoutInflater;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/NotificationPanelMenu;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 384
    .local v13, packageName:Ljava/lang/String;
    mul-int v20, p2, p3

    .line 385
    .local v20, totalPanelNum:I
    if-nez p1, :cond_0

    const/4 v6, 0x0

    .line 387
    .local v6, gap:I
    :goto_0
    const/4 v7, 0x0

    .line 388
    .local v7, idx:I
    const/4 v7, 0x0

    :goto_1
    move/from16 v0, v20

    if-ge v7, v0, :cond_5

    .line 389
    const v21, 0x7f040145

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 390
    .local v19, panelView:Landroid/view/View;
    const v21, 0x7f0b028a

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 391
    .local v14, panel:Landroid/widget/LinearLayout;
    const v21, 0x7f0b027c

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 392
    .local v16, panelImageView:Landroid/widget/ImageView;
    const v21, 0x7f0b027e

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 394
    .local v18, panelTextView:Landroid/widget/TextView;
    const v21, 0x7f040146

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 395
    .local v12, overlayedPanelView:Landroid/view/View;
    const v21, 0x7f0b028c

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 396
    .local v15, panelBar:Landroid/widget/ImageView;
    const v21, 0x7f0b028d

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 399
    .local v5, fakePanel:Landroid/view/View;
    add-int v21, v7, v6

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 400
    add-int v21, v7, v6

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 401
    add-int v21, v7, v6

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 402
    const-string v21, "NotificationPanelMenu"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "idx: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-string v21, "NotificationPanelMenu"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "gap: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const-string v21, "NotificationPanelMenu"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "tag: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int v23, v7, v6

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v7}, Lcom/android/settings/NotificationPanelMenu;->isEmptyPanel(Ljava/util/ArrayList;I)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 407
    const v21, 0x7f0203b8

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 428
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NotificationPanelMenu;->mfakePanelDragListener:Landroid/view/View$OnDragListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 431
    div-int v4, v7, p2

    .line 432
    .local v4, containerIdx:I
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 433
    .local v3, container:Landroid/widget/FrameLayout;
    const v21, 0x7f0b0379

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 434
    .local v11, notificationPanelLayout:Landroid/widget/LinearLayout;
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 435
    const v21, 0x7f0b037a

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 436
    .local v10, notificationPanelBarLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 438
    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 385
    .end local v3           #container:Landroid/widget/FrameLayout;
    .end local v4           #containerIdx:I
    .end local v5           #fakePanel:Landroid/view/View;
    .end local v6           #gap:I
    .end local v7           #idx:I
    .end local v10           #notificationPanelBarLayout:Landroid/widget/LinearLayout;
    .end local v11           #notificationPanelLayout:Landroid/widget/LinearLayout;
    .end local v12           #overlayedPanelView:Landroid/view/View;
    .end local v14           #panel:Landroid/widget/LinearLayout;
    .end local v15           #panelBar:Landroid/widget/ImageView;
    .end local v16           #panelImageView:Landroid/widget/ImageView;
    .end local v18           #panelTextView:Landroid/widget/TextView;
    .end local v19           #panelView:Landroid/view/View;
    :cond_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    goto/16 :goto_0

    .line 409
    .restart local v5       #fakePanel:Landroid/view/View;
    .restart local v6       #gap:I
    .restart local v7       #idx:I
    .restart local v12       #overlayedPanelView:Landroid/view/View;
    .restart local v14       #panel:Landroid/widget/LinearLayout;
    .restart local v15       #panelBar:Landroid/widget/ImageView;
    .restart local v16       #panelImageView:Landroid/widget/ImageView;
    .restart local v18       #panelTextView:Landroid/widget/TextView;
    .restart local v19       #panelView:Landroid/view/View;
    :cond_1
    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 413
    .local v17, panelText:Ljava/lang/String;
    move-object/from16 v8, v17

    .line 414
    .local v8, imgResourceName:Ljava/lang/String;
    const-string v21, "notification_panel_nfc"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 415
    const-string v21, "ATT"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NotificationPanelMenu;->mSalesCode:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    const-string v21, "VZW"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NotificationPanelMenu;->mSalesCode:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 416
    :cond_2
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "_att"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 422
    :cond_3
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/NotificationPanelMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const-string v22, "drawable"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v8, v1, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/NotificationPanelMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const-string v22, "string"

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NotificationPanelMenu;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/NotificationPanelMenu;->mPanelBarDragListener:Landroid/view/View$OnDragListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    goto/16 :goto_2

    .line 417
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 418
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "_kor"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 440
    .end local v5           #fakePanel:Landroid/view/View;
    .end local v8           #imgResourceName:Ljava/lang/String;
    .end local v12           #overlayedPanelView:Landroid/view/View;
    .end local v14           #panel:Landroid/widget/LinearLayout;
    .end local v15           #panelBar:Landroid/widget/ImageView;
    .end local v16           #panelImageView:Landroid/widget/ImageView;
    .end local v17           #panelText:Ljava/lang/String;
    .end local v18           #panelTextView:Landroid/widget/TextView;
    .end local v19           #panelView:Landroid/view/View;
    :cond_5
    return-void
.end method

.method private isEmptyPanel(Ljava/util/ArrayList;I)Z
    .locals 2
    .parameter
    .parameter "idx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 622
    .local p1, notificationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 623
    .local v0, value:Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_0

    .line 624
    const/4 v0, 0x1

    .line 626
    :cond_0
    return v0
.end method

.method private loadAppslist()V
    .locals 7

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_panel_active_app_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, active_app_list:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_panel_active_number_of_apps"

    const/16 v6, 0xa

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    .line 510
    const-string v4, "NotificationPanelMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAppslist() - active_app_list : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const-string v4, "NotificationPanelMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAppslist() - mActiveAppsNum : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    if-nez v1, :cond_0

    .line 540
    :goto_0
    return-void

    .line 517
    :cond_0
    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 518
    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 521
    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, activeApps:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget v4, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    if-ge v3, v4, :cond_2

    .line 523
    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 524
    .local v2, convertPanelString:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 525
    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 529
    .end local v2           #convertPanelString:Ljava/lang/String;
    :cond_2
    const-string v4, "NotificationPanelMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAppslist() - mActiveNotificationList.size():  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget v3, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_4

    .line 532
    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 533
    .restart local v2       #convertPanelString:Ljava/lang/String;
    const-string v4, "NotificationPanelMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertPanelString:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    if-eqz v2, :cond_3

    .line 535
    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 539
    .end local v2           #convertPanelString:Ljava/lang/String;
    :cond_4
    const-string v4, "NotificationPanelMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAppslist() - mCandidateNotificationList.size():  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private makeConvertPanelName()V
    .locals 3

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Wifi"

    const-string v2, "notification_panel_wifi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Location"

    const-string v2, "notification_panel_gps"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SilentMode"

    const-string v2, "notification_panel_sound"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AutoRotate"

    const-string v2, "notification_panel_screen_rotation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Bluetooth"

    const-string v2, "notification_panel_bluetooth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "MobileData"

    const-string v2, "notification_panel_mobile_data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Apn"

    const-string v2, "notification_panel_apn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "DormantMode"

    const-string v2, "notification_panel_blocking_mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "PowerSaving"

    const-string v2, "notification_panel_powersaving"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AllShareCast"

    const-string v2, "notification_panel_mobile_allshare_cast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "MultiWindow"

    const-string v2, "notification_panel_multiwindows"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "WiFiHotspot"

    const-string v2, "notification_panel_wifihotspot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SBeam"

    const-string v2, "notification_panel_sbeam"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Nfc"

    const-string v2, "notification_panel_nfc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "DrivingMode"

    const-string v2, "notification_panel_driving"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SmartStay"

    const-string v2, "notification_panel_smartstay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Sync"

    const-string v2, "notification_panel_sync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AirplaneMode"

    const-string v2, "notification_airplane_mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "Ebook"

    const-string v2, "notification_panel_e_reading"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "PenOnly"

    const-string v2, "notification_panel_pen_mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AirView"

    const-string v2, "notification_panel_air_view"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SmartScroll"

    const-string v2, "notification_panel_smartscroll"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SmartPause"

    const-string v2, "notification_panel_smartpause"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "AirGesture"

    const-string v2, "notification_panel_air_gesture"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "SmartNetwork"

    const-string v2, "notification_panel_smartnetwork"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "PersonalMode"

    const-string v2, "notification_panel_personalmode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "ToddlerMode"

    const-string v2, "notification_panel_toddlermode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "DataRoaming"

    const-string v2, "notification_panel_dataroaming"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_wifi"

    const-string v2, "Wifi"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_gps"

    const-string v2, "Location"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_sound"

    const-string v2, "SilentMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_screen_rotation"

    const-string v2, "AutoRotate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_bluetooth"

    const-string v2, "Bluetooth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_mobile_data"

    const-string v2, "MobileData"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_apn"

    const-string v2, "Apn"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_blocking_mode"

    const-string v2, "DormantMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_powersaving"

    const-string v2, "PowerSaving"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_mobile_allshare_cast"

    const-string v2, "AllShareCast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_multiwindows"

    const-string v2, "MultiWindow"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_wifihotspot"

    const-string v2, "WiFiHotspot"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_sbeam"

    const-string v2, "SBeam"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_nfc"

    const-string v2, "Nfc"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_driving"

    const-string v2, "DrivingMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_smartstay"

    const-string v2, "SmartStay"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_sync"

    const-string v2, "Sync"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_airplane_mode"

    const-string v2, "AirplaneMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_e_reading"

    const-string v2, "Ebook"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_pen_mode"

    const-string v2, "PenOnly"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_air_view"

    const-string v2, "AirView"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_smartscroll"

    const-string v2, "SmartScroll"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_smartpause"

    const-string v2, "SmartPause"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_air_gesture"

    const-string v2, "AirGesture"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_smartnetwork"

    const-string v2, "SmartNetwork"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_personalmode"

    const-string v2, "PersonalMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_toddlermode"

    const-string v2, "ToddlerMode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    const-string v1, "notification_panel_dataroaming"

    const-string v2, "DataRoaming"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    return-void
.end method

.method private refreshUI()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 662
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentFooterView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    move-result v0

    .line 664
    const-string v1, "NotificationPanelMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshUI() - isRemoved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_0
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationPanelMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 668
    const v1, 0x7f040147

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 669
    const v0, 0x7f0b0292

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelArea:Landroid/widget/LinearLayout;

    .line 670
    const v0, 0x7f0b0294

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableBtnArea:Landroid/widget/LinearLayout;

    .line 671
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->updateQuickSettingsList()V

    .line 674
    const v0, 0x1020016

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 675
    const v2, 0x7f0912aa

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 678
    const v0, 0x1020010

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 679
    const v2, 0x7f0912ab

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 688
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 689
    iget v2, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsMinNum:I

    if-lt v2, v0, :cond_1

    .line 690
    const v0, 0x7f0b0293

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/PanelTextView;

    .line 691
    invoke-virtual {v0, v4}, Lcom/android/settings/PanelTextView;->setVisibility(I)V

    .line 692
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 695
    :cond_1
    const v0, 0x7f0b0291

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->resetBtn:Landroid/widget/Button;

    .line 696
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->resetBtn:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/NotificationPanelMenu$6;

    invoke-direct {v2, p0}, Lcom/android/settings/NotificationPanelMenu$6;-><init>(Lcom/android/settings/NotificationPanelMenu;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 722
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v5, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 723
    iput-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentFooterView:Landroid/view/View;

    .line 724
    return-void
.end method

.method private resetPanel()V
    .locals 5

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 243
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v3, "notification_panel_active_app_list_for_reset"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, activeApps:Ljava/lang/String;
    const-string v3, "notification_panel_active_number_of_apps_for_reset"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 246
    .local v1, activeAppsNum:I
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_panel_active_app_list"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 247
    const-string v3, "notification_panel_active_number_of_apps"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 249
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->loadAppslist()V

    .line 250
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->updateQuickSettingsList()V

    .line 251
    return-void
.end method

.method private saveAppslist()V
    .locals 7

    .prologue
    .line 636
    const-string v0, ""

    .line 640
    .local v0, activeApps:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 641
    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 642
    .local v2, convertPanelString:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 643
    .local v1, activeContent:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 640
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 645
    .end local v1           #activeContent:Ljava/lang/String;
    .end local v2           #convertPanelString:Ljava/lang/String;
    :cond_0
    const-string v4, "NotificationPanelMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAppslist() -  activeApps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 648
    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 649
    .restart local v2       #convertPanelString:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mConvertPanelItemstring:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 650
    .restart local v1       #activeContent:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 647
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 652
    .end local v1           #activeContent:Ljava/lang/String;
    .end local v2           #convertPanelString:Ljava/lang/String;
    :cond_1
    const-string v4, "NotificationPanelMenu"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAppslist() -  activeApps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_panel_active_number_of_apps"

    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 655
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_panel_active_app_list"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 657
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_panel_active_number_of_apps"

    const/16 v6, 0xa

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    .line 658
    return-void
.end method

.method private swapPanels(Ljava/util/ArrayList;ILjava/util/ArrayList;I)V
    .locals 2
    .parameter
    .parameter "longClickedIdx"
    .parameter
    .parameter "dropIdx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 630
    .local p1, longClickedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, dropList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 631
    .local v0, temp:Ljava/lang/String;
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 632
    invoke-virtual {p3, p4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 633
    return-void
.end method

.method private updateQuickSettingsList()V
    .locals 15

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 328
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 329
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 331
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 332
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailBtnLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 333
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 336
    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 341
    .local v2, oneLinePanelNum:I
    :goto_0
    const-string v0, "NotificationPanelMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateQuickSettingsList() - oneLinePanelNum: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int v3, v0, v2

    .line 345
    .local v3, notiPanelLines:I
    :goto_1
    const-string v0, "NotificationPanelMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateQuickSettingsList() - notiPanelLines: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    mul-int v0, v2, v3

    iput v0, p0, Lcom/android/settings/NotificationPanelMenu;->idxGap:I

    .line 350
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationPanelMenu;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    .line 351
    .local v13, inflater:Landroid/view/LayoutInflater;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    if-ge v12, v3, :cond_2

    .line 352
    const v0, 0x7f040144

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 353
    .local v11, container:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 351
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 339
    .end local v2           #oneLinePanelNum:I
    .end local v3           #notiPanelLines:I
    .end local v11           #container:Landroid/widget/FrameLayout;
    .end local v12           #i:I
    .end local v13           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .restart local v2       #oneLinePanelNum:I
    goto :goto_0

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/2addr v0, v2

    add-int/lit8 v3, v0, 0x1

    goto :goto_1

    .line 358
    .restart local v3       #notiPanelLines:I
    .restart local v12       #i:I
    .restart local v13       #inflater:Landroid/view/LayoutInflater;
    :cond_2
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/settings/NotificationPanelMenu;->mNotificationPanelLayoutList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationPanelList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveNotificationList:Ljava/util/ArrayList;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/NotificationPanelMenu;->displayQuickSettings(IIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 361
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/2addr v0, v2

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int v7, v0, v2

    .line 363
    .local v7, availBtnlLines:I
    :goto_3
    const-string v0, "NotificationPanelMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateQuickSettingsList() - availBtnlLines: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    if-nez v7, :cond_3

    .line 366
    const/4 v7, 0x1

    .line 368
    :cond_3
    const/4 v14, 0x0

    .local v14, j:I
    :goto_4
    if-ge v14, v7, :cond_5

    .line 369
    const v0, 0x7f040144

    const/4 v1, 0x0

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 370
    .restart local v11       #container:Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailBtnLayoutList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailableBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 368
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 361
    .end local v7           #availBtnlLines:I
    .end local v11           #container:Landroid/widget/FrameLayout;
    .end local v14           #j:I
    :cond_4
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/2addr v0, v2

    add-int/lit8 v7, v0, 0x1

    goto :goto_3

    .line 374
    .restart local v7       #availBtnlLines:I
    .restart local v14       #j:I
    :cond_5
    const/4 v5, 0x1

    iget-object v8, p0, Lcom/android/settings/NotificationPanelMenu;->mAvailBtnLayoutList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationPanelList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/settings/NotificationPanelMenu;->mCandidateNotificationList:Ljava/util/ArrayList;

    move-object v4, p0

    move v6, v2

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/NotificationPanelMenu;->displayQuickSettings(IIILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 376
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I

    .line 273
    const-string v0, "NotificationPanelMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityCreated() - mCurrentOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mSetKeyListenerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 278
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->refreshUI()V

    .line 279
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 280
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 316
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 318
    const-string v0, "NotificationPanelMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() - newConfig.orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / mCurrentOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 320
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/NotificationPanelMenu;->mCurrentOrientation:I

    .line 321
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->refreshUI()V

    .line 323
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 216
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mSalesCode:Ljava/lang/String;

    .line 218
    const v0, 0x7f070064

    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationPanelMenu;->addPreferencesFromResource(I)V

    .line 219
    const-string v0, "brightness_adjustment"

    invoke-virtual {p0, v0}, Lcom/android/settings/NotificationPanelMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsMinNum:I

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_panel_active_number_of_apps"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/NotificationPanelMenu;->mActiveAppsNum:I

    .line 224
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->makeConvertPanelName()V

    .line 225
    invoke-direct {p0}, Lcom/android/settings/NotificationPanelMenu;->loadAppslist()V

    .line 226
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 231
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 233
    const-string v1, "NotificationPanelMenu"

    const-string v2, "onDestroy()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "direct_quickpanel"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 236
    .local v0, isFromQuickPanel:Z
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "direct_quickpanel"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 239
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 291
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightnessAdjustmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 294
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 296
    iput-object v2, p0, Lcom/android/settings/NotificationPanelMenu;->mAlertDialog:Landroid/app/AlertDialog;

    .line 298
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 307
    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 309
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_panel_brightness_adjustment"

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 311
    .end local v0           #value:Z
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 309
    .restart local v0       #value:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 284
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 285
    iget-object v2, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_panel_brightness_adjustment"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/NotificationPanelMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "notification_panel_brightness_adjustment"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/NotificationPanelMenu;->mBrightnessAdjustmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 287
    return-void

    :cond_0
    move v0, v1

    .line 285
    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/settings/NotificationPanelMenu;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/NotificationPanelMenu;->mSetKeyListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 302
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 303
    return-void
.end method
