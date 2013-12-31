.class Lcom/android/settings/users/AppRestrictionsFragment$4;
.super Ljava/lang/Object;
.source "AppRestrictionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/AppRestrictionsFragment;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/AppRestrictionsFragment;

.field final synthetic val$userNameView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$4;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    iput-object p2, p0, Lcom/android/settings/users/AppRestrictionsFragment$4;->val$userNameView:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1136
    const/4 v4, -0x1

    if-ne p2, v4, :cond_3

    .line 1138
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$4;->val$userNameView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 1139
    .local v3, userName:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1140
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$4;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    #getter for: Lcom/android/settings/users/AppRestrictionsFragment;->mUserNameView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/settings/users/AppRestrictionsFragment;->access$1600(Lcom/android/settings/users/AppRestrictionsFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1141
    .local v2, oldUserName:Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1143
    :cond_0
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$4;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    #getter for: Lcom/android/settings/users/AppRestrictionsFragment;->mHeaderView:Landroid/view/View;
    invoke-static {v4}, Lcom/android/settings/users/AppRestrictionsFragment;->access$1700(Lcom/android/settings/users/AppRestrictionsFragment;)Landroid/view/View;

    move-result-object v4

    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1145
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$4;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    #getter for: Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;
    invoke-static {v4}, Lcom/android/settings/users/AppRestrictionsFragment;->access$1200(Lcom/android/settings/users/AppRestrictionsFragment;)Landroid/os/UserManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment$4;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    #getter for: Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;
    invoke-static {v5}, Lcom/android/settings/users/AppRestrictionsFragment;->access$1100(Lcom/android/settings/users/AppRestrictionsFragment;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/UserManager;->setUserName(ILjava/lang/String;)V

    .line 1150
    .end local v2           #oldUserName:Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$4;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    #getter for: Lcom/android/settings/users/AppRestrictionsFragment;->mEditUserPhotoController:Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;
    invoke-static {v4}, Lcom/android/settings/users/AppRestrictionsFragment;->access$1800(Lcom/android/settings/users/AppRestrictionsFragment;)Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->getNewUserPhotoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1151
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$4;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    #getter for: Lcom/android/settings/users/AppRestrictionsFragment;->mEditUserPhotoController:Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;
    invoke-static {v4}, Lcom/android/settings/users/AppRestrictionsFragment;->access$1800(Lcom/android/settings/users/AppRestrictionsFragment;)Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/users/AppRestrictionsFragment$EditUserPhotoController;->getNewUserPhotoBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1152
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$4;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    #getter for: Lcom/android/settings/users/AppRestrictionsFragment;->mUserIconView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/settings/users/AppRestrictionsFragment;->access$1900(Lcom/android/settings/users/AppRestrictionsFragment;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1154
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$4;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    #getter for: Lcom/android/settings/users/AppRestrictionsFragment;->mUserIconView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/settings/users/AppRestrictionsFragment;->access$1900(Lcom/android/settings/users/AppRestrictionsFragment;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1155
    new-instance v5, Lcom/android/settings/users/AppRestrictionsFragment$4$1;

    invoke-direct {v5, p0}, Lcom/android/settings/users/AppRestrictionsFragment$4$1;-><init>(Lcom/android/settings/users/AppRestrictionsFragment$4;)V

    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Void;

    invoke-virtual {v5, v6, v4}, Lcom/android/settings/users/AppRestrictionsFragment$4$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1164
    :cond_2
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$4;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    const/4 v5, 0x1

    #calls: Lcom/android/settings/users/AppRestrictionsFragment;->removeDialog(I)V
    invoke-static {v4, v5}, Lcom/android/settings/users/AppRestrictionsFragment;->access$2000(Lcom/android/settings/users/AppRestrictionsFragment;I)V

    .line 1166
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #userName:Ljava/lang/CharSequence;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$4;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    #calls: Lcom/android/settings/users/AppRestrictionsFragment;->clearEditUserInfoDialog()V
    invoke-static {v4}, Lcom/android/settings/users/AppRestrictionsFragment;->access$1500(Lcom/android/settings/users/AppRestrictionsFragment;)V

    .line 1167
    return-void
.end method
