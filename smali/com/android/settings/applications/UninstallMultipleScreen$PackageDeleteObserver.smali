.class Lcom/android/settings/applications/UninstallMultipleScreen$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "UninstallMultipleScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/UninstallMultipleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/UninstallMultipleScreen;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/UninstallMultipleScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$PackageDeleteObserver;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 3
    .parameter "packageName"
    .parameter "returnCode"

    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$PackageDeleteObserver;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    iget-object v1, v1, Lcom/android/settings/applications/UninstallMultipleScreen;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 158
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 159
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 161
    iget-object v1, p0, Lcom/android/settings/applications/UninstallMultipleScreen$PackageDeleteObserver;->this$0:Lcom/android/settings/applications/UninstallMultipleScreen;

    iget-object v1, v1, Lcom/android/settings/applications/UninstallMultipleScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 162
    return-void
.end method
