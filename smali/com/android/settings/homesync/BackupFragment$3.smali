.class Lcom/android/settings/homesync/BackupFragment$3;
.super Ljava/lang/Object;
.source "BackupFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homesync/BackupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homesync/BackupFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/homesync/BackupFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/settings/homesync/BackupFragment$3;->this$0:Lcom/android/settings/homesync/BackupFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 299
    const-string v1, "BackupFragment"

    const-string v2, "Fileoperation is going to be canceled"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v1, p0, Lcom/android/settings/homesync/BackupFragment$3;->this$0:Lcom/android/settings/homesync/BackupFragment;

    invoke-virtual {v1}, Lcom/android/settings/homesync/BackupFragment;->createCancelDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 301
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 302
    return-void
.end method
