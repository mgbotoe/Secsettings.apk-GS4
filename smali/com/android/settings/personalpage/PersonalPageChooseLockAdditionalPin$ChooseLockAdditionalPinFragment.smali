.class public Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;
.super Landroid/app/Fragment;
.source "PersonalPageChooseLockAdditionalPin.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockAdditionalPinFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;
    }
.end annotation


# instance fields
.field private isFallback:Z

.field private isPersonalPageLockPatternAdditionalPin:Z

.field private isSetLockToSignature:Z

.field private isSignatureOwnAdditionalPin:Z

.field private mCancelButton:Landroid/widget/Button;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

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

.field private mFirstLockQuality:I

.field private mFirstLockString:Ljava/lang/String;

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockText:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mRequestedQuality:I

.field private mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x2

    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 91
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    .line 92
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    .line 93
    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLetters:I

    .line 94
    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinUpperCase:I

    .line 95
    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLowerCase:I

    .line 96
    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinSymbols:I

    .line 97
    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinNumeric:I

    .line 98
    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinNonLetter:I

    .line 100
    iput v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    .line 101
    iput v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockQuality:I

    .line 102
    iput-boolean v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isFallback:Z

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    .line 108
    sget-object v0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->Introduction:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    .line 132
    new-instance v0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$1;-><init>(Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private handleNext()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 374
    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, pin:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    const/4 v0, 0x0

    .line 379
    .local v0, errorMsg:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    sget-object v7, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->Introduction:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    if-ne v6, v7, :cond_3

    .line 380
    invoke-direct {p0, v2}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    if-nez v0, :cond_2

    .line 382
    iput-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstPin:Ljava/lang/String;

    .line 383
    sget-object v5, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->NeedToConfirm:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    .line 384
    iget-object v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 430
    iget-object v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-direct {p0, v0, v5}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->showError(Ljava/lang/String;Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    goto :goto_0

    .line 386
    :cond_3
    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    sget-object v7, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->NeedToConfirm:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    if-ne v6, v7, :cond_2

    .line 387
    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 389
    iget-boolean v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignatureOwnAdditionalPin:Z

    if-eqz v6, :cond_4

    .line 390
    invoke-direct {p0, v2}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->saveAdditionalPinForSignatureAndFinish(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_4
    iget-boolean v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isPersonalPageLockPatternAdditionalPin:Z

    if-eqz v6, :cond_5

    .line 395
    invoke-direct {p0, v2}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->saveAdditionalPinForPersonalPageLockPattern(Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :cond_5
    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen()Z

    move-result v6

    if-nez v6, :cond_6

    move v1, v5

    .line 403
    .local v1, lockVirgin:Z
    :cond_6
    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isFallback:Z

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 404
    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    invoke-virtual {v6, v2, v7}, Lcom/android/internal/widget/LockPatternUtils;->saveLockBackupPin(Ljava/lang/String;I)V

    .line 406
    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockString:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    .line 407
    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChosenPattern:Ljava/util/List;

    iget-boolean v8, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isFallback:Z

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Z)V

    .line 408
    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 411
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 412
    .local v4, warningClearIntent:Landroid/content/Intent;
    const-string v6, "android.settings.SECURITY_WARNING_CLEAR"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 416
    if-eqz v1, :cond_7

    .line 417
    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    .line 420
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 422
    .end local v1           #lockVirgin:Z
    .end local v4           #warningClearIntent:Landroid/content/Intent;
    :cond_8
    sget-object v5, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->ConfirmWrong:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v5}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    .line 423
    iget-object v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 424
    .local v3, tmp:Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    move-object v5, v3

    .line 425
    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-static {v5, v1, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_1
.end method

.method private saveAdditionalPinForPersonalPageLockPattern(Ljava/lang/String;)V
    .locals 2
    .parameter "pin"

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->savePersonalModeLockBackupPin(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 536
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 537
    return-void
.end method

.method private saveAdditionalPinForSignatureAndFinish(Ljava/lang/String;)V
    .locals 3
    .parameter "pin"

    .prologue
    const/4 v2, 0x1

    .line 519
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->saveSignatureBackupPin(Ljava/lang/String;)V

    .line 522
    iget-boolean v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSetLockToSignature:Z

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 524
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockAsSignature(Z)V

    .line 527
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 528
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 529
    return-void
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V
    .locals 4
    .parameter "msg"
    .parameter "next"

    .prologue
    const/4 v2, 0x1

    .line 451
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 453
    .local v0, mesg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 454
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 455
    return-void
.end method

.method private updateUi()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 473
    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 474
    .local v3, password:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 476
    .local v1, length:I
    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    sget-object v7, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->Introduction:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    if-ne v6, v7, :cond_2

    if-lez v1, :cond_2

    .line 478
    iget v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    if-ge v1, v6, :cond_0

    .line 479
    const v6, 0x7f09021a

    new-array v4, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-virtual {p0, v6, v4}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, msg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 496
    .end local v2           #msg:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iget v5, v5, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->buttonText:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 497
    return-void

    .line 483
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, error:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 485
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 488
    :cond_1
    iget-object v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x7f09021b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 489
    iget-object v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 493
    .end local v0           #error:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iget v7, v7, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->numericHint:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 494
    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    if-lez v1, :cond_3

    :goto_1
    invoke-virtual {v6, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "password"

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 324
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    if-ge v7, v8, :cond_1

    .line 325
    const v6, 0x7f09021a

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 370
    :cond_0
    :goto_0
    return-object v6

    .line 327
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    if-le v7, v8, :cond_2

    .line 328
    const v6, 0x7f09021e

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 330
    :cond_2
    const/4 v2, 0x0

    .line 331
    .local v2, letters:I
    const/4 v4, 0x0

    .line 332
    .local v4, numbers:I
    const/4 v5, 0x0

    .line 333
    .local v5, symbols:I
    const/4 v3, 0x0

    .line 334
    .local v3, nonletter:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_8

    .line 335
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 337
    .local v0, c:C
    const/16 v7, 0x20

    if-le v0, v7, :cond_3

    const/16 v7, 0x7f

    if-le v0, v7, :cond_4

    .line 338
    :cond_3
    const v6, 0x7f090221

    invoke-virtual {p0, v6}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 340
    :cond_4
    const/16 v7, 0x30

    if-lt v0, v7, :cond_5

    const/16 v7, 0x39

    if-gt v0, v7, :cond_5

    .line 341
    add-int/lit8 v4, v4, 0x1

    .line 342
    add-int/lit8 v3, v3, 0x1

    .line 334
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 343
    :cond_5
    const/16 v7, 0x41

    if-lt v0, v7, :cond_6

    const/16 v7, 0x5a

    if-gt v0, v7, :cond_6

    .line 344
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 345
    :cond_6
    const/16 v7, 0x61

    if-lt v0, v7, :cond_7

    const/16 v7, 0x7a

    if-gt v0, v7, :cond_7

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 348
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 349
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 352
    .end local v0           #c:C
    :cond_8
    const/high16 v7, 0x2

    iget v8, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    if-ne v7, v8, :cond_a

    if-gtz v2, :cond_9

    if-lez v5, :cond_a

    .line 356
    :cond_9
    const v6, 0x7f09021f

    invoke-virtual {p0, v6}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 357
    :cond_a
    const/high16 v7, 0x7

    iget v8, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    if-ne v7, v8, :cond_c

    .line 360
    if-gtz v2, :cond_b

    if-lez v5, :cond_0

    .line 361
    :cond_b
    const v6, 0x7f0901ec

    invoke-virtual {p0, v6}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 367
    :cond_c
    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 368
    const v6, 0x7f090220

    invoke-virtual {p0, v6}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    sget-object v1, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->ConfirmWrong:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 503
    sget-object v0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->NeedToConfirm:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    .line 505
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateUi()V

    .line 506
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 511
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 300
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 301
    const-string v0, "ChooseLockAdditionalPin"

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

    .line 302
    packed-switch p1, :pswitch_data_0

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 304
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 436
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 448
    :goto_0
    return-void

    .line 438
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->handleNext()V

    goto :goto_0

    .line 443
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 444
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 436
    :pswitch_data_0
    .packed-switch 0x7f0b007e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/high16 v4, 0x1

    const/4 v3, 0x0

    .line 174
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 175
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 178
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "lockscreen.password_type"

    iget v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    .line 179
    const-string v1, "lockscreen.password_type"

    iget v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockQuality:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockQuality:I

    .line 180
    const-string v1, "firstlock"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockString:Ljava/lang/String;

    .line 181
    const-string v1, "lockscreen.password_min"

    iget v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    .line 182
    const-string v1, "lockscreen.password_max"

    iget v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    .line 183
    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isFallback:Z

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 185
    const-string v1, "lockscreen.password_type"

    iget v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    .line 187
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 190
    const-string v1, "SignatureOwnAdditionalPin"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignatureOwnAdditionalPin:Z

    .line 191
    const-string v1, "PersonalPagePatternOwnAdditionalPin"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isPersonalPageLockPatternAdditionalPin:Z

    .line 192
    iget-boolean v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignatureOwnAdditionalPin:Z

    if-eqz v1, :cond_0

    .line 193
    const-string v1, "SignatureLockSetting"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSetLockToSignature:Z

    .line 194
    iput v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mRequestedQuality:I

    .line 195
    iput v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstLockQuality:I

    .line 196
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMinLength:I

    .line 197
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordMaxLength:I

    .line 199
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 205
    const v7, 0x7f040034

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 207
    .local v6, view:Landroid/view/View;
    const v7, 0x7f0b007e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mCancelButton:Landroid/widget/Button;

    .line 208
    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const v7, 0x7f0b007f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    .line 211
    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    const v7, 0x7f0b0099

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 215
    const v7, 0x7f0b0097

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 216
    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setWritingBuddyEnabled(Z)V

    .line 217
    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 218
    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 219
    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v8, 0x200

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 222
    .local v0, activity:Landroid/app/Activity;
    new-instance v7, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v8, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v9, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v7, v0, v8, v9}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 224
    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 226
    const v7, 0x7f0b007c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHeaderText:Landroid/widget/TextView;

    .line 227
    const v7, 0x7f0b0098

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockText:Landroid/widget/TextView;

    .line 228
    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v7}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 230
    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v8, 0x12

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setInputType(I)V

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 234
    .local v2, intent:Landroid/content/Intent;
    if-nez p3, :cond_2

    .line 235
    sget-object v7, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->Introduction:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v7}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    .line 246
    :cond_0
    :goto_0
    instance-of v7, v0, Landroid/preference/PreferenceActivity;

    if-eqz v7, :cond_1

    move-object v3, v0

    .line 247
    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 248
    .local v3, preferenceActivity:Landroid/preference/PreferenceActivity;
    const v1, 0x7f0910b8

    .line 249
    .local v1, id:I
    invoke-virtual {p0, v1}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 250
    .local v5, title:Ljava/lang/CharSequence;
    invoke-virtual {v3, v5, v5}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 253
    .end local v1           #id:I
    .end local v3           #preferenceActivity:Landroid/preference/PreferenceActivity;
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_1
    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v8, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$2;

    invoke-direct {v8, p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$2;-><init>(Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 266
    return-object v6

    .line 238
    :cond_2
    const-string v7, "first_pin"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstPin:Ljava/lang/String;

    .line 239
    const-string v7, "ui_stage"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, state:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 241
    invoke-static {v4}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    .line 242
    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v7}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 460
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 463
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->handleNext()V

    .line 464
    const/4 v0, 0x1

    .line 466
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 287
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 288
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 272
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 273
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V

    .line 274
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 276
    iget-boolean v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->isSignatureOwnAdditionalPin:Z

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockText:Landroid/widget/TextView;

    const v1, 0x7f0910ba

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mLockText:Landroid/widget/TextView;

    const v1, 0x7f09154e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 292
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 293
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 516
    return-void
.end method

.method protected updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;)V
    .locals 0
    .parameter "stage"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment$Stage;

    .line 314
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;->updateUi()V

    .line 315
    return-void
.end method
