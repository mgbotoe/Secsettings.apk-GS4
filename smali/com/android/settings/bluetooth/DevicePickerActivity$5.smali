.class Lcom/android/settings/bluetooth/DevicePickerActivity$5;
.super Ljava/lang/Object;
.source "DevicePickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/DevicePickerActivity;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DevicePickerActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$5;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    iput-object p2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$5;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$5;->val$alertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->access$202(Landroid/widget/Button;)Landroid/widget/Button;

    .line 296
    invoke-static {}, Lcom/android/settings/bluetooth/DevicePickerActivity;->access$200()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/DevicePickerActivity$5$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/DevicePickerActivity$5$1;-><init>(Lcom/android/settings/bluetooth/DevicePickerActivity$5;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    return-void
.end method
