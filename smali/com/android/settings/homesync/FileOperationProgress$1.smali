.class Lcom/android/settings/homesync/FileOperationProgress$1;
.super Ljava/lang/Object;
.source "FileOperationProgress.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/homesync/FileOperationProgress;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homesync/FileOperationProgress;


# direct methods
.method constructor <init>(Lcom/android/settings/homesync/FileOperationProgress;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/settings/homesync/FileOperationProgress$1;->this$0:Lcom/android/settings/homesync/FileOperationProgress;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 132
    invoke-static {}, Lcom/android/settings/homesync/FileOperationProgress;->access$000()Lcom/android/settings/homesync/FileOperationPaste;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-static {}, Lcom/android/settings/homesync/FileOperationProgress;->access$000()Lcom/android/settings/homesync/FileOperationPaste;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/homesync/FileOperationPaste;->cancel()V

    .line 134
    :cond_0
    return-void
.end method
