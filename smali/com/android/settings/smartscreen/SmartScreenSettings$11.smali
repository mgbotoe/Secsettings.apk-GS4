.class Lcom/android/settings/smartscreen/SmartScreenSettings$11;
.super Ljava/lang/Object;
.source "SmartScreenSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/smartscreen/SmartScreenSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

.field final synthetic val$motion_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/smartscreen/SmartScreenSettings;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 656
    iput-object p1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$11;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    iput-object p2, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$11;->val$motion_type:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 658
    const-string v1, "smartscreen_scroll"

    iget-object v2, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$11;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 659
    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$11;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    #calls: Lcom/android/settings/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$1500(Lcom/android/settings/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_scroll"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 660
    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$11;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    const-string v2, "com.sec.SMART_SCROLL_CHANGED"

    #calls: Lcom/android/settings/smartscreen/SmartScreenSettings;->broadcastStatusChanged(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/smartscreen/SmartScreenSettings;->access$500(Lcom/android/settings/smartscreen/SmartScreenSettings;Ljava/lang/String;Z)V

    .line 661
    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScreenSettings$11;->this$0:Lcom/android/settings/smartscreen/SmartScreenSettings;

    invoke-virtual {v1}, Lcom/android/settings/smartscreen/SmartScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 662
    .local v0, preferenceActivity:Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const v3, 0x7f090fc1

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 664
    .end local v0           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_0
    return-void
.end method
