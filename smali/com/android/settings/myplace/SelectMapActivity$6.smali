.class Lcom/android/settings/myplace/SelectMapActivity$6;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/myplace/SelectMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myplace/SelectMapActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/SelectMapActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/settings/myplace/SelectMapActivity$6;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$6;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    iget-object v1, p0, Lcom/android/settings/myplace/SelectMapActivity$6;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    #getter for: Lcom/android/settings/myplace/SelectMapActivity;->mLocation:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/myplace/SelectMapActivity;->access$400(Lcom/android/settings/myplace/SelectMapActivity;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings/myplace/SelectMapActivity;->getFromLocationName(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/settings/myplace/SelectMapActivity;->access$700(Lcom/android/settings/myplace/SelectMapActivity;Ljava/lang/String;)Z

    .line 362
    return-void
.end method
