.class Lcom/android/settings/bluetooth/DevicePickerActivity$3;
.super Ljava/lang/Object;
.source "DevicePickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DevicePickerActivity;->showHelpDialog(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DevicePickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$3;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$3;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    #getter for: Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    invoke-static {v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->access$100(Lcom/android/settings/bluetooth/DevicePickerActivity;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->dismiss()V

    .line 242
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$3;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/bluetooth/DevicePickerActivity;->mHelpDialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->access$102(Lcom/android/settings/bluetooth/DevicePickerActivity;Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    .line 243
    return-void
.end method
