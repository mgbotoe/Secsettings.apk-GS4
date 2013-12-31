.class Lcom/android/settings/smartscreen/SmartScreenSettings$10;
.super Ljava/lang/Object;
.source "SmartScreenSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/smartscreen/SmartScreenSettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/smartscreen/SmartScreenSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 606
    iput-object p1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 608
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-virtual {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 610
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v0, v0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_stay_noti"

    if-ne v0, v1, :cond_1

    .line 611
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    #calls: Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$1100(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intelligent_sleep_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 612
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v1, v1, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/smartscreen/SmartScreenSettings;->createGuideDialog(Ljava/lang/String;)V

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v0, v0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_rotation_noti"

    if-ne v0, v1, :cond_2

    .line 614
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    #calls: Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$1200(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intelligent_rotation_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 615
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v1, v1, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/smartscreen/SmartScreenSettings;->createGuideDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 616
    :cond_2
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v0, v0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_pause_noti"

    if-ne v0, v1, :cond_3

    .line 617
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    #calls: Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$1300(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_pause"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 618
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    const-string v1, "com.sec.SMART_PAUSE_CHANGED"

    #calls: Lcom/android/settings/smartscreen/SmartScreenSettings;->broadcastStatusChanged(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$500(Lcom/android/settings/smartscreen/SmartScreenSettings;Ljava/lang/String;Z)V

    .line 619
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v1, v1, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/smartscreen/SmartScreenSettings;->createGuideDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 620
    :cond_3
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v0, v0, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_scroll_noti"

    if-ne v0, v1, :cond_0

    .line 621
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    #calls: Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$1400(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 622
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    const-string v1, "com.sec.SMART_SCROLL_CHANGED"

    #calls: Lcom/android/settings/smartscreen/SmartScreenSettings;->broadcastStatusChanged(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$500(Lcom/android/settings/smartscreen/SmartScreenSettings;Ljava/lang/String;Z)V

    .line 623
    iget-object v0, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$10;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iget-object v1, v1, Lcom/android/settings/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/smartscreen/SmartScreenSettings;->createGuideDialog(Ljava/lang/String;)V

    goto :goto_0
.end method
