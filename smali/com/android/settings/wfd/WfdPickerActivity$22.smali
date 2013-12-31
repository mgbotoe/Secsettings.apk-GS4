.class Lcom/android/settings/wfd/WfdPickerActivity$22;
.super Ljava/lang/Object;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdPickerActivity;->createAutoConnectDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2327
    iput-object p1, p0, Lcom/android/settings/wfd/WfdPickerActivity$22;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "arg0"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2330
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2331
    iget-object v0, p0, Lcom/android/settings/wfd/WfdPickerActivity$22;->this$0:Lcom/android/settings/wfd/WfdPickerActivity;

    #calls: Lcom/android/settings/wfd/WfdPickerActivity;->cancelConnecting()V
    invoke-static {v0}, Lcom/android/settings/wfd/WfdPickerActivity;->access$5100(Lcom/android/settings/wfd/WfdPickerActivity;)V

    .line 2332
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2333
    const-string v0, "WfdPickerActivity"

    const-string v1, "mAutoConnectDialog Back Button is pressed... same process with cancel..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    const/4 v0, 0x1

    .line 2337
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
