.class Lcom/android/settings/AirCommandEnabler$3;
.super Ljava/lang/Object;
.source "AirCommandEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirCommandEnabler;->showAirCommandEnabledPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirCommandEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/AirCommandEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/settings/AirCommandEnabler$3;->this$0:Lcom/android/settings/AirCommandEnabler;

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

    .line 135
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler$3;->this$0:Lcom/android/settings/AirCommandEnabler;

    #calls: Lcom/android/settings/AirCommandEnabler;->turnOnPenInfoPreview()V
    invoke-static {v0}, Lcom/android/settings/AirCommandEnabler;->access$100(Lcom/android/settings/AirCommandEnabler;)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler$3;->this$0:Lcom/android/settings/AirCommandEnabler;

    #getter for: Lcom/android/settings/AirCommandEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/AirCommandEnabler;->access$200(Lcom/android/settings/AirCommandEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_button_onoff"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler$3;->this$0:Lcom/android/settings/AirCommandEnabler;

    #getter for: Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/AirCommandEnabler;->access$000(Lcom/android/settings/AirCommandEnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 141
    return-void
.end method
