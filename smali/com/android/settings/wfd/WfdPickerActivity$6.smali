.class Lcom/android/settings/wfd/WfdPickerActivity$6;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdPickerActivity;->setWfdEnabled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdPickerActivity;

.field final synthetic val$check:Landroid/widget/CheckBox;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdPickerActivity;Landroid/widget/CheckBox;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 680
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity$6;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    iput-object p2, p0, Lcom/android/settings/wfd/WfdPickerActivity$6;->val$check:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/settings/wfd/WfdPickerActivity$6;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x0

    .line 683
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$6;->val$check:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$6;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screenMirroringPowerSaving_showNeverAgain"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$6;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->setPowerSavingMode(I)V
    invoke-static {v0, v3}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3300(Lcom/android/settings/wfd/WfdPickerActivity;I)V

    .line 687
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$6;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wfd/WfdPickerActivity$6;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0904f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 692
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$6;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->turnOnScreenMirroring()V
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$3400(Lcom/android/settings/wfd/WfdPickerActivity;)V

    .line 693
    return-void
.end method
