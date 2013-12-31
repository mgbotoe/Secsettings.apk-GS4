.class Lcom/android/settings/CryptDecryptSettings$2;
.super Ljava/lang/Object;
.source "CryptDecryptSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptDecryptSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptDecryptSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptDecryptSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/settings/CryptDecryptSettings$2;->this$0:Lcom/android/settings/CryptDecryptSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 134
    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings$2;->this$0:Lcom/android/settings/CryptDecryptSettings;

    #getter for: Lcom/android/settings/CryptDecryptSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/CryptDecryptSettings;->access$100(Lcom/android/settings/CryptDecryptSettings;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CryptDecryptSettings$2;->this$0:Lcom/android/settings/CryptDecryptSettings;

    const v2, 0x7f090baa

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptDecryptSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings$2;->this$0:Lcom/android/settings/CryptDecryptSettings;

    iget-object v1, p0, Lcom/android/settings/CryptDecryptSettings$2;->this$0:Lcom/android/settings/CryptDecryptSettings;

    #getter for: Lcom/android/settings/CryptDecryptSettings;->mThis:Landroid/app/Fragment;
    invoke-static {v1}, Lcom/android/settings/CryptDecryptSettings;->access$600(Lcom/android/settings/CryptDecryptSettings;)Landroid/app/Fragment;

    move-result-object v1

    const-string v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v3, 0x7b

    #calls: Lcom/android/settings/CryptDecryptSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/CryptDecryptSettings;->access$700(Lcom/android/settings/CryptDecryptSettings;Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/settings/CryptDecryptSettings$2;->this$0:Lcom/android/settings/CryptDecryptSettings;

    const/16 v1, 0x37

    #calls: Lcom/android/settings/CryptDecryptSettings;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/android/settings/CryptDecryptSettings;->access$800(Lcom/android/settings/CryptDecryptSettings;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/CryptDecryptSettings$2;->this$0:Lcom/android/settings/CryptDecryptSettings;

    invoke-virtual {v1}, Lcom/android/settings/CryptDecryptSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0901b8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0901b9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
