.class Lcom/android/settings/SPenSettingsMenu$3;
.super Ljava/lang/Object;
.source "SPenSettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SPenSettingsMenu;->makeTalkBackMagnificationDisablePopup(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SPenSettingsMenu;

.field final synthetic val$fromKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/SPenSettingsMenu;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/settings/SPenSettingsMenu$3;->this$0:Lcom/android/settings/SPenSettingsMenu;

    iput-object p2, p0, Lcom/android/settings/SPenSettingsMenu$3;->val$fromKey:Ljava/lang/String;

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

    .line 445
    const-string v0, "pen_air_view"

    iget-object v1, p0, Lcom/android/settings/SPenSettingsMenu$3;->val$fromKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu$3;->this$0:Lcom/android/settings/SPenSettingsMenu;

    #getter for: Lcom/android/settings/SPenSettingsMenu;->mPenAirViewSwitchPref:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/SPenSettingsMenu;->access$100(Lcom/android/settings/SPenSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    const-string v0, "key_air_button"

    iget-object v1, p0, Lcom/android/settings/SPenSettingsMenu$3;->val$fromKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 448
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu$3;->this$0:Lcom/android/settings/SPenSettingsMenu;

    #getter for: Lcom/android/settings/SPenSettingsMenu;->mAirCommandSwitchPref:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/SPenSettingsMenu;->access$200(Lcom/android/settings/SPenSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0

    .line 449
    :cond_2
    const-string v0, "key_writing_buddy"

    iget-object v1, p0, Lcom/android/settings/SPenSettingsMenu$3;->val$fromKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu$3;->this$0:Lcom/android/settings/SPenSettingsMenu;

    #getter for: Lcom/android/settings/SPenSettingsMenu;->mDirectPenInputSwitchPref:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings/SPenSettingsMenu;->access$300(Lcom/android/settings/SPenSettingsMenu;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0
.end method
