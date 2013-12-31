.class Lcom/android/settings/encryption/CryptSDCardSettings$2;
.super Ljava/lang/Object;
.source "CryptSDCardSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/encryption/CryptSDCardSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/encryption/CryptSDCardSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/encryption/CryptSDCardSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    #getter for: Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$600(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    const v2, 0x7f090baa

    invoke-virtual {v1, v2}, Lcom/android/settings/encryption/CryptSDCardSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    iget-object v1, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    #getter for: Lcom/android/settings/encryption/CryptSDCardSettings;->mThis:Landroid/app/Fragment;
    invoke-static {v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$700(Lcom/android/settings/encryption/CryptSDCardSettings;)Landroid/app/Fragment;

    move-result-object v1

    const-string v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v3, 0x7b

    const/4 v4, 0x0

    #calls: Lcom/android/settings/encryption/CryptSDCardSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$800(Lcom/android/settings/encryption/CryptSDCardSettings;Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 142
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/encryption/CryptSDCardSettings;->mEnableDisableButtonSelected:Z
    invoke-static {v0, v1}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$902(Lcom/android/settings/encryption/CryptSDCardSettings;Z)Z

    .line 140
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardSettings$2;->this$0:Lcom/android/settings/encryption/CryptSDCardSettings;

    #calls: Lcom/android/settings/encryption/CryptSDCardSettings;->applyEncryptionUpdates()V
    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardSettings;->access$1000(Lcom/android/settings/encryption/CryptSDCardSettings;)V

    goto :goto_0
.end method
