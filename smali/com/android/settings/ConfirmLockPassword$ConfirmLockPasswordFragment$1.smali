.class Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;
.super Landroid/os/AsyncTask;
.source "ConfirmLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

.field final synthetic val$pin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iput-object p2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->val$pin:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .parameter "cacpin"

    .prologue
    .line 267
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    #getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$500(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordWithCAC(Ljava/lang/String;)I

    move-result v0

    .line 268
    .local v0, result:I
    const-string v1, "ConfirmLockPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executeCacVerification: doInBackground"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 243
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 274
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    #getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$400(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 275
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    #getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$400(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 276
    :cond_0
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    #getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;
    invoke-static {v3}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$000(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/internal/widget/PasswordEntryKeyboardView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setEnabled(Z)V

    .line 277
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    #getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$100(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 278
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    #getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;
    invoke-static {v3}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$000(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/internal/widget/PasswordEntryKeyboardView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setKeepScreenOn(Z)V

    .line 280
    const-string v3, "ConfirmLockPassword"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Verify completed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v2, 0x0

    .line 282
    .local v2, res:Z
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 320
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const v4, 0x7f0901e1

    #calls: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V
    invoke-static {v3, v4}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$600(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)V

    .line 322
    :goto_0
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v3}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    #getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mOrientation:I
    invoke-static {v4}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$200(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 326
    .end local v2           #res:Z
    :goto_1
    return-void

    .line 284
    .restart local v2       #res:Z
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 285
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "password"

    iget-object v4, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->val$pin:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v3}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 287
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v3}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #res:Z
    :catch_0
    move-exception v0

    .line 324
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ConfirmLockPassword"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VerifyCAC"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 290
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #res:Z
    :pswitch_2
    :try_start_1
    const-string v3, "ConfirmLockPassword"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "verfiy completed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const v4, 0x7f0901e4

    #calls: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V
    invoke-static {v3, v4}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$600(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)V

    goto :goto_0

    .line 295
    :pswitch_3
    const-string v3, "ConfirmLockPassword"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "verify completed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const v4, 0x7f0901e5

    #calls: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V
    invoke-static {v3, v4}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$600(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)V

    goto/16 :goto_0

    .line 301
    :pswitch_4
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const v4, 0x7f0901e7

    #calls: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V
    invoke-static {v3, v4}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$600(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)V

    goto/16 :goto_0

    .line 305
    :pswitch_5
    const-string v3, "ConfirmLockPassword"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "verify completed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const v4, 0x7f0901e3

    #calls: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V
    invoke-static {v3, v4}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$600(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)V

    goto/16 :goto_0

    .line 310
    :pswitch_6
    const-string v3, "ConfirmLockPassword"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "verify completed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const v4, 0x7f0901e2

    #calls: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V
    invoke-static {v3, v4}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$600(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)V

    goto/16 :goto_0

    .line 316
    :pswitch_7
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const v4, 0x7f0901e6

    #calls: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V
    invoke-static {v3, v4}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$600(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 282
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 243
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 247
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    #getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$000(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/internal/widget/PasswordEntryKeyboardView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setEnabled(Z)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    #getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$100(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 249
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    #getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$000(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/internal/widget/PasswordEntryKeyboardView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setKeepScreenOn(Z)V

    .line 253
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    #setter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mOrientation:I
    invoke-static {v0, v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$202(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)I

    .line 254
    const-string v0, "ConfirmLockPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    #getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mOrientation:I
    invoke-static {v2}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$200(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    #calls: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDeviceOrientation()I
    invoke-static {v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$300(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    #getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$400(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    #getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$400(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    #getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$400(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    #getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$400(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 260
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    #getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$400(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 261
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    #getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$400(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 262
    return-void
.end method
