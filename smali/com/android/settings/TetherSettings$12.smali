.class Lcom/android/settings/TetherSettings$12;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 655
    iput-object p1, p0, Lcom/android/settings/TetherSettings$12;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/settings/TetherSettings$12;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mTxPowerModeList:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$1000(Lcom/android/settings/TetherSettings;)Landroid/preference/ListPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings$12;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mPrevTxPowerMode:I
    invoke-static {v1}, Lcom/android/settings/TetherSettings;->access$900(Lcom/android/settings/TetherSettings;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 658
    return-void
.end method
