.class Lcom/android/settings/bluetooth/DevicePickerActivity$4;
.super Ljava/lang/Object;
.source "DevicePickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DevicePickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$4;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/settings/bluetooth/DevicePickerActivity$4;->this$0:Lcom/android/settings/bluetooth/DevicePickerActivity;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/DevicePickerActivity;->finish()V

    .line 280
    return-void
.end method
