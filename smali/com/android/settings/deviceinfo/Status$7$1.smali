.class Lcom/android/settings/deviceinfo/Status$7$1;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/Status$7;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/deviceinfo/Status$7;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Status$7;)V
    .locals 0
    .parameter

    .prologue
    .line 1279
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status$7$1;->this$1:Lcom/android/settings/deviceinfo/Status$7;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$7$1;->this$1:Lcom/android/settings/deviceinfo/Status$7;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status$7;->this$0:Lcom/android/settings/deviceinfo/Status;

    #calls: Lcom/android/settings/deviceinfo/Status;->updateRegistrationStatus()V
    invoke-static {v0}, Lcom/android/settings/deviceinfo/Status;->access$1500(Lcom/android/settings/deviceinfo/Status;)V

    .line 1283
    return-void
.end method
