.class Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$2;
.super Ljava/lang/Object;
.source "PersonalPageConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

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
    .line 280
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;

    #getter for: Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->access$000(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;

    #getter for: Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->access$100(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 275
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 5
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
    const/high16 v4, 0x2

    const/4 v3, 0x0

    .line 284
    const-string v0, "PersonalPageConfirmLockPattern"

    const-string v1, "check Pattern for PersonalPage"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;

    #getter for: Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->access$200(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPersonalModePattern(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 290
    const-string v1, "password"

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v1}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 294
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 324
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->access$304(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 303
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;

    #setter for: Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I
    invoke-static {v0, v3}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->access$302(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;I)I

    .line 305
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v1}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/personalpage/PersonalPageConfirmLockPassword;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 306
    const-string v1, "lockscreen.password_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    const-string v1, "request_quality"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 308
    const-string v1, "forLockPatternBackupPin"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 309
    const-string v1, "confirm_credentials"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 310
    const-string v1, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 311
    const-string v1, "lockscreen.signature_fallback"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 312
    const-string v1, "Block"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 313
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 314
    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v1}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 315
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;

    sget-object v1, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;

    #calls: Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;)V
    invoke-static {v0, v1}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->access$400(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;)V

    .line 320
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;

    #calls: Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->postClearPatternRunnable()V
    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->access$500(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;)V

    goto :goto_0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;

    #getter for: Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->access$000(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;

    #getter for: Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;->access$100(Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 270
    return-void
.end method
