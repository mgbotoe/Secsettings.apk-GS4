.class public Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;
.super Landroid/app/Fragment;
.source "PersonalPageChooseLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/personalpage/PersonalPageChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;
    }
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mCheckSimplePassword:Z

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsAlphaMode:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

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

.field private mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 209
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 127
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 128
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 129
    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 130
    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 131
    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 132
    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 133
    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 134
    iput v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 137
    const/high16 v0, 0x2

    iput v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 139
    sget-object v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 153
    new-instance v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$1;-><init>(Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 169
    iput-boolean v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    .line 211
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private checkRepeatingChars(Ljava/lang/String;)Z
    .locals 7
    .parameter "password"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 607
    const/4 v2, 0x0

    .line 609
    .local v2, nLoop:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_2

    .line 610
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 611
    .local v0, beforeChar:C
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 612
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v0, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 614
    :goto_1
    const/4 v5, 0x3

    if-lt v2, v5, :cond_1

    .line 615
    const-string v4, "ChooseLockPassword"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "has internal loop password : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    .end local v0           #beforeChar:C
    .end local v1           #i:I
    :goto_2
    return v3

    .line 613
    .restart local v0       #beforeChar:C
    .restart local v1       #i:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 618
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 611
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #beforeChar:C
    .end local v1           #i:I
    :cond_2
    move v3, v4

    .line 621
    goto :goto_2
.end method

.method private checkSequentialChars(Ljava/lang/String;)Z
    .locals 7
    .parameter "password"

    .prologue
    const/4 v4, 0x1

    .line 583
    const-string v5, "0123456789"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x4

    .line 584
    .local v1, maxLoop:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-gt v0, v1, :cond_2

    .line 585
    const-string v5, "0123456789"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 586
    .local v2, pattern:Ljava/lang/String;
    const-string v5, "9876543210"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 587
    .local v3, reversePattern:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 588
    :cond_0
    const-string v5, "ChooseLockPassword"

    const-string v6, "has Sequential password"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    .end local v2           #pattern:Ljava/lang/String;
    .end local v3           #reversePattern:Ljava/lang/String;
    :goto_1
    return v4

    .line 584
    .restart local v2       #pattern:Ljava/lang/String;
    .restart local v3       #reversePattern:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 593
    .end local v2           #pattern:Ljava/lang/String;
    .end local v3           #reversePattern:Ljava/lang/String;
    :cond_2
    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x4

    .line 594
    const/4 v0, 0x0

    :goto_2
    if-gt v0, v1, :cond_5

    .line 595
    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 596
    .restart local v2       #pattern:Ljava/lang/String;
    const-string v5, "zyxwvutsrqponmlkjihgfedcba"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 597
    .restart local v3       #reversePattern:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 598
    :cond_3
    const-string v5, "ChooseLockPassword"

    const-string v6, "has Sequential password"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 594
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 603
    .end local v2           #pattern:Ljava/lang/String;
    .end local v3           #reversePattern:Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getEncryptionStatus()I
    .locals 3

    .prologue
    .line 785
    const-string v1, "ro.crypto.state"

    const-string v2, "unencrypted"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, status:Ljava/lang/String;
    const-string v1, "encrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    const/4 v1, 0x3

    .line 791
    :goto_0
    return v1

    .line 788
    :cond_0
    const-string v1, "unsupported"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 789
    const/4 v1, 0x0

    goto :goto_0

    .line 791
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private handleNext()V
    .locals 6

    .prologue
    .line 627
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, pin:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    const/4 v0, 0x0

    .line 632
    .local v0, errorMsg:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v4, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v3, v4, :cond_3

    .line 633
    const-string v3, "ChooseLockPassword"

    const-string v4, "Stage Introduction: "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-direct {p0, v1}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 635
    if-nez v0, :cond_2

    .line 636
    iput-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 637
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    sget-object v3, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v3}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 639
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    .line 666
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 667
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-direct {p0, v0, v3}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->showError(Ljava/lang/String;Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_0

    .line 641
    :cond_3
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v4, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v3, v4, :cond_2

    .line 642
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 644
    iget v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 645
    const-string v3, "ChooseLockPassword"

    const-string v4, "Save PIN for Personalpage"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->savePersonalModeLockPin(Ljava/lang/String;)V

    .line 654
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setResult(I)V

    .line 655
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 647
    :cond_5
    iget v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 648
    const-string v3, "ChooseLockPassword"

    const-string v4, "Save Password for Personalpage"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->savePersonalModeLockPassword(Ljava/lang/String;)V

    goto :goto_2

    .line 658
    :cond_6
    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 659
    .local v2, tmp:Ljava/lang/CharSequence;
    if-eqz v2, :cond_7

    move-object v3, v2

    .line 660
    check-cast v3, Landroid/text/Spannable;

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 662
    :cond_7
    sget-object v3, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v3}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_1
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 4
    .parameter "msg"
    .parameter "next"

    .prologue
    const/4 v3, 0x1

    .line 702
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 704
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 705
    .local v0, mesg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 706
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 707
    return-void
