.class Lcom/android/settings/homesync/FileOperationPaste$2;
.super Ljava/lang/Object;
.source "FileOperationPaste.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homesync/FileOperationPaste;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homesync/FileOperationPaste;


# direct methods
.method constructor <init>(Lcom/android/settings/homesync/FileOperationPaste;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings/homesync/FileOperationPaste$2;->this$0:Lcom/android/settings/homesync/FileOperationPaste;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 158
    const-string v1, "HomeSyncFileOperation"

    const-string v2, "Fileoperation is going to be canceled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/android/settings/homesync/FileOperationPaste$2;->this$0:Lcom/android/settings/homesync/FileOperationPaste;

    invoke-virtual {v1}, Lcom/android/settings/homesync/FileOperationPaste;->createCancelDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 160
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 161
    return-void
.end method
