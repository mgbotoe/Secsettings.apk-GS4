.class Lcom/android/settings/SPenSettingsMenu$4;
.super Ljava/lang/Object;
.source "SPenSettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SPenSettingsMenu;->makeTalkBackMagnificationDisablePopup(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SPenSettingsMenu;

.field final synthetic val$fromKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/SPenSettingsMenu;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/settings/SPenSettingsMenu$4;->this$0:Lcom/android/settings/SPenSettingsMenu;

    iput-object p2, p0, Lcom/android/settings/SPenSettingsMenu$4;->val$fromKey:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 418
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu$4;->this$0:Lcom/android/settings/SPenSettingsMenu;

    invoke-virtual {v0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 420
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu$4;->this$0:Lcom/android/settings/SPenSettingsMenu;

    #getter for: Lcom/android/settings/SPenSettingsMenu;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/SPenSettingsMenu;->access$400(Lcom/android/settings/SPenSettingsMenu;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 421
    const-string v0, "pen_air_view"

    iget-object v1, p0, Lcom/android/settings/SPenSettingsMenu$4;->val$fromKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 422
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu$4;->this$0:Lcom/android/settings/SPenSettingsMenu;

    invoke-virtual {v0}, Lcom/android/settings/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/PenAirViewSettingsMenu;->isAllOptionDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu$4;->this$0:Lcom/android/settings/SPenSettingsMenu;

    #calls: Lcom/android/settings/SPenSettingsMenu;->showAllOptionDisabledDialog()V
    invoke-static {v0}, Lcom/android/settings/SPenSettingsMenu;->access$500(Lcom/android/settings/SPenSettingsMenu;)V

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu$4;->this$0:Lcom/android/settings/SPenSettingsMenu;

    #getter for: Lcom/android/settings/SPenSettingsMenu;->mPenAirViewSwitchPref:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/SPenSettingsMenu;->access$100(Lcom/android/settings/SPenSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 427
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu$4;->this$0:Lcom/android/settings/SPenSettingsMenu;

    #getter for: Lcom/android/settings/SPenSettingsMenu;->mSoundHapticFeedbackCheckPref:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/SPenSettingsMenu;->access$600(Lcom/android/settings/SPenSettingsMenu;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 428
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu$4;->this$0:Lcom/android/settings/SPenSettingsMenu;

    invoke-virtual {v0}, Lcom/android/settings/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 430
    const-string v0, "SPenSettingsMenu"

    const-string v1, "switch is on"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 432
    :cond_2
    const-string v0, "key_air_button"

    iget-object v1, p0, Lcom/android/settings/SPenSettingsMenu$4;->val$fromKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 433
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu$4;->this$0:Lcom/android/settings/SPenSettingsMenu;

    #getter for: Lcom/android/settings/SPenSettingsMenu;->mAirCommandSwitchPref:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/SPenSettingsMenu;->access$200(Lcom/android/settings/SPenSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 434
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu$4;->this$0:Lcom/android/settings/SPenSettingsMenu;

    invoke-virtual {v0}, Lcom/android/settings/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_button_onoff"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 436
    :cond_3
    const-string v0, "key_writing_buddy"

    iget-object v1, p0, Lcom/android/settings/SPenSettingsMenu$4;->val$fromKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu$4;->this$0:Lcom/android/settings/SPenSettingsMenu;

    #getter for: Lcom/android/settings/SPenSettingsMenu;->mDirectPenInputSwitchPref:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/SPenSettingsMenu;->access$300(Lcom/android/settings/SPenSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 438
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu$4;->this$0:Lcom/android/settings/SPenSettingsMenu;

    invoke-virtual {v0}, Lcom/android/settings/SPenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_writing_buddy"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
