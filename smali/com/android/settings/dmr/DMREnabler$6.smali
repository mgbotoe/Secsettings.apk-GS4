.class Lcom/android/settings/dmr/DMREnabler$6;
.super Ljava/lang/Object;
.source "DMREnabler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dmr/DMREnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dmr/DMREnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/dmr/DMREnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/settings/dmr/DMREnabler$6;->this$0:Lcom/android/settings/dmr/DMREnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler$6;->this$0:Lcom/android/settings/dmr/DMREnabler;

    invoke-static {p2}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    move-result-object v1

    #setter for: Lcom/android/settings/dmr/DMREnabler;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;
    invoke-static {v0, v1}, Lcom/android/settings/dmr/DMREnabler;->access$502(Lcom/android/settings/dmr/DMREnabler;Lcom/sec/android/allshare/dmrservice/IMediaRenderer;)Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    .line 601
    const-string v0, "DMREnabler"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler$6;->this$0:Lcom/android/settings/dmr/DMREnabler;

    #getter for: Lcom/android/settings/dmr/DMREnabler;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;
    invoke-static {v0}, Lcom/android/settings/dmr/DMREnabler;->access$500(Lcom/android/settings/dmr/DMREnabler;)Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 604
    const-string v0, "DMREnabler"

    const-string v1, "mIMediaServer == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :goto_0
    return-void

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler$6;->this$0:Lcom/android/settings/dmr/DMREnabler;

    #calls: Lcom/android/settings/dmr/DMREnabler;->updateSwitchState()V
    invoke-static {v0}, Lcom/android/settings/dmr/DMREnabler;->access$900(Lcom/android/settings/dmr/DMREnabler;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 613
    const-string v0, "DMREnabler"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler$6;->this$0:Lcom/android/settings/dmr/DMREnabler;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/dmr/DMREnabler;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;
    invoke-static {v0, v1}, Lcom/android/settings/dmr/DMREnabler;->access$502(Lcom/android/settings/dmr/DMREnabler;Lcom/sec/android/allshare/dmrservice/IMediaRenderer;)Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    .line 615
    return-void
.end method
