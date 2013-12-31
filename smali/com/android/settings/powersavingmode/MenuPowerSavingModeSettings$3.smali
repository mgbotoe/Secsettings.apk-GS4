.class Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$3;
.super Ljava/lang/Object;
.source "MenuPowerSavingModeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->showHelpStep2Dialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$3;->this$0:Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$3;->this$0:Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    #getter for: Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;
    invoke-static {v0}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->access$400(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/helpdialog/TwHelpDialog;->dismiss()V

    .line 467
    iget-object v0, p0, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings$3;->this$0:Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;
    invoke-static {v0, v1}, Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;->access$402(Lcom/android/settings/powersavingmode/MenuPowerSavingModeSettings;Lcom/android/settings/helpdialog/TwHelpDialog;)Lcom/android/settings/helpdialog/TwHelpDialog;

    .line 468
    return-void
.end method
