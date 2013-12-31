.class Lcom/android/settings/AccessibilitySettings$30;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessibilitySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 2751
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$30;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2753
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$30;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v2}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_use"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2754
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$30;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v2}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2755
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$30;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v2}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 2756
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$30;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v2}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.settings.action.talkback_off"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2758
    :cond_0
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$30;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v2}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assistant_menu"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2760
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2761
    .local v0, acIntent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.accesscontrol"

    const-string v4, "com.samsung.android.app.accesscontrol.AccessControlMainService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2763
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$30;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v2}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 2764
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2765
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.assistantmenu"

    const-string v4, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2766
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$30;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v2}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2768
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$30;->this$0:Lcom/android/settings/AccessibilitySettings;

    #getter for: Lcom/android/settings/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/AccessibilitySettings;->access$1500(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2769
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$30;->this$0:Lcom/android/settings/AccessibilitySettings;

    #getter for: Lcom/android/settings/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/AccessibilitySettings;->access$1600(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 2770
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$30;->this$0:Lcom/android/settings/AccessibilitySettings;

    #calls: Lcom/android/settings/AccessibilitySettings;->updateServicesPreferences()V
    invoke-static {v2}, Lcom/android/settings/AccessibilitySettings;->access$200(Lcom/android/settings/AccessibilitySettings;)V

    .line 2771
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings$30;->this$0:Lcom/android/settings/AccessibilitySettings;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/settings/AccessibilitySettings;->removeDialog(I)V

    .line 2772
    return-void
.end method
