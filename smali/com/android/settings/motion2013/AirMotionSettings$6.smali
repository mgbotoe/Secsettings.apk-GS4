.class Lcom/android/settings/motion2013/AirMotionSettings$6;
.super Ljava/lang/Object;
.source "AirMotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/AirMotionSettings;->showTalkBackDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/AirMotionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/AirMotionSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/settings/motion2013/AirMotionSettings$6;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 440
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings$6;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-virtual {v2}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 441
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings$6;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    #calls: Lcom/android/settings/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/motion2013/AirMotionSettings;->access$500(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_engine"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 442
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings$6;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    #calls: Lcom/android/settings/motion2013/AirMotionSettings;->broadcastAirMotionChanged(Z)V
    invoke-static {v2, v4}, Lcom/android/settings/motion2013/AirMotionSettings;->access$600(Lcom/android/settings/motion2013/AirMotionSettings;Z)V

    .line 443
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings$6;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    #getter for: Lcom/android/settings/motion2013/AirMotionSettings;->mQuickGlance:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/motion2013/AirMotionSettings;->access$700(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 444
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings$6;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    #getter for: Lcom/android/settings/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/motion2013/AirMotionSettings;->access$100(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 445
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings$6;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    #getter for: Lcom/android/settings/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/motion2013/AirMotionSettings;->access$200(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 446
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings$6;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    #getter for: Lcom/android/settings/motion2013/AirMotionSettings;->mAirMove:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/motion2013/AirMotionSettings;->access$800(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 447
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings$6;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    #getter for: Lcom/android/settings/motion2013/AirMotionSettings;->mAirPin:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/motion2013/AirMotionSettings;->access$900(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 448
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings$6;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    #getter for: Lcom/android/settings/motion2013/AirMotionSettings;->mAirCallAccept:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/motion2013/AirMotionSettings;->access$1000(Lcom/android/settings/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 450
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings$6;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    invoke-virtual {v2}, Lcom/android/settings/motion2013/AirMotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 451
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "pref_air_motion_sensor_noti"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 452
    .local v0, do_not_show_again:Z
    if-nez v0, :cond_0

    .line 453
    iget-object v2, p0, Lcom/android/settings/motion2013/AirMotionSettings$6;->this$0:Lcom/android/settings/motion2013/AirMotionSettings;

    #calls: Lcom/android/settings/motion2013/AirMotionSettings;->showGuideDialog(Z)V
    invoke-static {v2, v4}, Lcom/android/settings/motion2013/AirMotionSettings;->access$1100(Lcom/android/settings/motion2013/AirMotionSettings;Z)V

    .line 456
    :cond_0
    return-void
.end method
