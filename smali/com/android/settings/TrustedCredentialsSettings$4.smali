.class Lcom/android/settings/TrustedCredentialsSettings$4;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TrustedCredentialsSettings;->showtConfirmDialog(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsSettings;

.field final synthetic val$certHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$4;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$4;->val$certHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 401
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$4;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$4;->val$certHolder:Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Lcom/android/settings/TrustedCredentialsSettings$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 402
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 403
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$4;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    #getter for: Lcom/android/settings/TrustedCredentialsSettings;->mCertDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/settings/TrustedCredentialsSettings;->access$3200(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 404
    return-void
.end method
