.class Lcom/android/settings/bluetooth/BluetoothScanDialog$3;
.super Ljava/lang/Object;
.source "BluetoothScanDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothScanDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothScanDialog;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothScanDialog;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog$3;->this$0:Lcom/android/settings/bluetooth/BluetoothScanDialog;

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog$3;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog$3;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 82
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothScanDialog$3;->this$0:Lcom/android/settings/bluetooth/BluetoothScanDialog;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothScanDialog;->finish()V

    .line 83
    return-void
.end method
