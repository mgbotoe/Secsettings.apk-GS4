.class Lcom/sec/android/samsungapps/util/PreloadUpdate$2$1;
.super Lcom/sec/android/app/samsungapps/preloadUpdate/aidl/IPreloadUpdateResult$Stub;
.source "PreloadUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/samsungapps/util/PreloadUpdate$2;->onServiceBinded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/samsungapps/util/PreloadUpdate$2;


# direct methods
.method constructor <init>(Lcom/sec/android/samsungapps/util/PreloadUpdate$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/samsungapps/util/PreloadUpdate$2$1;->this$1:Lcom/sec/android/samsungapps/util/PreloadUpdate$2;

    .line 49
    invoke-direct {p0}, Lcom/sec/android/app/samsungapps/preloadUpdate/aidl/IPreloadUpdateResult$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreloadUpdateResult(I)V
    .locals 1
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/samsungapps/util/PreloadUpdate$2$1;->this$1:Lcom/sec/android/samsungapps/util/PreloadUpdate$2;

    #getter for: Lcom/sec/android/samsungapps/util/PreloadUpdate$2;->this$0:Lcom/sec/android/samsungapps/util/PreloadUpdate;
    invoke-static {v0}, Lcom/sec/android/samsungapps/util/PreloadUpdate$2;->access$0(Lcom/sec/android/samsungapps/util/PreloadUpdate$2;)Lcom/sec/android/samsungapps/util/PreloadUpdate;

    move-result-object v0

    #calls: Lcom/sec/android/samsungapps/util/PreloadUpdate;->onNotifyResult(I)V
    invoke-static {v0, p1}, Lcom/sec/android/samsungapps/util/PreloadUpdate;->access$2(Lcom/sec/android/samsungapps/util/PreloadUpdate;I)V

    .line 54
    return-void
.end method
