.class Lcom/android/settings/SambaSettings$3;
.super Ljava/lang/Object;
.source "SambaSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SambaSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SambaSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SambaSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/settings/SambaSettings$3;->this$0:Lcom/android/settings/SambaSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/settings/SambaSettings$3;->this$0:Lcom/android/settings/SambaSettings;

    iget-object v0, v0, Lcom/android/settings/SambaSettings;->util:Lcom/android/settings/samba/SambaConfig;

    iget-object v1, p0, Lcom/android/settings/SambaSettings$3;->this$0:Lcom/android/settings/SambaSettings;

    #getter for: Lcom/android/settings/SambaSettings;->mEditPasswd:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/SambaSettings;->access$100(Lcom/android/settings/SambaSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/samba/SambaConfig;->SambaPasswdChange(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/android/settings/SambaSettings$3;->this$0:Lcom/android/settings/SambaSettings;

    iget-object v1, p0, Lcom/android/settings/SambaSettings$3;->this$0:Lcom/android/settings/SambaSettings;

    #getter for: Lcom/android/settings/SambaSettings;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/SambaSettings;->access$400(Lcom/android/settings/SambaSettings;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/settings/SambaSettings;->isChangePasswd(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/settings/SambaSettings;->access$500(Lcom/android/settings/SambaSettings;Landroid/content/Context;)V

    .line 378
    iget-object v0, p0, Lcom/android/settings/SambaSettings$3;->this$0:Lcom/android/settings/SambaSettings;

    #getter for: Lcom/android/settings/SambaSettings;->mConfigureDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/android/settings/SambaSettings;->access$300(Lcom/android/settings/SambaSettings;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 379
    return-void
.end method
