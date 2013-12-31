.class Lcom/android/settings/motion2013/PalmMotionEnabler$4;
.super Ljava/lang/Object;
.source "PalmMotionEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion2013/PalmMotionEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/PalmMotionEnabler;


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    const/4 v0, 0x0

    .line 184
    iget-object v1, p0, Lcom/android/settings/motion2013/PalmMotionEnabler$4;->this$0:Lcom/android/settings/motion2013/PalmMotionEnabler;

    #getter for: Lcom/android/settings/motion2013/PalmMotionEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/motion2013/PalmMotionEnabler;->access$100(Lcom/android/settings/motion2013/PalmMotionEnabler;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2013/PalmMotionEnabler$4;->this$0:Lcom/android/settings/motion2013/PalmMotionEnabler;

    #getter for: Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/motion2013/PalmMotionEnabler;->access$000(Lcom/android/settings/motion2013/PalmMotionEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "surface_motion_engine"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 186
    return-void
.end method
