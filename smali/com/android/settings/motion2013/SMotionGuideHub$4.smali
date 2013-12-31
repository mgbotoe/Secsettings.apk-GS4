.class Lcom/android/settings/motion2013/SMotionGuideHub$4;
.super Ljava/lang/Object;
.source "SMotionGuideHub.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/SMotionGuideHub;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 467
    iput-object p1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$4;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 471
    if-nez p2, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub$4;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    #getter for: Lcom/android/settings/motion2013/SMotionGuideHub;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$400(Lcom/android/settings/motion2013/SMotionGuideHub;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 473
    :cond_0
    return-void
.end method
