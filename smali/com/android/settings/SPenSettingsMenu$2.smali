.class Lcom/android/settings/SPenSettingsMenu$2;
.super Landroid/os/Handler;
.source "SPenSettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SPenSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SPenSettingsMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/SPenSettingsMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/settings/SPenSettingsMenu$2;->this$0:Lcom/android/settings/SPenSettingsMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu$2;->this$0:Lcom/android/settings/SPenSettingsMenu;

    #getter for: Lcom/android/settings/SPenSettingsMenu;->mPenAirViewSwitchPref:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/SPenSettingsMenu;->access$100(Lcom/android/settings/SPenSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 399
    return-void
.end method
