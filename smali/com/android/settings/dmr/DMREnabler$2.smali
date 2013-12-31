.class Lcom/android/settings/dmr/DMREnabler$2;
.super Ljava/lang/Object;
.source "DMREnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dmr/DMREnabler;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dmr/DMREnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/dmr/DMREnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/settings/dmr/DMREnabler$2;->this$0:Lcom/android/settings/dmr/DMREnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    .line 404
    const-string v0, "DMREnabler"

    const-string v1, "Wifi AlertDialog Select : cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    sput-boolean v2, Lcom/android/settings/dmr/DMREnabler;->mIsON:Z

    .line 406
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler$2;->this$0:Lcom/android/settings/dmr/DMREnabler;

    #getter for: Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/dmr/DMREnabler;->access$100(Lcom/android/settings/dmr/DMREnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 407
    iget-object v0, p0, Lcom/android/settings/dmr/DMREnabler$2;->this$0:Lcom/android/settings/dmr/DMREnabler;

    #getter for: Lcom/android/settings/dmr/DMREnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/dmr/DMREnabler;->access$100(Lcom/android/settings/dmr/DMREnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 408
    return-void
.end method
