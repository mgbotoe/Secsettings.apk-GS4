.class Lcom/android/settings/AirViewSettings$8;
.super Ljava/lang/Object;
.source "AirViewSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirViewSettings;->showInformationPreviewEnablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirViewSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AirViewSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/settings/AirViewSettings$8;->this$0:Lcom/android/settings/AirViewSettings;

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

    .line 497
    iget-object v0, p0, Lcom/android/settings/AirViewSettings$8;->this$0:Lcom/android/settings/AirViewSettings;

    invoke-virtual {v0}, Lcom/android/settings/AirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering_information_preview"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 499
    iget-object v0, p0, Lcom/android/settings/AirViewSettings$8;->this$0:Lcom/android/settings/AirViewSettings;

    invoke-virtual {v0}, Lcom/android/settings/AirViewSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_button_onoff"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 500
    iget-object v0, p0, Lcom/android/settings/AirViewSettings$8;->this$0:Lcom/android/settings/AirViewSettings;

    #getter for: Lcom/android/settings/AirViewSettings;->mAirButtonSwitchPref:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/AirViewSettings;->access$800(Lcom/android/settings/AirViewSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 501
    return-void
.end method
