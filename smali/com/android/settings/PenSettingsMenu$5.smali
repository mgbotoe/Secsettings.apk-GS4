.class Lcom/android/settings/PenSettingsMenu$5;
.super Ljava/lang/Object;
.source "PenSettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PenSettingsMenu;->makeTalkBackMagnificationDisablePopup(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenSettingsMenu;

.field final synthetic val$fromKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/PenSettingsMenu;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 595
    iput-object p1, p0, Lcom/android/settings/PenSettingsMenu$5;->this$0:Lcom/android/settings/PenSettingsMenu;

    iput-object p2, p0, Lcom/android/settings/PenSettingsMenu$5;->val$fromKey:Ljava/lang/String;

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

    .line 597
    const-string v0, "pen_air_view"

    iget-object v1, p0, Lcom/android/settings/PenSettingsMenu$5;->val$fromKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu$5;->this$0:Lcom/android/settings/PenSettingsMenu;

    #getter for: Lcom/android/settings/PenSettingsMenu;->mPenHovering:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/PenSettingsMenu;->access$000(Lcom/android/settings/PenSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 599
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu$5;->this$0:Lcom/android/settings/PenSettingsMenu;

    #getter for: Lcom/android/settings/PenSettingsMenu;->mPenHoveringSound:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/PenSettingsMenu;->access$100(Lcom/android/settings/PenSettingsMenu;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 600
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu$5;->this$0:Lcom/android/settings/PenSettingsMenu;

    invoke-virtual {v0}, Lcom/android/settings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 601
    const-string v0, "PenSettingsMenu"

    const-string v1, "switch is on"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu$5;->this$0:Lcom/android/settings/PenSettingsMenu;

    invoke-virtual {v0}, Lcom/android/settings/PenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 605
    iget-object v0, p0, Lcom/android/settings/PenSettingsMenu$5;->this$0:Lcom/android/settings/PenSettingsMenu;

    invoke-virtual {v0}, Lcom/android/settings/PenSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 606
    return-void
.end method
