.class Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$3;
.super Ljava/lang/Object;
.source "SmartScrollAdvancedSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$3;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v0, 0x0

    .line 417
    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$3;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    #getter for: Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->access$200(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smart_scroll"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 418
    .local v0, smartScrollState:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings$3;->this$0:Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;

    #getter for: Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;->access$300(Lcom/android/settings/smartscreen/SmartScrollAdvancedSettings;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 419
    return-void
.end method
