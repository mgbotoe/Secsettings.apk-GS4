.class Lcom/android/settings/motion2013/SMotionGuideHub$9;
.super Ljava/lang/Object;
.source "SMotionGuideHub.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/SMotionGuideHub;->showFolderDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/SMotionGuideHub;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V
    .locals 0
    .parameter

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$9;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub$9;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/motion2013/SMotionGuideHub;->mFolderDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$1302(Lcom/android/settings/motion2013/SMotionGuideHub;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1259
    return-void
.end method
