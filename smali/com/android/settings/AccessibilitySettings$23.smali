.class Lcom/android/settings/AccessibilitySettings$23;
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
    .line 2616
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$23;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2618
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings$23;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v4}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "high_contrast"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2619
    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2620
    const-string v4, "accessibility"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    .line 2622
    .local v2, iAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v2, v4}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeNegative(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2630
    .end local v2           #iAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;
    :goto_0
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings$23;->this$0:Lcom/android/settings/AccessibilitySettings;

    #getter for: Lcom/android/settings/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/settings/AccessibilitySettings;->access$1200(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2633
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings$23;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v4}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "color_blind_test"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_3

    .line 2634
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2635
    .local v3, intent:Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.samsung.android.app.colorblind"

    const-string v6, "com.samsung.android.app.colorblind.ColorChipStart"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2636
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings$23;->this$0:Lcom/android/settings/AccessibilitySettings;

    #getter for: Lcom/android/settings/AccessibilitySettings;->checkSetupWizard:Z
    invoke-static {v4}, Lcom/android/settings/AccessibilitySettings;->access$1400(Lcom/android/settings/AccessibilitySettings;)Z

    move-result v4

    if-ne v4, v7, :cond_0

    .line 2637
    const-string v4, "firstRun"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2639
    :cond_0
    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2640
    const-string v4, "fromAccessibility"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2641
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings$23;->this$0:Lcom/android/settings/AccessibilitySettings;

    const/16 v5, 0x6b5

    invoke-virtual {v4, v3, v5}, Lcom/android/settings/AccessibilitySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2651
    .end local v3           #intent:Landroid/content/Intent;
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2652
    return-void

    .line 2623
    .restart local v2       #iAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;
    :catch_0
    move-exception v0

    .line 2625
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2628
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #iAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;
    :cond_1
    invoke-static {v6}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeNegative(Z)Z

    goto :goto_0

    .line 2643
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings$23;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v4, v3}, Lcom/android/settings/AccessibilitySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 2646
    .end local v3           #intent:Landroid/content/Intent;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.settings.ACTION_COLORBLIND_SWITCH_ON"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2647
    .local v1, i:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings$23;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v4}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2648
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings$23;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-virtual {v4}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "color_blind"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2649
    iget-object v4, p0, Lcom/android/settings/AccessibilitySettings$23;->this$0:Lcom/android/settings/AccessibilitySettings;

    #getter for: Lcom/android/settings/AccessibilitySettings;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v4}, Lcom/android/settings/AccessibilitySettings;->access$1300(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_1
.end method
