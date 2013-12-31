.class Lcom/android/settings/PenAirViewHelp$7;
.super Ljava/lang/Object;
.source "PenAirViewHelp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PenAirViewHelp;->showInforPreviewDisableDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenAirViewHelp;


# direct methods
.method constructor <init>(Lcom/android/settings/PenAirViewHelp;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/settings/PenAirViewHelp$7;->this$0:Lcom/android/settings/PenAirViewHelp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 275
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp$7;->this$0:Lcom/android/settings/PenAirViewHelp;

    invoke-virtual {v0}, Lcom/android/settings/PenAirViewHelp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering_information_preview"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 277
    iget-object v0, p0, Lcom/android/settings/PenAirViewHelp$7;->this$0:Lcom/android/settings/PenAirViewHelp;

    #getter for: Lcom/android/settings/PenAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/PenAirViewHelp;->access$200(Lcom/android/settings/PenAirViewHelp;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 278
    return-void
.end method
