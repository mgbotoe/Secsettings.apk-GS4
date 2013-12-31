.class Lcom/android/settings/nearby/NearbyEnabler$9;
.super Ljava/lang/Object;
.source "NearbyEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nearby/NearbyEnabler;->requestRestartServerPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/NearbyEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/nearby/NearbyEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 892
    iput-object p1, p0, Lcom/android/settings/nearby/NearbyEnabler$9;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 894
    const-string v1, "NearbyEnabler"

    const-string v2, "requestRestartServerPopup"

    const-string v3, "Restart AlertDialog Select : Positive - reannounceDMS"

    invoke-static {v1, v2, v3}, Lcom/android/settings/nearby/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler$9;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    #getter for: Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {v1}, Lcom/android/settings/nearby/NearbyEnabler;->access$700(Lcom/android/settings/nearby/NearbyEnabler;)Lcom/android/settings/nearby/IMediaServer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 898
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbyEnabler$9;->this$0:Lcom/android/settings/nearby/NearbyEnabler;

    #getter for: Lcom/android/settings/nearby/NearbyEnabler;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {v1}, Lcom/android/settings/nearby/NearbyEnabler;->access$700(Lcom/android/settings/nearby/NearbyEnabler;)Lcom/android/settings/nearby/IMediaServer;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/nearby/IMediaServer;->reannounceServer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    :cond_0
    :goto_0
    return-void

    .line 899
    :catch_0
    move-exception v0

    .line 900
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
