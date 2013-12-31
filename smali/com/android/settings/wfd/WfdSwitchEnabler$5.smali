.class Lcom/android/settings/wfd/WfdSwitchEnabler$5;
.super Ljava/lang/Object;
.source "WfdSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WfdSwitchEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
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
    .line 415
    iput-object p1, p0, Lcom/android/settings/wfd/WfdSwitchEnabler$5;->this$0:Lcom/android/settings/wfd/WfdSwitchEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/settings/wfd/WfdSwitchEnabler$5;->this$0:Lcom/android/settings/wfd/WfdSwitchEnabler;

    #getter for: Lcom/android/settings/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/wfd/WfdSwitchEnabler;->access$400(Lcom/android/settings/wfd/WfdSwitchEnabler;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 419
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "createWfdTerminateDialog cancel is clicked.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-void
.end method
