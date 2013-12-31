.class Lcom/android/settings/MouseHoveringSettings$3;
.super Ljava/lang/Object;
.source "MouseHoveringSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MouseHoveringSettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MouseHoveringSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MouseHoveringSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/settings/MouseHoveringSettings$3;->this$0:Lcom/android/settings/MouseHoveringSettings;

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

    .line 319
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings$3;->this$0:Lcom/android/settings/MouseHoveringSettings;

    invoke-virtual {v0}, Lcom/android/settings/MouseHoveringSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 320
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings$3;->this$0:Lcom/android/settings/MouseHoveringSettings;

    #getter for: Lcom/android/settings/MouseHoveringSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/MouseHoveringSettings;->access$500(Lcom/android/settings/MouseHoveringSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 321
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings$3;->this$0:Lcom/android/settings/MouseHoveringSettings;

    invoke-virtual {v0}, Lcom/android/settings/MouseHoveringSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 322
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings$3;->this$0:Lcom/android/settings/MouseHoveringSettings;

    invoke-virtual {v0}, Lcom/android/settings/MouseHoveringSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mouse_hovering_highlight"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 323
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->enableHoverEvent(Z)Z

    .line 325
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings$3;->this$0:Lcom/android/settings/MouseHoveringSettings;

    #calls: Lcom/android/settings/MouseHoveringSettings;->broadcastMouseHoveringChanged(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/MouseHoveringSettings;->access$600(Lcom/android/settings/MouseHoveringSettings;Z)V

    .line 327
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings$3;->this$0:Lcom/android/settings/MouseHoveringSettings;

    #getter for: Lcom/android/settings/MouseHoveringSettings;->mInforamtionPreview:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/MouseHoveringSettings;->access$000(Lcom/android/settings/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 328
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings$3;->this$0:Lcom/android/settings/MouseHoveringSettings;

    #getter for: Lcom/android/settings/MouseHoveringSettings;->mIconLabels:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/MouseHoveringSettings;->access$100(Lcom/android/settings/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 329
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings$3;->this$0:Lcom/android/settings/MouseHoveringSettings;

    #getter for: Lcom/android/settings/MouseHoveringSettings;->mListScroll:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/MouseHoveringSettings;->access$200(Lcom/android/settings/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 332
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings$3;->this$0:Lcom/android/settings/MouseHoveringSettings;

    #getter for: Lcom/android/settings/MouseHoveringSettings;->mProgressBarPreview:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/MouseHoveringSettings;->access$300(Lcom/android/settings/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 333
    iget-object v0, p0, Lcom/android/settings/MouseHoveringSettings$3;->this$0:Lcom/android/settings/MouseHoveringSettings;

    #getter for: Lcom/android/settings/MouseHoveringSettings;->mMagneticUI:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/MouseHoveringSettings;->access$400(Lcom/android/settings/MouseHoveringSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 334
    return-void
.end method
