.class Lcom/android/settings/encryption/CryptSDCardOptionConfirm$1;
.super Ljava/lang/Object;
.source "CryptSDCardOptionConfirm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/encryption/CryptSDCardOptionConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/encryption/CryptSDCardOptionConfirm;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm$1;->this$0:Lcom/android/settings/encryption/CryptSDCardOptionConfirm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/encryption/CryptSDCardOptionConfirm$1;->this$0:Lcom/android/settings/encryption/CryptSDCardOptionConfirm;

    #calls: Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->applyEncryptionUpdates()V
    invoke-static {v0}, Lcom/android/settings/encryption/CryptSDCardOptionConfirm;->access$000(Lcom/android/settings/encryption/CryptSDCardOptionConfirm;)V

    .line 92
    return-void
.end method
