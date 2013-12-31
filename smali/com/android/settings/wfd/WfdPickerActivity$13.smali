.class Lcom/android/settings/wfd/WfdPickerActivity$13;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdPickerActivity;->createDongleRenameDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1992
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity$13;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$13;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3900(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1995
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$13;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/wfd/WfdPickerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3902(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1998
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$13;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$4000(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1999
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$13;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$4000(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$13;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #getter for: Lcom/android/settings/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/wfd/WfdPickerActivity;->access$4000(Lcom/android/settings/wfd/WfdPickerActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 2001
    :cond_1
    return-void
.end method
