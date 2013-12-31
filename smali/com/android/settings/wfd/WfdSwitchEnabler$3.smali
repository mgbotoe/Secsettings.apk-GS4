.class Lcom/android/settings/wfd/WfdSwitchEnabler$3;
.super Ljava/lang/Object;
.source "WfdSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdSwitchEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WfdSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WfdSwitchEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler$3;->this$0:Lcom/android/settings/wfd/WfdSwitchEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler$3;->this$0:Lcom/android/settings/wfd/WfdSwitchEnabler;

    #getter for: Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdSwitchEnabler;->access$200(Lcom/android/settings/wfd/WfdSwitchEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 330
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "createWfdTerminateDialog cancel is clicked.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void
.end method
