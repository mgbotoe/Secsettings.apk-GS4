.class Lcom/android/settings/AirViewSettings$9;
.super Ljava/lang/Object;
.source "AirViewSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirViewSettings;->showAirCommoandDisablePopup()V
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
    .line 526
    iput-object p1, p0, Lcom/android/settings/AirViewSettings$9;->this$0:Lcom/android/settings/AirViewSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/settings/AirViewSettings$9;->this$0:Lcom/android/settings/AirViewSettings;

    #getter for: Lcom/android/settings/AirViewSettings;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/AirViewSettings;->access$000(Lcom/android/settings/AirViewSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_view_mode"

    sget v2, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 529
    iget-object v0, p0, Lcom/android/settings/AirViewSettings$9;->this$0:Lcom/android/settings/AirViewSettings;

    #getter for: Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/AirViewSettings;->access$300(Lcom/android/settings/AirViewSettings;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 531
    const-string v0, "AirViewSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI_AIR_VIEW_MODE was changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v0, p0, Lcom/android/settings/AirViewSettings$9;->this$0:Lcom/android/settings/AirViewSettings;

    #getter for: Lcom/android/settings/AirViewSettings;->mAirViewModeListPref:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/android/settings/AirViewSettings;->access$900(Lcom/android/settings/AirViewSettings;)Landroid/preference/ListPreference;

    move-result-object v0

    sget v1, Lcom/android/settings/Utils;->FINGER_AIR_VIEW_MODE:I

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 533
    iget-object v0, p0, Lcom/android/settings/AirViewSettings$9;->this$0:Lcom/android/settings/AirViewSettings;

    #calls: Lcom/android/settings/AirViewSettings;->updateAirViewModeSummary()V
    invoke-static {v0}, Lcom/android/settings/AirViewSettings;->access$1000(Lcom/android/settings/AirViewSettings;)V

    .line 534
    iget-object v0, p0, Lcom/android/settings/AirViewSettings$9;->this$0:Lcom/android/settings/AirViewSettings;

    #calls: Lcom/android/settings/AirViewSettings;->updateMenuEnableState()V
    invoke-static {v0}, Lcom/android/settings/AirViewSettings;->access$500(Lcom/android/settings/AirViewSettings;)V

    .line 535
    return-void
.end method
