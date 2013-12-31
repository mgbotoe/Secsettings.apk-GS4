.class Lcom/android/settings/motion2013/AirMotionEnabler$1;
.super Ljava/lang/Object;
.source "AirMotionEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/AirMotionEnabler;->showAllOptionDisabledDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/AirMotionEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/AirMotionEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings/motion2013/AirMotionEnabler$1;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler$1;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    #getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$000(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_engine"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler$1;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    #calls: Lcom/android/settings/motion2013/AirMotionEnabler;->broadcastMotionChanged(Z)V
    invoke-static {v0, v3}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$100(Lcom/android/settings/motion2013/AirMotionEnabler;Z)V

    .line 161
    iget-object v0, p0, Lcom/android/settings/motion2013/AirMotionEnabler$1;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    #getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$000(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 163
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v1

    if-nez v1, :cond_2

    .line 165
    :cond_0
    const-class v1, Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090db7

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 173
    :cond_1
    :goto_0
    return-void

    .line 169
    :cond_2
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler$1;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    #getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$200(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/android/settings/motion2013/AirMotionEnabler$1;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    #getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$200(Lcom/android/settings/motion2013/AirMotionEnabler;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionEnabler$1;->this$0:Lcom/android/settings/motion2013/AirMotionEnabler;

    #getter for: Lcom/android/settings/motion2013/AirMotionEnabler;->mPosition:I
    invoke-static {v2}, Lcom/android/settings/motion2013/AirMotionEnabler;->access$300(Lcom/android/settings/motion2013/AirMotionEnabler;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_0
.end method
