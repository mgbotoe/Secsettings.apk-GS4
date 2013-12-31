.class Lcom/android/settings/motion2013/SMotionSettings$11;
.super Ljava/lang/Object;
.source "SMotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/SMotionSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/SMotionSettings;

.field final synthetic val$motion_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/SMotionSettings;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    iput-object p2, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->val$motion_type:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 433
    const-string v0, "air_motion"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    #calls: Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion2013/SMotionSettings;->access$1300(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 435
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    #calls: Lcom/android/settings/motion2013/SMotionSettings;->broadcastAirMotionChanged(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/motion2013/SMotionSettings;->access$900(Lcom/android/settings/motion2013/SMotionSettings;Z)V

    .line 436
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 437
    const-class v1, Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f090db7

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    const-string v0, "motion"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 439
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    #calls: Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion2013/SMotionSettings;->access$1400(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 440
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 441
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 442
    const-class v1, Lcom/android/settings/motion2013/MotionSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f090d24

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 443
    :cond_2
    const-string v0, "surface"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 444
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    #calls: Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion2013/SMotionSettings;->access$1500(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_motion_engine"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 445
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 446
    const-class v1, Lcom/android/settings/motion2013/HandMotionSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f090db3

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 447
    :cond_3
    const-string v0, "side_motion"

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    #calls: Lcom/android/settings/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion2013/SMotionSettings;->access$1600(Lcom/android/settings/motion2013/SMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_side_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 449
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionSettings$11;->this$0:Lcom/android/settings/motion2013/SMotionSettings;

    invoke-virtual {v0}, Lcom/android/settings/motion2013/SMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 450
    const-class v1, Lcom/android/settings/motion2013/SideMotionSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f090d92

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0
.end method
