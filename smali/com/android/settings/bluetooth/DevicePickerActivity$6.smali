.class Lcom/android/settings/bluetooth/DevicePickerActivity$6;
.super Ljava/lang/Object;
.source "DevicePickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 309
    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$6;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    iput-object p2, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$6;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$6;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 313
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$6;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->finish()V

    .line 314
    return-void
.end method
