.class Lcom/android/settings/SPenSettingsMenu$11;
.super Ljava/lang/Object;
.source "SPenSettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SPenSettingsMenu;->showAirViewDisableDialog()V
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
    .line 662
    iput-object p1, p0, Lcom/android/settings/SPenSettingsMenu$11;->this$0:Lcom/android/settings/SPenSettingsMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/android/settings/SPenSettingsMenu$11;->this$0:Lcom/android/settings/SPenSettingsMenu;

    #calls: Lcom/android/settings/SPenSettingsMenu;->updateState()V
    invoke-static {v0}, Lcom/android/settings/SPenSettingsMenu;->access$000(Lcom/android/settings/SPenSettingsMenu;)V

    .line 667
    return-void
.end method
