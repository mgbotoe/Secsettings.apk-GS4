.class Lcom/android/settings/SPenSettingsMenu$8;
.super Ljava/lang/Object;
.source "SPenSettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SPenSettingsMenu;->showAirCommandEnabledPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SPenSettingsMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/SPenSettingsMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/settings/SPenSettingsMenu$8;->this$0:Lcom/android/settings/SPenSettingsMenu;

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

    .line 632
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu$8;->this$0:Lcom/android/settings/SPenSettingsMenu;

    #getter for: Lcom/android/settings/SPenSettingsMenu;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/SPenSettingsMenu;->access$400(Lcom/android/settings/SPenSettingsMenu;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_button_onoff"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 633
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu$8;->this$0:Lcom/android/settings/SPenSettingsMenu;

    #getter for: Lcom/android/settings/SPenSettingsMenu;->mAirCommandSwitchPref:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/SPenSettingsMenu;->access$200(Lcom/android/settings/SPenSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 634
    return-void
.end method
