.class Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$1;
.super Ljava/lang/Object;
.source "PersonalPageChooseLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private patternInProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 192
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f0906ef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;

    #getter for: Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->access$200(Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;

    #getter for: Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->access$300(Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 196
    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;

    #getter for: Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->access$000(Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 161
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;

    #getter for: Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;
    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->access$100(Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;

    #getter for: Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;
    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->access$100(Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_3

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "null chosen pattern in stage \'need to confirm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 184
    :goto_0
    return-void

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;

    #getter for: Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;
    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->access$100(Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;

    #getter for: Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;
    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->access$100(Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_6

    .line 174
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    .line 175
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 177
    :cond_5
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    .line 178
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 181
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;

    #getter for: Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;
    invoke-static {v2}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->access$100(Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "entering the pattern."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$1;->this$0:Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;

    #getter for: Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;->access$000(Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 155
    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageChooseLockPattern$ChooseLockPatternFragment$1;->patternInProgress()V

    .line 156
    return-void
.end method
