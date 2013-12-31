.class Lcom/android/settings/PenAirViewEnabler$6;
.super Ljava/lang/Object;
.source "PenAirViewEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PenAirViewEnabler;->showAirViewDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenAirViewEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/PenAirViewEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/settings/PenAirViewEnabler$6;->this$0:Lcom/android/settings/PenAirViewEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings/PenAirViewEnabler$6;->this$0:Lcom/android/settings/PenAirViewEnabler;

    #getter for: Lcom/android/settings/PenAirViewEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/PenAirViewEnabler;->access$000(Lcom/android/settings/PenAirViewEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 176
    const-string v0, "PenAirViewEnabler"

    const-string v1, "Air view switch is off"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
.end method
