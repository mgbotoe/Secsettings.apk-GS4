.class Lcom/android/settings/motion2013/PalmMotionEnabler$3;
.super Ljava/lang/Object;
.source "PalmMotionEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 171
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler$3;->this$0:Lcom/android/settings/motion2013/PalmMotionEnabler;

    #getter for: Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->access$000(Lcom/android/settings/motion2013/PalmMotionEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_palm_swipe"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 173
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler$3;->this$0:Lcom/android/settings/motion2013/PalmMotionEnabler;

    #getter for: Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->access$000(Lcom/android/settings/motion2013/PalmMotionEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_palm_touch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 175
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler$3;->this$0:Lcom/android/settings/motion2013/PalmMotionEnabler;

    #getter for: Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->access$000(Lcom/android/settings/motion2013/PalmMotionEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_tap_and_twist"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler$3;->this$0:Lcom/android/settings/motion2013/PalmMotionEnabler;

    #getter for: Lcom/android/settings/motion2013/PalmMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/motion2013/PalmMotionEnabler;->access$000(Lcom/android/settings/motion2013/PalmMotionEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    iget-object v0, p0, Lcom/android/settings/motion2013/PalmMotionEnabler$3;->this$0:Lcom/android/settings/motion2013/PalmMotionEnabler;

    #calls: Lcom/android/settings/motion2013/PalmMotionEnabler;->broadcastMotionChanged(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/motion2013/PalmMotionEnabler;->access$200(Lcom/android/settings/motion2013/PalmMotionEnabler;Z)V

    .line 180
    return-void
.end method
