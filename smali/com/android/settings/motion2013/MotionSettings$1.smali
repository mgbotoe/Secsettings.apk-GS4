.class Lcom/android/settings/motion2013/MotionSettings$1;
.super Landroid/database/ContentObserver;
.source "MotionSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion2013/MotionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/MotionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/MotionSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings/motion2013/MotionSettings$1;->this$0:Lcom/android/settings/motion2013/MotionSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x0

    .line 102
    iget-object v1, p0, Lcom/android/settings/motion2013/MotionSettings$1;->this$0:Lcom/android/settings/motion2013/MotionSettings;

    #getter for: Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/motion2013/MotionSettings;->access$000(Lcom/android/settings/motion2013/MotionSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "master_motion"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 103
    .local v0, motionState:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/motion2013/MotionSettings$1;->this$0:Lcom/android/settings/motion2013/MotionSettings;

    #getter for: Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/motion2013/MotionSettings;->access$100(Lcom/android/settings/motion2013/MotionSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 104
    return-void
.end method