.end method

.method private updateUi()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 727
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 728
    .local v3, password:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 730
    .local v1, length:I
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-eq v4, v7, :cond_0

    .line 731
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 732
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 735
    :cond_0
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v7, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v4, v7, :cond_4

    if-lez v1, :cond_4

    .line 737
    iget v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v1, v4, :cond_2

    .line 738
    iget-boolean v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v4, :cond_1

    const v4, 0x7f090219

    :goto_0
    new-array v5, v5, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 740
    .local v2, msg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 757
    .end local v2           #msg:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v5, v5, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 758
    return-void

    .line 738
    :cond_1
    const v4, 0x7f09021a

    goto :goto_0

    .line 743
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, error:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 745
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 746
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 749
    :cond_3
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x7f09021b

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 750
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 754
    .end local v0           #error:Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v4, v4, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    :goto_2
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(I)V

    .line 755
    iget-object v7, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    if-lez v1, :cond_6

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 754
    :cond_5
    iget-object v4, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v4, v4, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    goto :goto_2

    :cond_6
    move v4, v6

    .line 755
    goto :goto_3
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "password"

    .prologue
    .line 468
    iget-boolean v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    if-eqz v10, :cond_3

    .line 469
    invoke-direct {p0, p1}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 470
    iget-boolean v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_0

    const v10, 0x7f090ecb

    :goto_0
    invoke-virtual {p0, v10}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 577
    :goto_1
    return-object v10

    .line 470
    :cond_0
    const v10, 0x7f090ecd

    goto :goto_0

    .line 473
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 474
    iget-boolean v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_2

    const v10, 0x7f090eca

    :goto_2
    invoke-virtual {p0, v10}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_2
    const v10, 0x7f090ecc

    goto :goto_2

    .line 480
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    iget v11, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v10, v11, :cond_5

    .line 481
    iget-boolean v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_4

    const v10, 0x7f090219

    :goto_3
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_4
    const v10, 0x7f09021a

    goto :goto_3

    .line 485
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    iget v11, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v10, v11, :cond_7

    .line 486
    iget-boolean v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_6

    const v10, 0x7f09021d

    :goto_4
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_6
    const v10, 0x7f09021e

    goto :goto_4

    .line 490
    :cond_7
    const/4 v4, 0x0

    .line 491
    .local v4, letters:I
    const/4 v7, 0x0

    .line 492
    .local v7, numbers:I
    const/4 v5, 0x0

    .line 493
    .local v5, lowercase:I
    const/4 v8, 0x0

    .line 494
    .local v8, symbols:I
    const/4 v9, 0x0

    .line 495
    .local v9, uppercase:I
    const/4 v6, 0x0

    .line 496
    .local v6, nonletter:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v3, v10, :cond_d

    .line 497
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 499
    .local v2, c:C
    const/16 v10, 0x20

    if-lt v2, v10, :cond_8

    const/16 v10, 0x7f

    if-le v2, v10, :cond_9

    .line 500
    :cond_8
    const v10, 0x7f090221

    invoke-virtual {p0, v10}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 502
    :cond_9
    const/16 v10, 0x30

    if-lt v2, v10, :cond_a

    const/16 v10, 0x39

    if-gt v2, v10, :cond_a

    .line 503
    add-int/lit8 v7, v7, 0x1

    .line 504
    add-int/lit8 v6, v6, 0x1

    .line 496
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 505
    :cond_a
    const/16 v10, 0x41

    if-lt v2, v10, :cond_b

    const/16 v10, 0x5a

    if-gt v2, v10, :cond_b

    .line 506
    add-int/lit8 v4, v4, 0x1

    .line 507
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 508
    :cond_b
    const/16 v10, 0x61

    if-lt v2, v10, :cond_c

    const/16 v10, 0x7a

    if-gt v2, v10, :cond_c

    .line 509
    add-int/lit8 v4, v4, 0x1

    .line 510
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 512
    :cond_c
    add-int/lit8 v8, v8, 0x1

    .line 513
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 517
    .end local v2           #c:C
    :cond_d
    const/high16 v10, 0x2

    iget v11, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_f

    if-gtz v4, :cond_e

    if-lez v8, :cond_f

    .line 521
    :cond_e
    const v10, 0x7f09021f

    invoke-virtual {p0, v10}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 523
    :cond_f
    const/high16 v10, 0x6

    iget v11, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_15

    .line 525
    iget v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-ge v4, v10, :cond_10

    .line 526
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f110001

    iget v12, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 529
    :cond_10
    iget v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    if-ge v7, v10, :cond_11

    .line 530
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f110004

    iget v12, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 533
    :cond_11
    iget v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    if-ge v5, v10, :cond_12

    .line 534
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f110002

    iget v12, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 537
    :cond_12
    iget v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    if-ge v9, v10, :cond_13

    .line 538
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f110003

    iget v12, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 541
    :cond_13
    iget v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    if-ge v8, v10, :cond_14

    .line 542
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f110005

    iget v12, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 545
    :cond_14
    iget v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    if-ge v6, v10, :cond_1d

    .line 546
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f110006

    iget v12, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 550
    :cond_15
    const/high16 v10, 0x7

    iget v11, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_18

    .line 555
    if-gtz v4, :cond_16

    if-lez v8, :cond_17

    .line 556
    :cond_16
    const v10, 0x7f0901ec

    invoke-virtual {p0, v10}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 558
    :cond_17
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 561
    :cond_18
    const/high16 v10, 0x4

    iget v11, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_1a

    const/4 v0, 0x1

    .line 563
    .local v0, alphabetic:Z
    :goto_7
    const/high16 v10, 0x5

    iget v11, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_1b

    const/4 v1, 0x1

    .line 565
    .local v1, alphanumeric:Z
    :goto_8
    if-nez v0, :cond_19

    if-eqz v1, :cond_1c

    :cond_19
    if-nez v4, :cond_1c

    .line 566
    const v10, 0x7f090222

    invoke-virtual {p0, v10}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 561
    .end local v0           #alphabetic:Z
    .end local v1           #alphanumeric:Z
    :cond_1a
    const/4 v0, 0x0

    goto :goto_7

    .line 563
    .restart local v0       #alphabetic:Z
    :cond_1b
    const/4 v1, 0x0

    goto :goto_8

    .line 568
    .restart local v1       #alphanumeric:Z
    :cond_1c
    if-eqz v1, :cond_1d

    if-nez v7, :cond_1d

    .line 569
    const v10, 0x7f090223

    invoke-virtual {p0, v10}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 572
    .end local v0           #alphabetic:Z
    .end local v1           #alphanumeric:Z
    :cond_1d
    iget-object v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 573
    iget-boolean v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_1e

    const v10, 0x7f090226

    :goto_9
    invoke-virtual {p0, v10}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    :cond_1e
    const v10, 0x7f090220

    goto :goto_9

    .line 577
    :cond_1f
    const/4 v10, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 767
    sget-object v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 769
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 770
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 775
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 437
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 438
    packed-switch p1, :pswitch_data_0

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 440
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 438
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 674
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 676
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 681
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 683
    sget-boolean v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v0, :cond_3

    .line 685
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_1

    .line 686
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 688
    :cond_1
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 689
    :cond_2
    sget-object v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 690
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 696
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 674
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b007e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 400
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 401
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, pin:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 403
    .local v0, cursorPos:I
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->onDestroyView()V

    .line 404
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 406
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 413
    :cond_0
    const-string v2, ""

    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 414
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 418
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v10, 0x10

    const/4 v9, 0x4

    .line 215
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 216
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 219
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 220
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword;->isChangePwdRequired:Z

    .line 222
    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    .line 223
    const-string v5, "ChooseLockPassword"

    const-string v6, "mCheckSimplePassword = false"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.android.email"

    const-string v8, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getSimplePasswordEnabled(Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 227
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    .line 228
    const-string v5, "ChooseLockPassword"

    const-string v6, "mCheckSimplePassword = true"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_1
    const-string v5, "lockscreen.password_type"

    iget v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 234
    const-string v5, "lockscreen.password_min"

    iget v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 237
    const-string v5, "lockscreen.password_max"

    iget v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 238
    const-string v5, "lockscreen.password_min_letters"

    iget v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 240
    const-string v5, "lockscreen.password_min_uppercase"

    iget v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 242
    const-string v5, "lockscreen.password_min_lowercase"

    iget v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 244
    const-string v5, "lockscreen.password_min_numeric"

    iget v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 246
    const-string v5, "lockscreen.password_min_symbols"

    iget v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 248
    const-string v5, "lockscreen.password_min_nonletter"

    iget v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 252
    iget-object v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength()I

    move-result v5

    if-nez v5, :cond_4

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 256
    .local v2, dpm:Landroid/app/admin/DevicePolicyManager;
    new-instance v1, Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 257
    .local v1, dem:Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v4

    .line 258
    .local v4, sdPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    if-nez v4, :cond_2

    .line 259
    new-instance v4, Landroid/dirEncryption/SDCardEncryptionPolicies;

    .end local v4           #sdPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {v4}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 262
    .restart local v4       #sdPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getEncryptionStatus()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    const/4 v5, 0x2

    iget v6, v4, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v5, v6, :cond_4

    .line 266
    :cond_3
    iget v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v6, 0x2

    if-ne v5, v6, :cond_8

    .line 267
    iput v9, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 276
    .end local v1           #dem:Landroid/dirEncryption/DirEncryptionManager;
    .end local v2           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v4           #sdPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_4
    :goto_0
    const/4 v0, 0x4

    .line 277
    .local v0, MIN_PWD_LENGTH:I
    iget v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-lt v5, v9, :cond_9

    iget v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    iget v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-ge v5, v6, :cond_9

    .line 285
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    iput-object v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 287
    iget v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v5, v9, :cond_6

    .line 288
    iput v9, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 290
    :cond_6
    iget v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v5, v10, :cond_7

    .line 291
    iput v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 295
    :cond_7
    new-instance v5, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 296
    return-void

    .line 269
    .end local v0           #MIN_PWD_LENGTH:I
    .restart local v1       #dem:Landroid/dirEncryption/DirEncryptionManager;
    .restart local v2       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v4       #sdPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_8
    const/4 v5, 0x6

    iput v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    goto :goto_0

    .line 279
    .end local v1           #dem:Landroid/dirEncryption/DirEncryptionManager;
    .end local v2           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v4           #sdPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v0       #MIN_PWD_LENGTH:I
    :cond_9
    iget v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v5, v9, :cond_a

    .line 280
    iput v9, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    goto :goto_1

    .line 281
    :cond_a
    iget v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    iget v6, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v5, v6, :cond_5

    .line 282
    iget v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    iput v5, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 302
    const v10, 0x7f040038

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 304
    .local v9, view:Landroid/view/View;
    const v10, 0x7f0b007e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    .line 305
    iget-object v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    sget-boolean v10, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v10, :cond_0

    .line 308
    iget-object v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setClickable(Z)V

    .line 309
    iget-object v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 313
    :cond_0
    const v10, 0x7f0b007f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    .line 314
    iget-object v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    const/high16 v10, 0x4

    iget v11, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v10, v11, :cond_1

    const/high16 v10, 0x5

    iget v11, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v10, v11, :cond_1

    const/high16 v10, 0x6

    iget v11, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_4

    :cond_1
    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    .line 320
    const v10, 0x7f0b0099

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 321
    const v10, 0x7f0b0097

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 322
    iget-object v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 323
    iget-object v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 324
    iget-object v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/high16 v11, 0x200

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 327
    .local v1, activity:Landroid/app/Activity;
    new-instance v10, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v11, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v12, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v10, v1, v11, v12}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 329
    iget-object v11, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-boolean v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_5

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v11, v10}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 333
    const v10, 0x7f0b007c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 334
    iget-object v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v10}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 336
    iget-object v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getInputType()I

    move-result v3

    .line 337
    .local v3, currentType:I
    iget-object v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-boolean v11, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v11, :cond_6

    .end local v3           #currentType:I
    :goto_2
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 341
    .local v5, intent:Landroid/content/Intent;
    const-string v10, "confirm_credentials"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 342
    .local v2, confirmCredentials:Z
    if-nez p3, :cond_7

    .line 343
    sget-object v10, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v10}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 344
    if-eqz v2, :cond_2

    .line 345
    iget-object v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const/16 v11, 0x3a

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 357
    :cond_2
    :goto_3
    instance-of v10, v1, Landroid/preference/PreferenceActivity;

    if-eqz v10, :cond_3

    move-object v6, v1

    .line 358
    check-cast v6, Landroid/preference/PreferenceActivity;

    .line 360
    .local v6, preferenceActivity:Landroid/preference/PreferenceActivity;
    iget-boolean v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_8

    const v4, 0x7f0906da

    .line 363
    .local v4, id:I
    :goto_4
    invoke-virtual {p0, v4}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 364
    .local v8, title:Ljava/lang/CharSequence;
    invoke-virtual {v6, v8, v8}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 367
    .end local v4           #id:I
    .end local v6           #preferenceActivity:Landroid/preference/PreferenceActivity;
    .end local v8           #title:Ljava/lang/CharSequence;
    :cond_3
    iget-object v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v11, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$2;

    invoke-direct {v11, p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$2;-><init>(Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 380
    return-object v9

    .line 316
    .end local v1           #activity:Landroid/app/Activity;
    .end local v2           #confirmCredentials:Z
    .end local v5           #intent:Landroid/content/Intent;
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 329
    .restart local v1       #activity:Landroid/app/Activity;
    :cond_5
    const/4 v10, 0x1

    goto :goto_1

    .line 337
    .restart local v3       #currentType:I
    :cond_6
    const/16 v3, 0x12

    goto :goto_2

    .line 349
    .end local v3           #currentType:I
    .restart local v2       #confirmCredentials:Z
    .restart local v5       #intent:Landroid/content/Intent;
    :cond_7
    const-string v10, "first_pin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 350
    const-string v10, "ui_stage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 351
    .local v7, state:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 352
    invoke-static {v7}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 353
    iget-object v10, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v10}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_3

    .line 360
    .end local v7           #state:Ljava/lang/String;
    .restart local v6       #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_8
    const v4, 0x7f0906dc

    goto :goto_4
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 712
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 715
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    .line 716
    const/4 v0, 0x1

    .line 718
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 422
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 423
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 424
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 385
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 388
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 389
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 391
    sget-boolean v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f090ec7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 395
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 429
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 430
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 780
    return-void
.end method

.method protected updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 3
    .parameter "stage"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 450
    .local v0, previousStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;
    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 451
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 455
    if-eq v0, p1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 458
    :cond_0
    return-void
.end method
