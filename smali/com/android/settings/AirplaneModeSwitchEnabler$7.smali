.class Lcom/android/settings/AirplaneModeSwitchEnabler$7;
.super Ljava/lang/Object;
.source "AirplaneModeSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirplaneModeSwitchEnabler;->onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/AirplaneModeSwitchEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$7;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$7;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    #getter for: Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$300(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$7;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    #getter for: Lcom/android/settings/AirplaneModeSwitchEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$300(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$7;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    #getter for: Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$100(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$7;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    #getter for: Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$400(Lcom/android/settings/AirplaneModeSwitchEnabler;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$7;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    #getter for: Lcom/android/settings/AirplaneModeSwitchEnabler;->mCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$400(Lcom/android/settings/AirplaneModeSwitchEnabler;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSwitchEnabler$7;->this$0:Lcom/android/settings/AirplaneModeSwitchEnabler;

    #getter for: Lcom/android/settings/AirplaneModeSwitchEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->access$100(Lcom/android/settings/AirplaneModeSwitchEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/AirplaneModeSwitchEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 364
    :cond_1
    return-void
.end method
