.class public Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;
.super Landroid/app/Fragment;
.source "PersonalPageChooseLockPattern.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/personalpage/PersonalPageChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPatternFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;,
        Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;,
        Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;
    }
.end annotation


# instance fields
.field private final mAnimatePattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field protected mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mFooterLeftButton:Landroid/widget/TextView;

.field private mFooterRightButton:Landroid/widget/TextView;

.field protected mFooterText:Landroid/widget/TextView;

.field protected mHeaderText:Landroid/widget/TextView;

.field protected mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 95
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 121
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-static {v3, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v3, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v2, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x3

    invoke-static {v4, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    .line 149
    new-instance v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$1;-><init>(Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 304
    sget-object v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 306
    new-instance v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$2;-><init>(Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    return-object v0
.end method

.method private postClearPatternRunnable()V
    .locals 4

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 518
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 519
    return-void
.end method

.method private saveChosenPatternAndFinish()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 523
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    .line 524
    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 530
    :goto_0
    const-string v3, "PersonalPageChooseLockPattern"

    const-string v4, "save LockPatttern for Personal page"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->savePersonalModeLockPattern(Ljava/util/List;)V

    .line 534
    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    .line 543
    :cond_0
    const-string v0, "PersonalPageChooseLockPattern"

    const-string v2, "Pattern setup is done, will call additional pin setup screen"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 545
    const-string v2, "PersonalPagePatternOwnAdditionalPin"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 547
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 548
    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->startActivity(Landroid/content/Intent;)V

    .line 549
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 552
    return-void

    .line 524
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 132
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 133
    const-string v0, "PersonalPageChooseLockPattern"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    packed-switch p1, :pswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 136
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 140
    :cond_0
    sget-object v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 367
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_1

    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 369
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 370
    sget-object v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_2

    .line 373
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 376
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left footer button pressed, but stage of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t make sense"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_3
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_5

    .line 382
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_4

    .line 383
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_4
    sget-object v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 387
    :cond_5
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_7

    .line 388
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_6

    .line 389
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->saveChosenPatternAndFinish()V

    goto/16 :goto_0

    .line 396
    :cond_7
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_8

    .line 398
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Help screen is only mode with ok button, but stage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_8
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 402
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 403
    sget-object v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 320
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 321
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 322
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 329
    const v3, 0x7f04003a

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 330
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0b007c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    .line 331
    const v3, 0x7f0b00a4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockPatternView;

    iput-object v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 332
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 333
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v4}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 336
    const v3, 0x7f0b00a5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    .line 338
    const v3, 0x7f0b00a6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    .line 339
    const v3, 0x7f0b00a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    .line 341
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    const v3, 0x7f0b00a3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 349
    .local v1, topLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 351
    if-nez p3, :cond_0

    .line 352
    sget-object v3, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v3}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 361
    :goto_0
    return-object v2

    .line 355
    :cond_0
    const-string v3, "chosenPattern"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, patternString:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 357
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 359
    :cond_1
    invoke-static {}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->values()[Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v3

    const-string v4, "uiStage"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 424
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 426
    const-string v0, "uiStage"

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 427
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 428
    const-string v0, "chosenPattern"

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_0
    return-void
.end method

.method protected updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    .locals 7
    .parameter "stage"

    .prologue
    const/4 v6, 0x0

    .line 440
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 442
    .local v0, previousStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;
    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 446
    sget-object v1, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v1, :cond_1

    .line 447
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p1, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    :goto_0
    iget v1, p1, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 455
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    :goto_1
    iget-object v1, p1, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v2, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v1, v2, :cond_3

    .line 461
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    :goto_2
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget v2, v2, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->text:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 469
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget-boolean v2, v2, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->enabled:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 472
    iget-boolean v1, p1, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    if-eqz v1, :cond_4

    .line 473
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 480
    :goto_3
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 482
    sget-object v1, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$1;->$SwitchMap$com$android$settings$personalpage$PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage:[I

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v2}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 508
    :goto_4
    :pswitch_0
    if-eq v0, p1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 511
    :cond_0
    return-void

    .line 452
    :cond_1
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget v2, p1, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 457
    :cond_2
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    iget v2, p1, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 463
    :cond_3
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 464
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget v2, v2, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->text:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 465
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget-boolean v2, v2, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->enabled:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 475
    :cond_4
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->disableInput()V

    goto :goto_3

    .line 484
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_4

    .line 487
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    goto :goto_4

    .line 490
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 491
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    goto :goto_4

    .line 496
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_4

    .line 499
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 500
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    goto :goto_4

    .line 482
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
