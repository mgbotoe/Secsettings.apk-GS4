.class Lcom/android/settings/DirectPenInputSettings$7;
.super Ljava/lang/Object;
.source "DirectPenInputSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DirectPenInputSettings;->showEnableDialog(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DirectPenInputSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DirectPenInputSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/settings/DirectPenInputSettings$7;->this$0:Lcom/android/settings/DirectPenInputSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 347
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings$7;->this$0:Lcom/android/settings/DirectPenInputSettings;

    #getter for: Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/DirectPenInputSettings;->access$800(Lcom/android/settings/DirectPenInputSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings$7;->this$0:Lcom/android/settings/DirectPenInputSettings;

    #getter for: Lcom/android/settings/DirectPenInputSettings;->actionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/DirectPenInputSettings;->access$800(Lcom/android/settings/DirectPenInputSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 350
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 351
    iget-object v0, p0, Lcom/android/settings/DirectPenInputSettings$7;->this$0:Lcom/android/settings/DirectPenInputSettings;

    #setter for: Lcom/android/settings/DirectPenInputSettings;->isShowEnablePopup:Z
    invoke-static {v0, v1}, Lcom/android/settings/DirectPenInputSettings;->access$402(Lcom/android/settings/DirectPenInputSettings;Z)Z

    .line 352
    return-void
.end method
