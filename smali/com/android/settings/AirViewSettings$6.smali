.class Lcom/android/settings/AirViewSettings$6;
.super Ljava/lang/Object;
.source "AirViewSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirViewSettings;->makeTalkBackDisablePopup()V
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
    .line 463
    iput-object p1, p0, Lcom/android/settings/AirViewSettings$6;->this$0:Lcom/android/settings/AirViewSettings;

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

    .line 465
    iget-object v0, p0, Lcom/android/settings/AirViewSettings$6;->this$0:Lcom/android/settings/AirViewSettings;

    #getter for: Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/AirViewSettings;->access$300(Lcom/android/settings/AirViewSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 467
    iget-object v0, p0, Lcom/android/settings/AirViewSettings$6;->this$0:Lcom/android/settings/AirViewSettings;

    #getter for: Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/AirViewSettings;->access$300(Lcom/android/settings/AirViewSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 468
    iget-object v0, p0, Lcom/android/settings/AirViewSettings$6;->this$0:Lcom/android/settings/AirViewSettings;

    #getter for: Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/AirViewSettings;->access$300(Lcom/android/settings/AirViewSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isCurrentAirviewAllItemDisabled(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/settings/AirViewSettings$6;->this$0:Lcom/android/settings/AirViewSettings;

    #calls: Lcom/android/settings/AirViewSettings;->showAllOptionDisabledDialog()V
    invoke-static {v0}, Lcom/android/settings/AirViewSettings;->access$700(Lcom/android/settings/AirViewSettings;)V

    .line 477
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirViewSettings$6;->this$0:Lcom/android/settings/AirViewSettings;

    #getter for: Lcom/android/settings/AirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/AirViewSettings;->access$100(Lcom/android/settings/AirViewSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 474
    iget-object v0, p0, Lcom/android/settings/AirViewSettings$6;->this$0:Lcom/android/settings/AirViewSettings;

    #getter for: Lcom/android/settings/AirViewSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/AirViewSettings;->access$300(Lcom/android/settings/AirViewSettings;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/Utils;->MASTER_AIR_VIEW_ON:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->SetAirViewMasterValue(Landroid/content/Context;I)V

    .line 475
    iget-object v0, p0, Lcom/android/settings/AirViewSettings$6;->this$0:Lcom/android/settings/AirViewSettings;

    #calls: Lcom/android/settings/AirViewSettings;->broadcastAirViewChanged(Z)V
    invoke-static {v0, v3}, Lcom/android/settings/AirViewSettings;->access$400(Lcom/android/settings/AirViewSettings;Z)V

    goto :goto_0
.end method
