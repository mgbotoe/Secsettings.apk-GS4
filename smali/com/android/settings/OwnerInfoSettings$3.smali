.class Lcom/android/settings/OwnerInfoSettings$3;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OwnerInfoSettings;->showInputMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/OwnerInfoSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v1}, Lcom/android/settings/OwnerInfoSettings;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v1}, Lcom/android/settings/OwnerInfoSettings;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 179
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v1}, Lcom/android/settings/OwnerInfoSettings;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 183
    :goto_1
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    #getter for: Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/OwnerInfoSettings;->access$200(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 184
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    #getter for: Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/OwnerInfoSettings;->access$200(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 181
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v1}, Lcom/android/settings/OwnerInfoSettings;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_1
.end method
